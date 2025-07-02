Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457EC1E5B6D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751444394; cv=none; b=fVc6z9aTTTj7/eaPlaAxmLgQUdozJ3thHiCzvBA/VXvqAZ5IhYx7rsKo7ryter5PS7fdjw8Ru7a+s3WU2phqe/0UB4uTKCQC6nEk9pMQYEaE/PHWBgIrio5k+DlhhkpGVGo/08HJJdd8WOv84AetqxVx9n0Rk+Toqd7bbKDkFV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751444394; c=relaxed/simple;
	bh=alSrVId1YUi0lPaHPS851XDJuQ3CBryT2wXkOrpyEL8=;
	h=To:Subject:From:Message-Id:Date; b=JR49rfhz1Gwuanj57vp+jAmVAk5CUh0ynA29/FdOy7VtaOcaNo677HMylyp9sBlAaK1gCjOWGG/uNWtpwO3ttIHmtM50PTL0EiMkjtzSR4KSw435phvRjgasr4SLQ8JHy688r7CbeQn8E94A2Rq71Yu5JyJPBK83TECyDz/PRcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBJnmdGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBJnmdGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE3C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751444393;
	bh=alSrVId1YUi0lPaHPS851XDJuQ3CBryT2wXkOrpyEL8=;
	h=To:Subject:From:Date:From;
	b=IBJnmdGos0e/GHvyglxtQ+60h70jx8p9Lh0QkknCHPv/D7rRU6M6Obw1GHn9j83yH
	 NreRf2ymQRPyIN4oL7pAE45HB5DpRJC4uhNv/4sK7fmLnopfzDD8xo19FfDJFAZ8e1
	 eX0FUNCTFPbdfRxPCAQX+WvMBCOOsDTAbFacTbT+5a5IFlnncctAJlxrxX/cshecf8
	 QJ/gCJ8afc/yTu+XSR6xf+VSm+FgP4dg8pHG0cwhozlWOTVoYQ7bW4s1bsyFlKEseq
	 I04PEGdoP+BJVx0i5tFS5yhBlhx1uF+G3GKfrSoEpluVNrLXjKgmrJZp3CHYkP1Jig
	 UtwJNLjcW62gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F94C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144439357.6372.14291847085409676813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f546cd3580458ddb74ec2cc80bc24857709ad358082a23993a9069e592aa1a58
Date: Wed, 02 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751444393
