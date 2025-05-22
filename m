Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F9813D8B2
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747943994; cv=none; b=SNqNlfWNYDN8I4W3GNqtjWPEtYG1KEWBWvNwF9HYwEyXCoLdsyT2ntF+zgo+Di2xQra7Al1lAGULlC7sRrWnW3OqEVB+73Xg9o/51i+zSCQCUUDoxcYvl/jIJ9tAPqwc7ySFHmcEz/ifydgmOKQ5ci0AGc16K+ioW/7R02aJlEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747943994; c=relaxed/simple;
	bh=8JZUdxoUvD1eKDfWsoeP4JxA9IUafd02jQKbUxrIavQ=;
	h=To:Subject:From:Message-Id:Date; b=TndZtHkwdNnCmgaaEklefBnIUNaL39R32VJhP+YXyIFSSh6A8UHYDfq/IjbKdhXiOgkZkx3yaUMCPM/+cMM+YTaOS+i1+OPGlZPo0Rjs0ejxNW74vfnjDSoGykHuKEU6enbkJNkfgU9k0Zln/0O1QV34qUn2cVoNveMFcQXKx4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPfor0UU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPfor0UU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649BC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747943993;
	bh=8JZUdxoUvD1eKDfWsoeP4JxA9IUafd02jQKbUxrIavQ=;
	h=To:Subject:From:Date:From;
	b=gPfor0UUFXGFbCYBpH3fCE6SU+BF1hkproKSxNugWYyBtIb2sjaF/fMyFhgJzWu5J
	 yoLDEno6fGva4wzG7S89pXi6iUsTwVhLTI3er5vfk0rqUQVmObFXX2d7KEKbligb8Z
	 D7C5Rup1ak4QuK252VWtZTJPLKgHxX850WvUXrVcJsJ3iWokDvqT4/4G5IwCLG8f+T
	 4fqILruegt8lwznGA0X6HBNgmXJVIFfvOQqWOAZLpJl145W2CuRB2HM6LvBH+uJCTD
	 mkCASsLpjZS7yvjQQ94WoZ1FGrPzBqnmYrHjsnuLoZf/aWHrw8FSnIQNmLV200j6Zu
	 g+AZIMO4ms0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9445CC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794399357.3888.1139480642973510299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2ed059016982cdb3ff554b2400955ef8b9805d7ca5d4fd0aaebd43065d67c8
Date: Thu, 22 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747943993
