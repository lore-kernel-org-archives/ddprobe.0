Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2260A14375D
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726556754; cv=none; b=LDTeZuyfSjgkeVSDwHcRLlw5evpowYZlDcBUMOZLIMkFiwFZ4tn/er0cf4YNInUrUrLBFA1N1KkhZFrC1NqEOlHcBB44DSfXZToDGeRFDhfbWAbET8UwqpBUUnJYzneXR+dmC9JLMUMlpqcGAnYHJRbsLzn6ybjadUXoMNrPAUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726556754; c=relaxed/simple;
	bh=Vc57PnLbQZYNG0vTkMoTzU6N2Ok7BGzobByCWaPPFB4=;
	h=To:Subject:From:Message-Id:Date; b=ZR/7XNLFxMvsS2dcaxQZH/R1Ca11JTlP0yoXZ1XzlQO3As7+A72n4SOHpqdf6Xft4l1mBXY+Hfa1Z9lNmce0vbjqCqs8t0eodEiq1SC/Y6NxMYfNIvI9anfPOdxDA9EAJdWucg3cCeCR10hfjTzHhl137gt9AIFdL9YELeh9x44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnuG2K8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnuG2K8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA7BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726556753;
	bh=Vc57PnLbQZYNG0vTkMoTzU6N2Ok7BGzobByCWaPPFB4=;
	h=To:Subject:From:Date:From;
	b=dnuG2K8Z0Fr3f1haE7Ou/jGA/jzIISanOur6pDrISfYRn/XPuvEnPEQvIb8TXPDH4
	 dHxn0Q6HaTAB2esQZ+ER31xwkW8/ywQy+24LKYq1JIs/IyWn8XQeV2PXimGRanhxZG
	 K2IUshfoaIBqdErHhh2hzSGOEoIEJfI6JDHH9+O3D0UK/YfUHH2AUy/Bx4dpOuPy1c
	 3pyHo7exbLYBZKGX+wiBc6oHS0KURHQUa9o69vc+neK49jtGd2meJeCtqqo8201dCW
	 S2dacyOLM8wpJ+4QE9NtXazhGbz8iPtcaFNSvX0Cy37evnRLok8eTMyfVM6YVC8BQr
	 lenefqt9NEMYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968D7C35FEB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655675360.31022.15918304052056785925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c41766543c0d945eff23a6e26911c8634645d12842d3b277901efba13a8bb5e
Date: Tue, 17 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726556753
