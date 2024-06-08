Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67879219F6
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717883843; cv=none; b=HbjEV8r8001cKIrwNrDASTGtv4Om8N64ICHx8f9qqFk9YNJqW1C+8JheL/7xitDQzXdVwZb0lRIe0vvUzm6iCd1Pa2hD6RrABxa99wHRd1bsBMQLB7DLV2H4HZQELnW/M0frorvW58BOcKlsmet3m8yqGhTS/TawlrM1O63Sgr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717883843; c=relaxed/simple;
	bh=NR6iO5IC2VACoPXXfUniMUhdbqqbrc3lRiazULiIkTg=;
	h=To:Subject:From:Message-Id:Date; b=CnJFxPcJqZheMP5iPki47y4bsts0DkzekbIh/z47tqNNMBUcz2Tk85Bu4BRx+L7SWoD/mkLProsqNJWgo86yN09kx3vs84K8L9AaD8JH+7mHStLAFrMIrOVPxmmcIPHn+Aca5eSpNrv5zuR6tWOsxzTP4PZsxued/Nt9BL/Ic6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXEk7Rkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXEk7Rkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5ADCC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717883842;
	bh=NR6iO5IC2VACoPXXfUniMUhdbqqbrc3lRiazULiIkTg=;
	h=To:Subject:From:Date:From;
	b=YXEk7RkzA2r8Oy11lFEkAM4pqUaf3/JhX5Zv56b4l4YZ/r/BBjnKcn/nllP0NecbZ
	 PRGdeHuQaFmLaxFd3vIWcB3kC/0QbsvQ9Scxu9WKl5Bhhd5Xx+jJhGx5b9oRAxlLKZ
	 OrNkPBqLGPXKzq1c0w7bznLzXEGEnNtEbvhBaL8lU7I0LP0U/zzqdezgAK+lKxKGCI
	 NsLihae/h6GTq9XApvA29RJtuwyOrsKnQdeKlxVYpKA7Nu+cpsSd2aS7vtEwUrVESC
	 Hwk8uVWpC9oIWdIJOuxChEgL8Q3git5DgFn1WBci/+TLh7eZg/VwOUbUuZIQLyo6Qt
	 pHvLvNEOtoBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE004C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788384282.23611.3454560022810090175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed82e7ce1f0a9783b0b47b5fd596c9b5194741c3039a8948e9147d5f99dd2e6
Date: Sat, 08 Jun 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717883842
