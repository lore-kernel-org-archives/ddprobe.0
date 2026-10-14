Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5CD399CF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791961834; cv=none; b=DfEtYXl+/qbHR+4p7IJvGvKneguDXCJzv6ruZvLDbp3zkGJGARdt5pC/z/uyO51T4HA/Qk1uYJmLbDZfKzblFNyUFpdbAEmrRxpELDhMfz8g7c4NKBJpPwxSNZcnsPEEqGqogoDXgpkU+YoSS3f/QNjX91hCCz2e8vHc/n/dgP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791961834; c=relaxed/simple;
	bh=McINBMvaNdt+y6nypMcZz7lm1XmqLGrtF3zvpIKU+no=;
	h=To:Subject:From:Message-Id:Date; b=PaWjxlh2jh0tLF5maMbl7UB/TA7cg3/vdeeyLyHbPMLOugyiJBTECOaYcsA3VWcqXahgpa7kw8uqn9TgH5LMiNbJTGIkeRwe09BJZjB8FE3lvp7+VDnTbPTqMrCKYm9ocJofY6dgFyu8rRb0lNWKyyIXCQI5CLMZ3q9eBQeaI2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAarpLnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAarpLnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A8AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791961833;
	bh=McINBMvaNdt+y6nypMcZz7lm1XmqLGrtF3zvpIKU+no=;
	h=To:Subject:From:Date:From;
	b=VAarpLnmIRtfqfeiO3vn7/vwUqkinUxR/nVL+pIgrdbb12YPd+l7aUOgJSxH1F2RY
	 lcEBpZsEdLr6rQBlSfW53fxbHLTmyrulFbRoAAmHTriLqE2c/gzngL0tbipoE574JC
	 hubkn1iku9ciT+2aMIkJTCacKKj0sg4CqHH5BYcEdloVKkqt/DK8fD40QNlRLAZ6k+
	 0wzLde4fNbjqpzV8fjkuo0cPxYTevQ2/ORDTd2jvpinlDUkuvxkplcro1dVpfzwZml
	 yzV4wSfHLwV4kTUdYoIY+EkO8I8kQgSjEnZ/fiova8EkjnukhQwYrhjoHQPS/scmhL
	 +Uy1bnGeT4WRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2430CC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196183371.18789.15529252548915879831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cdf9c1ddc7608431e37ec9f603a5bb77200fa0067a51200bb6c8efc924fdd4
Date: Wed, 14 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791961833
