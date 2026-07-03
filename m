Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C825321420
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783109914; cv=none; b=WXJYbTQw9IIetRMeFfKUmPa3u8U7t7KJyoYDiIdJJbCcl+h+px+i0yb9oYtfNek02Qnd0r2+VHDXOqtTMerNMCIwyliSOK5UZS5aQCWyE1DPoYSsDsWLEHSiuUPeRjmgZdjQjU0p23X0+zSD/J2UT761RScuhGUZzM+ALjm+85A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783109914; c=relaxed/simple;
	bh=FG3YlSF/64y0l6UmIUnIUThuPCFESKhVO+sCm3AA32Q=;
	h=To:Subject:From:Message-Id:Date; b=c2GAUnlbrbEC+osFBKoJsP2FK/hrsw5YD2pCmeZy4zRYtDHbcV98/MGxy8vz4fh6zUMdsQS1SuUysVN1wZbROiZwbkmd2HjNHoxhJ7s3s7Yn9OY5334qVitskl1viJ2AX7jsnEWKTsr3e0+oBuT3p5thXeuWo08zI5AU9tdF3gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsHCGFlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsHCGFlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28E0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783109913;
	bh=FG3YlSF/64y0l6UmIUnIUThuPCFESKhVO+sCm3AA32Q=;
	h=To:Subject:From:Date:From;
	b=FsHCGFlXYy2daT/UPEfQOd4WlL+DVryB8zVq/prOJhd6d8L7EUJG30JPx/LJuna+5
	 qJv1QsBgnb3IAzb2xvhE3Z8r28+p8gaI3w/VDts3K08KRXsX6ipQk7niNRoYe5yDVJ
	 59P8staL54/4PsjZexnh/qtmILt6JfpZpJtzDzuB1CGFunVOhwLn2o/yAzqmvw06bd
	 hYNSwlWx2Ie0bb9eCh8wnAB0rVvp2Gu3QHmF7zPiQZjWgRPjAMBSKVV64nvELjjwwf
	 afEH3EmzENpmJICQbwD4+x+jicPmEIkulBLL4wBbccaHjtFePESpcjFlu1laPP4X8P
	 7jfCPN1XM5PEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB65C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310991368.17294.2805471693380261024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8080075f0f7b6ed48cf1dff53547f51f0ea375fdd1986b6234cecccb8e8cbad0
Date: Fri, 03 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783109913
