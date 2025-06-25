Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085FB149C7B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750814994; cv=none; b=hSsIZr01QcO3CxOzvb5QKv+Hd4aYalK7L+LMmRD/dqgWV5JKrz2RaTaEekPYVasbxX1D5wczlSIbDyVHrPIhKjHgbEEOpD3gvqaoTGv8WN8cb4W3Gyin1f3P6vcxDFDmAp61psl1QVvEurULhH6OPBltMx4Q7QcWtAP/wqMHnJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750814994; c=relaxed/simple;
	bh=8dAHPkPQ5Q8PeTsCf0nSBPjDsOzAIrvGfCWwOTEJKkQ=;
	h=To:Subject:From:Message-Id:Date; b=JWx1NE5qTR51WhUp78VsNxUXaFhH1hFgXihVr/N0pq6vLwj9566DQXgpaGRSKu+9GZySVVs9WU7deQ7qNJr4mNMaDYLkR+cTdFCcPsx61lLRliKmww2ZMsVO0CYd7CEzy4Ttr/AfMaDu+tww8nThdUDDWdBkLN9tLgNjmUHG0zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCFPLOvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCFPLOvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D8CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750814993;
	bh=8dAHPkPQ5Q8PeTsCf0nSBPjDsOzAIrvGfCWwOTEJKkQ=;
	h=To:Subject:From:Date:From;
	b=pCFPLOvg6pqyPCxSE4PZbjx0bwzDpY7i6M04AYxOE721RH+GAI9VCUVsydo4kE7ul
	 rksEKNoNrA/iJP6yqT4UVpZSJVNrhlFKx4iMO7NfkCwrzcKb8UC958hkrl15Aq4to8
	 wljeEjkAozl1Abz9a/md9CsVTkQQH0GullzGU40+0lHJuYn/EzwCVo8inZ8XIRbGp+
	 72Tc7fSWRoVKoU0KtJRcKPeg23B8jxq7EBCdaQXHqZTTxY3YNk/ChPXGcfPvhH61R1
	 Fy6l1GnkDMDDxobXV+qsNRHbVDx5kyWzHWxGoiDwSyH7Z4WXsgrl9eScqm8btPnA3j
	 HmHTWQef2YV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F347C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081499357.10111.7347468016647428763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b05ff9b626b6c3521c9207a3104aaae85b77cd73330cc017a710ef5bcdd882
Date: Wed, 25 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750814993
