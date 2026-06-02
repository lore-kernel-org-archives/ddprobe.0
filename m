Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0532D23A6
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780371274; cv=none; b=RYr3JE1wg/18TFa1R4xAJ1ubVSF6sjb1r++8LWuDLqwnvot3uExRc3esf0GylLb8HvJzuKnP/FXQiWlbjy+c/tRScFwD/II/shvXfUvAhPLBHkmAEeSWo6mgM3D2AoR66i/+kj8tboGq91f9WAAJBq293NKc9m28XUE4wCNnduU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780371274; c=relaxed/simple;
	bh=fgRZg23KUj3Mz2kzQNjTn6smRHFM900YXnkBzxUWpEc=;
	h=To:Subject:From:Message-Id:Date; b=iCdvFyq7Nok1Fp05vBym6SOwtTAbkxnOOpYR/X40G5Ay4ZiGap+p4lzNaMQdt1uviE5X6t4pIP9qvANdDgtuPBQ+HAlN+OPPM0neaa1I5LS2xk2cxV5Hfky+vtdcCm/Tqi5kXHx+oVe1/jM+hK3lcpXv17O/p7MljLLyx3yWeDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCpXE5MI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCpXE5MI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F0EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780371273;
	bh=fgRZg23KUj3Mz2kzQNjTn6smRHFM900YXnkBzxUWpEc=;
	h=To:Subject:From:Date:From;
	b=UCpXE5MI05IEQubdnuf33MwDeMeFEJMmVBuPOXjNMQrs0EznEoNjfUlaFHYTdywHS
	 HNdjElysCzwVNAazjok/grCLJ9Cj1EXoBfJWKx8RjK3VbaTuw4cD21ASglc0NODk/P
	 yHgmbgCnLk4kamIaeeBzDbq5futrLnKr435I6cj4npt7zzxVDYvVRqJMPAgKoX9Iyf
	 2vAwNztig0b51NZShU15C3e0ozCrgKJLZoJug8+t+CxTyA39dDD9yDk5pI6/eOpW4K
	 EUmneeTL7sjy1Y+WDTLWexi+vnl1jSfvI+7w++SsFCmQ443nPNTFOU5CR48x0Mcdsr
	 sGsFCnCldSekA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA91C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037127369.9552.9641367450021651157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c2de639a18255e62b0419c9be062b77c8b2b5bf9c5c3b25253506f221447b8
Date: Tue, 02 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780371273
