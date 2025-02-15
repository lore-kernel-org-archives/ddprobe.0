Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1D1D2FF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739603335; cv=none; b=tgD+Kak2Fhf/mi5GN0nJ8orqkyxLz5oZBdK5EQdcE/uUssQbMs5v3ZLMu51kBWF4W89RpNVBvqvUPw+e5BBbOYsfaRhnf+UIgVwmfCPpjuWnZub5l671z3ZaW0vvogwygjoOpb3ZFZ2IWctEmrXDfkORJm6YJSX24mT9ot04tjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739603335; c=relaxed/simple;
	bh=KyJlFnxqcKO/9DkXgtlm8vEnyAZRFotRxqXTMYHdGDc=;
	h=To:Subject:From:Message-Id:Date; b=ZyOFijK/Xp2vfhb+JUJPd1xVp8Dlv58Loflvkp9RGW8rRphvZRyDJb0TFXRXMBvtOFVICPaV4bsQ0Hg8ulGeMQwtno/jZDaCgAXou28tzWjq0trqawppPPVG+vmrnoLAactSVqSgJUyFZLG2XZyMibgIm98qIXaK+xPD00DFt+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw1brk1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw1brk1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E94C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739603333;
	bh=KyJlFnxqcKO/9DkXgtlm8vEnyAZRFotRxqXTMYHdGDc=;
	h=To:Subject:From:Date:From;
	b=bw1brk1Br0wJ1GcqTWb2l9GvsdesEPoGz19NgjdNP7Bq/esQlfrcSd8xEV8pfRu3q
	 BSky/OcAvC4gsdHA9RxV65rDUUFttdji0SgHw5A9esl0tUdNkTQEIoBCMGGF6IinIK
	 smAwjV78ny/myDN9jt+gBtm+t0wk69XRzR4WRg+bvhuCeBCkujge0sbHA+a3eGGbrX
	 +Gp5X3sob+qPxrJZiocR0g1+brVxqbb1AknARaxSemZG2BjO8zbqQJIToQycF8T1TO
	 j/hm86Ne0Hr5x8icwJVN0NcKr0leUyI31Vdhcn/UPwqnaRFqQHKEKBfBp76LEPI92A
	 jDmX509m4IcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B60C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960333358.13401.15121781402748082683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74160a16fccb3672172ed1bc6185a1f9928ddc2617f86d1f4222865c40619f2
Date: Sat, 15 Feb 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739603333
