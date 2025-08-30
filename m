Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C2B2DECCE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756583394; cv=none; b=JGjwHvnKQuSn2v8fPbFqVoI5xEqRiEBmEOwWXad/5vjy5OkHwBeIMves1yJpLP0S8ApjuS/LDNoO2ZtjkHqlZzw4RIWQx+nRC3w4b7K+/SDDs9pMCxsa397O5AWqRxpNh9PT1/xEnQ8sahRDf87C54HEkiIEjjvCSBSkDc4S6g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756583394; c=relaxed/simple;
	bh=Na46U9q1Yn56SAYHOymdhHEp1GDzph9zjk22QctMgEU=;
	h=To:Subject:From:Message-Id:Date; b=QLprHdo+xc1VFTpNPTDeehUi47CPYtPUh5YA48BecWXDvYrSctqfser+mr9BAg1Rs3MBQ0nqDtkNu6XAyan2++wB0vSmZKZRuBepxKhtkgE7IsWN/Z2uEh93ZzUuVk8Rkav93ehHIcsyhA5g8CWe6znPb2UmPjZY53ZSwyIJqB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sr3z1kR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sr3z1kR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C70DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756583393;
	bh=Na46U9q1Yn56SAYHOymdhHEp1GDzph9zjk22QctMgEU=;
	h=To:Subject:From:Date:From;
	b=sr3z1kR70AjwvIfxBT/NBJ6usoMW/prPLaWMcLY0XRBENrhFKyhaLZRZdl2Yp251o
	 bTLn8VLc1B3LoZ6abdV9nRANyPMU2/n8P4u9JqU7uEYPsvlyuBAHynK9rqrIRsjiOi
	 6zuIQpAHC1ninF30UymmF0Od2wEw0tOKHn8BCv+LM2lvALU5sAiyMp1AbJwFXlZVri
	 yLECwNplj1nTJjmnJ8PTUMdUOiMIJYXvB7d87tt+blG39CzhLtTmLI0tJuXyub/CQ8
	 JPHbS2fMhW1EkGlSordtfD7L43Mx8tEf3F02MFAqwH5wqFFGZEBeJ1mi7NItZYGQsM
	 yNRDuDbk3/e0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E042CA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658339357.27742.1662273959786238919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f04015eb8104f8b68ab8f03c62250258890313529ac79b8eb7ef444cdfef85
Date: Sat, 30 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756583393
