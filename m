Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E75305680
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781549194; cv=none; b=TgdM11sLl8nGOLMLVHSa+/CsSdZucUoxC+Jakf9sBgHkWLiHgvSDAS4bpeJq7wqHRroffQ1P/Bq2Jux20IrSaBHCsFfHRifgL7kNz8IY4dirPEafguRn+7noUr/E4T0w+OBIAsFVhRoNkn9xxcyhzVyKpZQs5KK4Vn1QljtZgqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781549194; c=relaxed/simple;
	bh=h21Wpo5f9LxcQiBfuDgtCunFzh8senWJxjesXNcvwq4=;
	h=To:Subject:From:Message-Id:Date; b=c6SQNXmDIaoNnP8WAHiBt/j5K2LpP0f5wWDR1SlEnOyB6PSg4VgGrYxzZ8GCNoWThVKvRBxsV8ihGLBpcMeJjleKOuDQvaXZmFMwiNkZRNOKDIHwhHF71AluE4ADnPpxsDciGQyUQY8f1t5OJk899rZ0Z/VY1jeQjrdZmwEPIHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSZa7+yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSZa7+yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B1DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781549193;
	bh=h21Wpo5f9LxcQiBfuDgtCunFzh8senWJxjesXNcvwq4=;
	h=To:Subject:From:Date:From;
	b=PSZa7+yD2ao5p0rC+I5e72yjYu7i5Th7Ait6n4exjCUyhD8J960tcVtbWrEpTCrpZ
	 i7/jBdGu6N/+wimAjpcls9Cc+5Kt8RXsVsAd2gXuAIQfHDlA4QtCLyb/Jw0nejOqqB
	 L9MvdWxGGyUpzSTpDRhtPGM0Mc2jzuOWT9ko+Yf0jIf017D0di6tDTWSABDir+cfXh
	 fBLPGpJnnfVagBkjUEQh9K/4SEPbJv6lEiTN6K5v5sjjEU8YCetQxSQWeBW5amuqPc
	 KN7+NLEXEPGGlXtrs8f1BZXtFrZKcxXjv3Wi4ja8hCs2zZrx7AjxcQmWxH4fMDt3Qu
	 bMChwizpGFjkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA6CD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154919370.9840.5214418287239405265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28f18652941bf56b5bcff932e2a8a58d11e71de710851951585b61273a163f2
Date: Mon, 15 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781549193
