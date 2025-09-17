Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8E333A8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758113994; cv=none; b=LeouLUAjgB29lzsVBBJikTjTkCqT9Q6NniUlSZKagSOGmRXQTh4VNZTPM1gWq9zlaJBPW10OAlkQvrEvajpVeXc6zV2sAAqtK0IzqjkXAu37ylL/Ce8RDpV03U/OPnoo6e6WAul5NFmb/HBXiCnl0mn5xFvMMTw6ohMgtX2fnYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758113994; c=relaxed/simple;
	bh=NEnP3F3uTA1ibH12z71EO6uZuXjx78taCGvhkGbPX/8=;
	h=To:Subject:From:Message-Id:Date; b=QSxxKE9PCqGgXjNF3GmDjC94aaE42szcGKCvtLidFOJ6hiH93zseR4ttxPA0i5Az1VtIGIJKMnU6lBTqM8UjgrGn6k8TZjts37qATFZhW6jIRT7PC6HY8VrebgjUl86mNRo/QxEze28HiGmxae+kaclmsaH7El4Lu6bM5LafvQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDGC3RzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDGC3RzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758113993;
	bh=NEnP3F3uTA1ibH12z71EO6uZuXjx78taCGvhkGbPX/8=;
	h=To:Subject:From:Date:From;
	b=pDGC3RzZpk9U1S7tBBRhE3HwMoK2youS0XBeoUfxAIN0qPdKfM0dP91sUz82Kpr6y
	 Q+5OQSF96S/Tj55g/Tcjc/pciQhevYvn2zPZULd1cmDkvgeIxe77QuVL6yxfGsRuFK
	 I5bUxb0KXc2oRfMDMFBGZFXl3dWhdXzUOSOlBMbpVQyrVbERn17I2yncKjV2X/qOL0
	 V3dphP6votNH/XP2bWiRKrzhx/DPiJP7Yzwh35wJAnUIaNn0nBn4ViLfYkFLKIAgnT
	 FFPwCsmqLHlrWlecb5zxti5+iyoludnD0CKDh1Wa+y2GY5/r+LBrVNOtNciCG16Jek
	 7Dj4HxCPL0iGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A6CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811399357.4620.7032035106583002589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc876f5beb80b062cd7faffef85dbc4009708b46950730a3dae3c0aae4526da
Date: Wed, 17 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758113993
