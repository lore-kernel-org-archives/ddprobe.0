Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FADB13B58A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782087394; cv=none; b=SG24P1OsUV95+wVvGUyptcpFaA6n74LA8+QLK1JmKZR/5T+JsL3SlX8YoB8uelB7kAzBF2cgGsfCtKjXzlUDP9WQs2VZNf0ZigDZDV99svw1bcLsBm81BowiPacrcWE0J7vk2mWbHfmlR52EsaR/MmiZQg9YERunO2HXtEoaLek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782087394; c=relaxed/simple;
	bh=VnSr3AOyNzvF308jaynCbjRMhDx4/Afq4NFzYwImOYc=;
	h=To:Subject:From:Message-Id:Date; b=HiUq1PJiq3b8lQ2FPu4rrOwGxaNrbrh/iJ36oYkuBmVR+x4fKCZb3+emddU58T2Vn+AvRbheoM5rENK5k8i5YCT4tEmzl4UxT6uD7FlXDxvU/AYGzVxZGGPIYeE0ehllOjAmvHzuqCRBzeSYoZof0iudPOmyBLisp6tKuzbEz6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5Kc1FiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5Kc1FiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79CDC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782087393;
	bh=VnSr3AOyNzvF308jaynCbjRMhDx4/Afq4NFzYwImOYc=;
	h=To:Subject:From:Date:From;
	b=V5Kc1FiELCDZz84oV+opyc5DOgvujEn5OrflFRDBYAwAM3yJz0YGA+CxvIdogmLeB
	 XdB+0vAxnx66shjReLn6/I5EKNlNMyI7c4WjggZv/gdwFIBGJOza+/9qRtA4GH7Jxu
	 Z8AePZ1LxktBImgNlZuth9tjy36Olcu7YAiNNYq984juwYKeVsEU2k/RnZYrfR3Boq
	 WHNs81ZGi8ZIUcxbgkmzHE11FeAaUhAagOifW3/G6MGCbdcdMzRKhzTV6rp0350OWW
	 1dfxHv72pxZZMdIR3M1/dY4CYK7RiBPNdkNrFMC0beL1nGfR9kOYZoOffFI4Y5hwBs
	 PwW3C5/pGCu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD2CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208739369.7793.14474770835146792696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811b783afb20dbc3c784b443ceef7998c0a7d85bc9b9804252ce9f6280978db8
Date: Mon, 22 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782087393
