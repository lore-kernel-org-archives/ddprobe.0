Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301BF4086A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742954394; cv=none; b=PfmF3CMkvKwX7bDc0GGs1aKOA8QhUyqNm1rwuUHuGeYvtp3rgcNqDTn/d9gfm0OGcCqQylndpJoxp4E33HN2Zf8OGapr/Cjyjs242TmqJark8bl727RwuYeesCzkL4qZPSIfc1gOF325ccKDygENU/afEqBo41sZ+fACwH/T89o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742954394; c=relaxed/simple;
	bh=pstGYqcIxlLaDdB6PL3aTzKOJcEm0yRRbjt0NiUFIeE=;
	h=To:Subject:From:Message-Id:Date; b=T9USLYE+NN4HQHs+OH9SS3V/P2K8DjfodG2oEsdiE7+rH+7/KRaG35axJsAbTvJqNwpnkLxSwSDPUykutGy9oU6IJKeSt8u4Y+PVLZgRxVHqebnKYg39xv2sgq14GdGEBT+L/1DBOxsN0rNt7TLnYntfvwPu1Rh7tSfmmjeWbBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEY0EEg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEY0EEg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9ECC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742954393;
	bh=pstGYqcIxlLaDdB6PL3aTzKOJcEm0yRRbjt0NiUFIeE=;
	h=To:Subject:From:Date:From;
	b=uEY0EEg8FCBjcY490uYIWDrPh538d8sC731WIeUAPTlFtxcWjORLx87XZXlHSgnGc
	 aX2Ns4nTMJE8t5QVneTuaX3+4FqKZfLBRK/SdxsBUY4ekN95BlY2IZFjraBjmHQDMo
	 v4fWg5C/i0I1eMwFNk4uFOWo/TAL4bc8/1Zz6q9vf6gpK8M6z6ott8dJ/v88s/A5Z2
	 n5qcO1gvAJn/WL5xOzbfw4uDwrLsNJelW/dMUODm85xs4cM9Ep96ztSEtesCxGHaUl
	 drgNRHheoFiTu0OrJwltoTp8gKHdToxG2HjPdjs4zAfpeBC4hXc9NZPNrTaZwna/DR
	 pph9cKs8Vs4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940EAC3600C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295439359.31259.10698435110332156073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8f67e6466bf100681223c22ccc7aee617fe6bc05180cfc6bbee0f586f6a165
Date: Wed, 26 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742954393
