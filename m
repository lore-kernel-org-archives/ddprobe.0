Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2571D2F2F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724477754; cv=none; b=Kn2JTOA9cCfoLQeBX5TDRVu3MrVsWM/id0DoxrSvw2FdtFL5PywJEAhfxgbIBf4gJUOs2ykH6fRtAS2HP3bCQQFnucf5Un+NBZA6pnKzQ21GxGl9jQBEtt0D0HxtzL+VpiVvgPC2/ASi4854VPgbkU/DOCpfiw4dhuIDn3tvlDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724477754; c=relaxed/simple;
	bh=GKtunYwgldTluWESOH+OzDAvctjVlAIQpon4E2AViPE=;
	h=To:Subject:From:Message-Id:Date; b=rnO1g2hrRW0GgEJIzr/IZoKccgNLmMgXn5yuufAVpuKnaEHfR5PeHfcrKDc6JbiRMVrJh1i+hzNYktsX7JiWUyXo5y2bWwhQEq7vnqvIFBuUn65FpBKT3ewyBE2UU9SKsHhYR0zkrI/8mlkN/c6SpYVmEV+Ti+XEdAg1NfXE434=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qojrToVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qojrToVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B09C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724477753;
	bh=GKtunYwgldTluWESOH+OzDAvctjVlAIQpon4E2AViPE=;
	h=To:Subject:From:Date:From;
	b=qojrToVb7VwLkQSxL2RM0MErcpSBm6Qik9mNQHW5bqeWGKe1yx8hk8JaSXWKMfBrm
	 tX5Lx78mWHGw87GYUhRaEMTVcqMkFqurDQS0bQyuahSNV0qU5uJSMp/XCnc+owDolM
	 Nm7iVzpf7Pf7o26CBP9HoSRnqVCda3z5AJix34pcXZse8PzT90VKEoHbXCIqvrxQrn
	 sOhsJJYOiE8X1X0saXDXBPbOSHMiADtpmhz7K/ws2SxYS6e9YkNy/2A3ULwWqASPD0
	 /upFTgcs5mQVa88cUGuQ56CJfJpJUXtFFHzkvW8L5DqGKPPVBQhcoXXJ6Si0hWx8XB
	 KMkDotpc24k5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2EC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447775358.7210.544645001546490809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e435308daf94617117c764fadf7c674817a439d0b17a75af1c5a2da3a42b13
Date: Sat, 24 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724477753
