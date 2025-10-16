Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215CE1C84C0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760591394; cv=none; b=Cb403DfifV+IMo+/AMJQNaVck9UzZXn81zmPrImb14O5UyRUwLy8qc3IzlRtBVOieI7IClXhBE9TZAu6mtgVFwWEGDzanHhaUrh3ay0nTCKvKlD6XmAgP8s6HkrGTBCDdaRtmn6y7Tt6/X1jHSgPiw16v+NoNYZD+QK1ghakMlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760591394; c=relaxed/simple;
	bh=rSYpO644HtNALn54egDDlZh2M+QQoGzdgrdDSzbK2TQ=;
	h=To:Subject:From:Message-Id:Date; b=nz/FR+UX38kUkZJ7/lU9e4NqQO8XuFcZOmL4QFwN8mKdofDfB6EJeWd3/Gvu1H7p7AmuRPyPBmETDst2sSLHB1AKxzDh1PHPJ485yOXgwfg1L0qdGgbZF8LmwKVU2v1ZIRYvTMi4RQiv3JFXFFtS6jeGQIQlpGVp840v172oCQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKn0xIDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKn0xIDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E07C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760591393;
	bh=rSYpO644HtNALn54egDDlZh2M+QQoGzdgrdDSzbK2TQ=;
	h=To:Subject:From:Date:From;
	b=IKn0xIDmnYHkIoCWMzwLWXOFt7VmRZRp7Vaiy1ty2cACHiRud/+9kmnijD0up9XVz
	 fNCfi3f3/UkJCskdjPeTrpt7YqvvGMhd79ucDTapTwzX0/Muvfzx3rAHUlfWcUvi6D
	 mPAACWE5FJSS0zfWInvKMoEU0E+mfePscZXWWl7jPduCeiQsdpmjrU7PZkv5EEA0Fp
	 e0+A0nUY7i+ZhaWPwPJK00l9UCR9OoqPakfG1cUH4VpDo9IBin+z45fzkbl/bWjkiK
	 4pvMf/eMN0hg6E9qr7aRYdtDa6gQatUc+yhnGlBWa80ELGrJMrKv8dNTi4E/oe4QYV
	 /zOhz5wzkjbyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B98CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059139358.28059.365267612202967590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54ffe4d1351a7f78a32464a339d29e23bce7220783d6900dc1890bd4cee0e52
Date: Thu, 16 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760591393
