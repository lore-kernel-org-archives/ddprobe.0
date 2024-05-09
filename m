Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BF21DA32
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251343; cv=none; b=UlXr6YB3tTvrOwYM7M+nv4meweG2zXHPTDLJLcVZdboESUFafyLcWp+UQ/ig/jXyIqBSIgGqs6l0kmGnT/F21wsbL8tDpD/dH2FBIeM6TwQDKe8ZghScEllAiU4HW/EoSxTJpWDzKBVn4pGpJloqAUbHPEucMpWKWe2IWPLjlKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251343; c=relaxed/simple;
	bh=TtWqJl+YZ7plFejYz5Bq5L4xhyXkByaoC2HaXujHGtU=;
	h=To:Subject:From:Message-Id:Date; b=iihQLEpdQESDMSUsQvyrnzJ16gAygllZCwzvNAtqBUyZzKKoliN5OfN2C3a/U+XavV+A02pcYPVIEOkvYPth1w9rxYiAegB9Xo+yjITtpJhBfnDfMaJGgiGBPpOj8NQ0lffrLCMONiW5hnGJZlImc7T2pcintVWtpeMmWAtnP8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOHL2Vzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOHL2Vzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D502FC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715251342;
	bh=TtWqJl+YZ7plFejYz5Bq5L4xhyXkByaoC2HaXujHGtU=;
	h=To:Subject:From:Date:From;
	b=LOHL2VzrqmoHSZiLsTvi2uZJXQj7H7UTmjsriCoFyK7QTG3fiCkhRqXpiTKLD1Zwl
	 CFbCV/jpjT4XUMtAus5ZRnAJUQgIuRkYwGVBheJNQVPqJivNp/OrlHxJLx8nog9c2F
	 zi9mq/jAlAYSuCNXB2c/YBwLOCzNPSt8jXGE8r4tVL1/e90zdJHTkEn3Zr+L8CQxPn
	 gGnL4W03Wxl3QOUL2tvebrVSeU6jm3+u4p9C8YetgPPYJBFv3FaXzx1tGBKcfLzmDr
	 wN466T4VBj5603MDx3EG6lxPtYgOWrjb10YjiAZrNUEwZpHNzUC02J2bkfj3ZQHWrw
	 2NbvrmsEZwqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38EAC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525134279.12207.8521787916349406490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4566afb2ccd5c21690fd5f1b4fa5ab2483e399a53d995b5bc9c65a0a6c4bbb6e
Date: Thu, 09 May 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715251342
