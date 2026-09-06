Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E542B9B7
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788672034; cv=none; b=fFYlMZZYEyZlybpFxT/1jBDImHmcMSItrYY1jdEi169kLIXnloSkyOmYIt4Fd9VlAfYtksdFkph1quIGItw3hADzXCj3MAHCLdsmQEhNPPkb8CzUY+oSh4skujxob4BQEx1BxlGkl7SAzR+Uu7dFINh9RjkOaEgWkv/fCvVEjCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788672034; c=relaxed/simple;
	bh=ri1fLSbbhoat6Q5i0On7RVJ7sI5PwWFp8lerg54Kh4A=;
	h=To:Subject:From:Message-Id:Date; b=F6jnn1oDfCgZ/uoP+V9yNUvpLgE8FC9S7IdTBNKRep2MXM05XKv2dprfY6uS7AYw5iYVlsUlpI8wXowSEC6bKNhaU81xcwKiE+7mvKXP/huM3qf8bktm9aeGu5WRqAwGVEIATeZfvIHPgZPupcddS9yLilJJkfeSBq4Xtd/bLhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRxM+P4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRxM+P4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E117FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788672033;
	bh=ri1fLSbbhoat6Q5i0On7RVJ7sI5PwWFp8lerg54Kh4A=;
	h=To:Subject:From:Date:From;
	b=XRxM+P4u0O+8Ouyf0NHQVBBrzRNX00qKD7q9wrfgsi84821MbJhjc38k7qulNT8w2
	 QDCuIbnVLsnTTAcm2wrMsqPLtnU6CrokXWVRJy8yalU3Ebom+0OG55LGPsx6zHym+1
	 b+ZoGp+8Ulj3oQzMY7PmSnxsZB6Z+T5B3Q41AcUwAjBK6fmAWmp10F1GtVBm+JxJ5k
	 Hkh8OYIl8Iwqh0u7DvdMiGXQ11qoXaUF53kaYWDUs2F22IrDDdk1l4OWEQskpE/cPh
	 iVF2kUczFlimiTNnmXxOVyEk0yGixjjbAVt3Dr2lKeedvKYTEHnDy2GXzOsdES18KO
	 3nAFcKw71Beig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA69EC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867203375.4017.17623475298626545943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb2ac665148ea8eb1c47b597de0189965e8656542310d4e7f8fe9bdb490a9dc
Date: Sun, 06 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788672033
