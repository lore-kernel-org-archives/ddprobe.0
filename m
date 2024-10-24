Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54898147C79
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729770354; cv=none; b=Mx2Z5Owkd3SPP5QxnlcgWrnb/sAoqNDcRI4DokE/98UJCY/c/QSp3bDalIQ8OdLCxcfNmGHbjAPTCzlp3pqDri6gcLVIEXlsYXv9k36ZHMz/aTe/k/oNrZGigOcXFgjnQ85gDm0sLZ868T4Wnf6ACwgVqbwEws3vBLRDIGBHRKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729770354; c=relaxed/simple;
	bh=Tuk2CCH8TSVWoT6kfmK/pIw5ud+MCBz+mlCwF0/1BBo=;
	h=To:Subject:From:Message-Id:Date; b=bT41/vcpCf0W4IkKvWUIFqZTCdfopQ3sIXEg/LZ9iVkXmeD+Z3jefYxUVpP4cWc4rQhznAVbrCojTCrg8HEBaBVxTIciIArbfiAJCtfytByVyc1cpfzE4s6yFTfRB26TSKguT9auqL40vKOujlSS/miD7PRzBxSQPzJ1nzhK2b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3V9e9I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3V9e9I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C55C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729770353;
	bh=Tuk2CCH8TSVWoT6kfmK/pIw5ud+MCBz+mlCwF0/1BBo=;
	h=To:Subject:From:Date:From;
	b=X3V9e9I6dVUuRGLTjuvJyVMawU9TT+RLwX+Yp0yFiCYPlyELxVNzB8Tb2K4o1OcdE
	 JNSPgNX84U6uKsrT+BcS8XI9L014peCQBtr3yTMjwWQBmZlVSmVbsUVpF/wP7kyK7J
	 tvNNk24/lEEJcb+4djJDDxlhtigcQR2cBpT5x0gkX5HnqiqK44twnVE5+vV4fHEjHZ
	 ihF3yPxxvxn+iJPlTurXXMtgEWOsoHCmuIRi5BlbzAaNVt+9o7/GgHm9IfPb7ClRgo
	 +l5O1q9JBL4C5PYf3k5vdpj35yUeS9Tr2cGItvN1aZT+dfNG55JXbmZ4RASzMjoaxW
	 5Zn31Srtf1UGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB19CE8E68
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172977035369.23660.5726377955592514761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b947347ec54bb14dad994dc7f0aff1171827fd5882b8b759c0910efeee43b6
Date: Thu, 24 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729770353
