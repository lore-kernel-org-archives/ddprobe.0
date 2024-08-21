Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257034687
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724203554; cv=none; b=bZIYn/jhVNm8BvUKx9Ytqz3P6EunqDvEQrL7cKHRLcRokWdaCKNecW8TqMUwDZj2zzin5mFoRGGp1H/CJ4bUkTFQLSkWhCGqbidUHdLEpUWRfEP7DtIzoTBaIRjqeHS8LPdt9P+YnT4/0lXm0aVTeOTnZ2UBAW8Tx8uzt0KHuT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724203554; c=relaxed/simple;
	bh=f5C6+xZdbFQr00H67/OZ6vQ9L84gDQ1xqrdwISO9lEM=;
	h=To:Subject:From:Message-Id:Date; b=gonVzoKV6/7OR3+iBblTyvCTREQEt0JYqLxADJLHkXHYYKhupHYzG8y/dZXx1h4pIcfBcinJXWe2mmyJdjKFLN7iV5O5qz3kYYdQEv4D1JUc2oOWG41445U5sjxCwwfgLkGXLXgRpu2VdRFaAXzh2tT19yuxFZcshAwQ1bpmCKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwncdy3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwncdy3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1B6C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724203553;
	bh=f5C6+xZdbFQr00H67/OZ6vQ9L84gDQ1xqrdwISO9lEM=;
	h=To:Subject:From:Date:From;
	b=fwncdy3apnAqSEGy6UzhE7gPR0N2FtCTtx7aHm1eHkVRJBm5Rb2vCHpZ+XCWOKPHO
	 bl5cHbnJHd7Hx+o18M7tdyH4uoy16WHs5vGex0y2f3hbu+BCM69MKkBSGL0OV4O6FL
	 krpAyZhUlPDA48FdoQo5LH6Ww60+y7xEbn/ksgaCFX0okMiRVa/3RkDUzKaKiR8nPd
	 ucNzdDphFN78e9cm4yZlaOBkXE8nmVvcZDX/cuLC+/oX+7E7wEHh7ttZxExhEO7hXP
	 Z1XRcbisJXutjvjpu+q7EX9fHhRfyOMTkyd0U6MtfEa04Zc8B6MQeie3ZRIVmf5VA8
	 99rj0+o9MtDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96370C531DF
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420355360.21108.8926162262978444607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7789b64231cd6062bd14025f460741972ec441a26625786b4fceade272e5bff8
Date: Wed, 21 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724203553
