Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DE73451DC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602994; cv=none; b=YERKxttnVY12bYtbB74W0KaxUgLvEsyVK4DLnGpih5726ptvkua4cPF57UxWRgZNLWmhbl9flEqjnK6A9BiWBXMZT3yHeaEi8FZHS5CN7DYnnPHQ+A+LL9VKi9Y3icueQ0jVnCYui6cina+8OYSWHETP0KiBE/vQuEODBKRvsf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602994; c=relaxed/simple;
	bh=Rse0x0PMHJHeCPv7ZWqCumluXYAGuwqVJEKxI23CDPE=;
	h=To:Subject:From:Message-Id:Date; b=EKG+7Rbd6xeR/zLjYah8NYsw5q/N47TbpuB4K5PlOm5Htt1yXu7+Q17pvfV7JJUSabnO8iuv41bCI0ZBj6ms8ee1EaljlkSn6eVt3eTY7uerey6T9AKYbYEpZX/iSvJfUels13TygWTxFskYWP5iFceKmuhvpM4oJYM5JnJmP20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJawLelG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJawLelG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6FAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755602993;
	bh=Rse0x0PMHJHeCPv7ZWqCumluXYAGuwqVJEKxI23CDPE=;
	h=To:Subject:From:Date:From;
	b=iJawLelGQ1Gas5HwFfmLy02KhrFwpnKtoxYpyKhXDbTo52rixtJHICTT2tfaThPVJ
	 R4j8xNwIPj0z2Mqk/eceMFad1XxZgNo146fS/CYNg3s8fbRdvff5CIgP1FPQuZt6zC
	 XRWm0DLJ7+UHlIiD5PWCsBtOWoCwMOQFoQahuPvllqZzRkP5FtKc4ponS+5gMCflJ0
	 O513nnbbR1sm2zb9tuapVnzqO4u9K8T7JcpHFtyN4LFxrYqI88Z43Ptoa1I2TZC0NW
	 E0PUtMPtTTKcW/FoUblpgxoh5vgZwpMaU03YTjDkNF4DiJddyUDyZ8XnJV+5pRjnob
	 sgs85+Kb00ArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F106CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560299357.22277.10179924875022395046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54dd233153e2195e55cd486694695ec20aba87ca80a94109988d1cc409d31895
Date: Tue, 19 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755602993
