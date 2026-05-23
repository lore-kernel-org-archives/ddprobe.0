Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AD41E7660
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779507754; cv=none; b=c03sobpeMUjBnqU2Kbfji52gW9mfxQnSOFVtAW749IsPVWadNJC2MlkyARBIzn+72YMfNnHHqY0V2qwMW8Lvg5zZFIKw0BsoHFmNYTmSVLYJVvm46xVJkFdXB5ZrqnYKo+pMJOIWKkv43CVTTDyBg5MflLov3kS6FZEN90xH7Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779507754; c=relaxed/simple;
	bh=Sjh1HqwrseSIkGAKxRBlUm0+i1Ch3V11RA3UKBUKA3M=;
	h=To:Subject:From:Message-Id:Date; b=sUqGUaAY274m5543hD45G/H1jh+9vL++geKcFBlx5rUpfZWktSOG9NGXEILb//lyl4KzAUNOy7E/af64fVg5tZegFPbbxlP290cdD0kME0L/465RBetHCGxTkv99gG6N44NthQh+U2y82qUb2c8dCDBz2lbo59pxGUATOSLEmeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQ7GFp5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQ7GFp5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE8CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779507753;
	bh=Sjh1HqwrseSIkGAKxRBlUm0+i1Ch3V11RA3UKBUKA3M=;
	h=To:Subject:From:Date:From;
	b=UQ7GFp5tDXovZqjNQzGmaHsIBwS6GWEmTEycaDeVgsyZ21iJ2/kMdx1UEkB/9Dtpa
	 EqtftWNGp0m/Z/knUz/nHBnsmYLoyQHviGStZ5O0/MSF4jIR+K66TxIMIERzke/H0R
	 a9R47akG8yUBPcuYZEI9YEF2B3X97KSx9w6gP/bj/u20xg2Zv8jiLJTCw3fAK6MhS/
	 zlpDa1YJnnOIugVoQRIhpcYEDUO8DuCyewwtyx9/Fui+dcYVxPJslMNnmyobBdg5vw
	 NNWPJIhJYXXxqOZtSG6GbTsIvr54VqxodlvfzQ4KsMEaM7xg0uzTx4xDQaprSNKFAi
	 /iPQAPkTGYOlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27C2CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950775370.29241.2012680088680502020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26da6e293e71fdfebbb132a96cf5e6c00400716aacf848339509043ee1143a19
Date: Sat, 23 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779507753
