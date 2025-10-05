Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B58023AD
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759700394; cv=none; b=tIxBvUA7TV7MQIKcazZ+aDvqGkeq1DyR9+eW4bsOdli9qGO/KtxIEYVE5n9J79eX9RgH0b4UPyx4WU2vSlgyP5D8HtyExJDXZ5bNfe9USOI3mC0SE1w8J8fap9l9AZ75wE4QopNDew+AnymUbFE1u/25DpSihMZA3nfCiXOR06I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759700394; c=relaxed/simple;
	bh=3FgMUMZobHx45xo2YMZjBz42gG0lyFMdauURg3Jpl9g=;
	h=To:Subject:From:Message-Id:Date; b=kZABWZfVLiRzx4FTyQa1sdRv9amBlGdaCg3hfoBJxKUDZTmUleknzHsg+W2N5TNilyfwU/LnrCAHNRQgYJNgLL4cTYvvq1ficDeBx3wv5uJgKYv99xjHN2IJDwl4bbU8eEXxU5UuYEdCoY24qGMH5I3hYo8+l1bajp4/HZedpZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST8eJED7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST8eJED7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7624C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759700393;
	bh=3FgMUMZobHx45xo2YMZjBz42gG0lyFMdauURg3Jpl9g=;
	h=To:Subject:From:Date:From;
	b=ST8eJED7aDN/+qe9U/u+7KmNNEyv9MabaDgpHJNNR4asclESB6PwTd1YRYJL7dq7F
	 tWdfPzbVFd22vqDoIrDURfti9Ux70JXPdwkoEWr39bnBuIQC4yYxbceFR8XvOE1Y5Y
	 QvmiohuB2URBrf7JRyrkWyhkASQBbPMgvWhONUxhFovIXHC7mKsAFUC6pjlSVSRZoG
	 6PL2tvtJJ0a7miMqTaRKt6NU/Kh7d65n86y0JaC5vcbXWxXSmftEkoelnsklRsM/1Y
	 aJsUn9HXxAiPM2bs83eZLfBrOzMyS6aUWN6DcH08gVbgabPACaSjeb+ty1mr70qcjS
	 AcyWkj55DudNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951BACAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970039357.16163.8666458504639388359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3654b72fab072d6bee6a0078a9a6eacced6b1b2d58294cc3fc4c4e851db2be41
Date: Sun, 05 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759700393
