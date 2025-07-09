Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2016A221F31
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752044994; cv=none; b=uuvCkpkhKO4dgZsv0rOzTyQfMhJf+iH5ALvqCHh9b8ZrQau3IfVGrOFLSNvDfW3LJyjlg08s26J2NwzU/edrJu9ee+PjPhb7SSgBy7M81RcQzzXisVQh4+wMs1Np6AkmaDmgVkExnx47IViWUxmZjMa9laNpwAqqQi5f8s9JIe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752044994; c=relaxed/simple;
	bh=/auTdbGtgErEyUL0YbFAcvQqz5W7FxJgxBCWzUuPVqg=;
	h=To:Subject:From:Message-Id:Date; b=IlcXIEGF6uPIUqDeQ/Jv3wz2FsiZjLsAZPFHebwGWnXiu/7hdOgRpOpLoXYMODKHneEGGBXsjhS3nXcl/WPVfiNMhasL4/4fSN0667fKW+LwY0N+boTprzG0OswQ40M+xuISrVpDKsTsdwBebDf4y0/FOSe/i+vAyy3GK4WU7a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJUecJvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJUecJvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F859C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752044993;
	bh=/auTdbGtgErEyUL0YbFAcvQqz5W7FxJgxBCWzUuPVqg=;
	h=To:Subject:From:Date:From;
	b=OJUecJvoCVxaoL+GZAx4AZLAEAE9Bl+uxnbNmP1Z2VnwtbRHTct/8P/F3v4RfQ/or
	 rL/EgdOlgQfZQABI2H19mLlTcoz7orJCIHp9ISRd3U0a9vuW+Wf+xAabuL42lKBT1h
	 HnKnaChuTURECsspdSGbBlHD4pR4NN9vwAH/RW+Zi5x3Yxuwv8aIDcinDO5dtoNh2K
	 0qr6+xL9LOQmhytDJob9Qmi+DoEttMc2eu3Y6n0PvKCKyGIuNSmUZR92J+EncXVRoT
	 uYDSKw2Jm/JRuW5Izckov/3BbkSEtHE5CfqCdZIZIuGr78Zy3a3L38vGlWIm2nOt/z
	 l8WHO2IsO1wLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDECC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204499357.19434.6989582148103755845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cd374e90b99f7bc70286d16221b41a12bfee7b8f7e6ee70a2f4bfc111b8793
Date: Wed, 09 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752044993
