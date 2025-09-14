Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0742745C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757833194; cv=none; b=uhlK+7TRhsjYZHuy5yF5r+8jBjCrRZrhRiGQKYCaX0cHfr7XU1zf/drDOwV47pGsTmU2kVMNAxGNPzkttDI+Qd6cEGAGXFgMBOg+hnCbJftM6v8TEnVbmSG4onElFU/13X689HyGCcSDPJahgm3HtiwKHkxb3mIh127Y7yHWnzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757833194; c=relaxed/simple;
	bh=S17xvl7CYmWbAca2ZA+73+Djhx32+W/2utW8KlBkIsg=;
	h=To:Subject:From:Message-Id:Date; b=YTi1BEu8osDZ2WOwAD5UFvnJlsNjHP8AFO61KOEVwgbH/bIRB6euySIh3UYfL+Crn++MtqK0lsUDFsmnyEu2FU3Lr8mlqpdATKkDfmYUs8fpWUQflGQnsOG11SKCV/ek488zOCNaEo+9JkO9eL0tVjHoGlHrwEXcsfZnMJeZppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itkyyrcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itkyyrcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A55C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757833193;
	bh=S17xvl7CYmWbAca2ZA+73+Djhx32+W/2utW8KlBkIsg=;
	h=To:Subject:From:Date:From;
	b=itkyyrcfupuu22f2SJc34gkySa6DeLm4ipkivHrVYdjsCPGfanf/XcT8teadc5gj4
	 nxLLAtihzbshc6pz+x3yQis3ku7kynzyKu/0juu3mhiCb/iuCmtoCzW8AipUxy0fKF
	 XiPQhGETnYzXa/z7oelBwxrmgyYrexIpT2WtIiyrK3VlcivEU4lwiXWrB3B9VbgOq2
	 oU4tec5Ij82ln8FlDmTTzJRJlBYCHtolIBXo8EFkqWMwjnL7Dq16yCLsEe3+CPRtlT
	 98IpxHjLbXeCDgistZrVpz/tknYzUyHj8oR2LwMOXwDR3MTS6o/4Mw+1bHYj0E2Xds
	 ZNuRaqncwqIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F07CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783319357.25989.17018776289527798759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73471daeec7e3e5144d09b7aa49381d42b016cc7c0089edb8c95f7353d374fc7
Date: Sun, 14 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757833193
