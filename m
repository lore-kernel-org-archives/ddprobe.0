Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4907B1B4223
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790385034; cv=none; b=iWBFNq+zdQ3h3gOZniD0xhwTOGcHr9QySEtTK92T4h4Ix/D2O2Hb/KraubqjaeyO8F8zUp5NrqPbdRZGd3aNS3cptN3LjaSJv+zb0d+mAcrztsNo3RUd0QfWVogx20q0TPmytKwcwlf1jT7ArS3DRGg8foum9Xnt6LJhwR89JsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790385034; c=relaxed/simple;
	bh=4ApAUbZQrzZT6RCq6hCil0/Q+Zn4la2MpxRXA3gjwAk=;
	h=To:Subject:From:Message-Id:Date; b=YEBrzL9nH8+bjYZUiDFDJ2vgIL6Qwzp/zAXBl/G2zpGa943okXXz9Mjkpmh3ShCzDPk/W0Thnf6+iU6vp04Xq16Av16v/VB1ymBWysbwEWCFvXv6X3HqgtPmxCu7xl/5z9zveKMdwio5fwe+b88advoAlk2sEydAdhao1M+ZQZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aac4HxT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aac4HxT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66F3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790385033;
	bh=4ApAUbZQrzZT6RCq6hCil0/Q+Zn4la2MpxRXA3gjwAk=;
	h=To:Subject:From:Date:From;
	b=Aac4HxT2d1gY7Zu5+TntoBnGpsHw62sIk3srMb98xiSPk4Yk2pcG1Huwvk931ECGy
	 niRe6+rw/JWk0W65ZJFppY2+qil1rfy4cYqTZYP3V+mMyCqpoCbdZJZZa/3if27T+C
	 ZSzrIqxaw+/tBZVK/5tIIJV4x61qyzI/ECmDabpjwexxY26O5Ri4Nr5cDup52IvKcu
	 cv/hTzVHr3sRKIc3XmEBtFM/7wa2QXGYI4ENvWbFyd2G2i33NYNCmTAO5UtVRRsY5n
	 6h8do5Q3FKXWvqTr41BikaO/sf/3ptuTGg+UGxPjBjN4pmZrM5ojLF/egQs2kfJHIl
	 Aq66XaCvItnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AA6C9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038503370.1233.407689601664496987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad5fa739a92d4853d0d06ea86843e0fe36c705945b595e6e053546168dc47ae
Date: Sat, 26 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790385033
