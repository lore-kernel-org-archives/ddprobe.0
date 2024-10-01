Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4824F1D26F9
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727825754; cv=none; b=T59kn1gpIlI7hqcN62w4ecABJJ4hnPv7m6sHzbdJmTE70hbDYcMi85tnn0qITmJWDC8N7rrg9fy62VM5Gx6b0PasubPSLWgUrfmgxLZK76TCAmwbjd0P1FVpA5DSWXMpGpb8BSkVyn6ChKRRlPzRAoQGexWP2CCU3mEzmD68zOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727825754; c=relaxed/simple;
	bh=GxD/IDFw6Qr0uGEQ3YH2ow/f05MwSxk1iaoerBsTYlg=;
	h=To:Subject:From:Message-Id:Date; b=Vdr2lciIxP6ILgaEn1dBcBSqkorBH5bYEZa3uz7fF0O76vp6I4IeHkWkJcDIOSFqxUuBfKpgFOOoGt4sUrt+7i/pLVdTPg6loJOLotdWI9UhilFGxF3qFg9C3QmUu0gF6HV7mAiOGSQRzGR6Y5VqM9U4wAleh7QhtpYmaKtg+HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUZn+VjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUZn+VjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F24C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727825753;
	bh=GxD/IDFw6Qr0uGEQ3YH2ow/f05MwSxk1iaoerBsTYlg=;
	h=To:Subject:From:Date:From;
	b=uUZn+VjNrpcdDe2gU75BRvh026CWaQ/HgjjrZyVGKbvbaZ9Z8HKgi8juxPPnd/YlT
	 QaLsK2ldGt9WTdvCDHuWGCDXt4EWCZXnvXYQFiMJUPLA1u8S8+fU+zghS82O301PtH
	 chx5vHiAj+DNbe0HQs7cgFBpjJ9g0GxkbfQLCVbEIwvYvm24j+S33WySSYsbB1fRnY
	 0V2eiHcz9TRCbU6QMy3ihDVh6Ua0eUbxUnSVuouGnid71RsfjaE5Z7FcJ0NNoiyIEk
	 X6Uf2VHamDbUrrrM4V00zBzHbrn+kudzw1mLILlnyOoXKK2tGjC/UwJu9fMmfVqOG9
	 ZltAjP6Hc8oCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A402DCF3189
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782575363.8700.8134474950567802979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cac107b0eec4065d8154bbf2915600e91a8d929489bf3a9541f4fb5472e50f4
Date: Tue, 01 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727825753
