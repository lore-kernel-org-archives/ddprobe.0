Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1382E350D7F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771778694; cv=none; b=b/NMLnGfh8WwHPspo3m/u8r9wKtmKsDnFj9dG550nzEoqpRKo+Uw4YsLo2O8LHqmmtHP3o41FWStUu363DtswxBeQHCE5Uge4iPRPq5AYfFWMpo5KTaDQmetKjzqFuit1RScUyS1eflxbcCBEvCfb4NQLIoFjRulc9rO3eeq7VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771778694; c=relaxed/simple;
	bh=0hOJVYwMNpdA2A/tvBSUKW2bbL+bykT36DDOkgfybiw=;
	h=To:Subject:From:Message-Id:Date; b=sryIrFs/OEePXLN9fuIfwilxEUHfigBpMYc3T7yMinjvYpkcDAE48b+mIFTV33Snag8YIuTeUgar5A/R44ahYob4VKC7uhptNAhLSJLUi0xap+F9C7a3QhDV0M1Mn05+0exf3qAlYxHQzvPZFIWDs/a5/lyrmQDvZN6nv/RSp1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQhVLvIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQhVLvIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B78C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771778693;
	bh=0hOJVYwMNpdA2A/tvBSUKW2bbL+bykT36DDOkgfybiw=;
	h=To:Subject:From:Date:From;
	b=oQhVLvIsPOOUe4EbjV6oZ+SlS40q62HmU7DGPgOFvYNhU9RJP9OPd9lYlzVcAAFdR
	 6I39L9Ly2i+TxMvmGBZGVbRVpATS8BJ/KHKrwGvKP7YA4VdInxhcBK0xY07kUIp84o
	 Ek434gYcVF5TXEllFG/oLNVjQRgCba9mYG1z72x63QLMuRFegeZzqhcWFn+WRp0EFM
	 E7HO5rbitdNNoeuRVO6ONswV+nu1XckiX2EsRyyCc20mxbZsbzmxcCH2BeOrpGRrg9
	 TE9/IcMUpKt2SGyHl7P4Sv/c64m8AQaD1D9fUCZFRxtHXNq28B5VLpNzs8tpe+wV+P
	 i2jAjS0V1GAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97027C636A1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177869358.7096.7794049720590253394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21954ab91489b209579feabcdeec947e690b405bb38ecfab41558e33e9b5c412
Date: Sun, 22 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771778693
