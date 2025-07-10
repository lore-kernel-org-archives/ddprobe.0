Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCFC1E520B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752183594; cv=none; b=dhj2bteVeclpTLxXtVBk+6Qpqb6xHuSePcRBRsiOlrEkVE0jlrN9ki7srQbmr60jfb2ShnjnzZEw1h6dL5ZApMaabLGpSegz5qIngW1BS/keuNP3A7OfZHehbhGfgayO+3soJCKixooU2Q9Gpi8pigBzGSmLjvRMu34GcbAbaTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752183594; c=relaxed/simple;
	bh=J9R75yCAb/hvXMLZIkNJcabhotVtW4+zvCA1cHSyfSQ=;
	h=To:Subject:From:Message-Id:Date; b=IHImbsAr69F7YKe2f3H5J2/p9Zfpu3GHTsVuTdX+ouD89Iwxa44qXbSSag+WiA8Z+bewq7uS8XnjknZ3ke36bwZV9b7xUAVu9ud7ri80QVn/A68eylYyEJTSU3JcP/ow639YHDLjkUO9AbKeuzCvSdq62ySeTr3AzNdvJBMIhug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYs8D0lL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYs8D0lL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD40C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752183593;
	bh=J9R75yCAb/hvXMLZIkNJcabhotVtW4+zvCA1cHSyfSQ=;
	h=To:Subject:From:Date:From;
	b=KYs8D0lLA/Ptu+yUdO5krGUK+vszcOigrIm+T28kMineteKhiKPBUg6lhjP30IbxP
	 1YtX5Sf8lGFeEtfNwYTFFrFjxtsA9NC4sJqX6vnB9bHY6psptrAiicendqEvTJWBr/
	 F6ADKoHqpLW1NXWViqsnx7GMSLq2IXHliLrdIQHuqQ3pHsKj0V5Jasr8a5jCFdv+8c
	 sJUNcPny94hGyZDAFyC+szoqL6RNBcFNXx9ThVuVlBPxYGg4Br+OV8dkVoTz5VUi5d
	 V/cAYbflVnajs50Lk3HzIcxjR2dZPAFtsRvR8CZj9JVPBP9iqJgOtAocZgote+y2Lw
	 AE30bsWjDG9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ECC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218359357.673.14222301497473448628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0437494cfdea87dfd30ca6a8b336c91f69485cba7c575f9db87eb5f60c3255
Date: Thu, 10 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752183593
