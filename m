Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4717F4B04BF
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786892434; cv=none; b=dlX0Bs4S77Z1HSAZeMjOuGHXtz/l+qYSscfTPsCTnDaIpw07jMEV0T+7jbcPSunXarTd2XuCRpYjh2Ny46Clid+4PaQTYXdKefB+R33dBhBVIrpSeNMkEb3eo2c1UZtrDlVn1H/OqnOKPTeK9MZz4zlO8jMeLvWmchhb69wHoIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786892434; c=relaxed/simple;
	bh=lfA6Oaetzwl2FjkYHlWtkuZDSSfTZcVV6XOeOzx650Y=;
	h=To:Subject:From:Message-Id:Date; b=CJIF1Rc8Mh3V415583dLXmmL3FLU1UM3iRFe8nwwj715MPsHNwe0/xAKeYFZhD077pmifsek7jaL9+s35vcJPEbj6reudy+UqNQeAHLifdHYCrlYnC7GQQougt4rjHv7aFEl4C31uTTRpjx2SG1JJ7S3cJRrgIE9XVbZYe0keLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbV04BYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbV04BYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D095BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786892433;
	bh=lfA6Oaetzwl2FjkYHlWtkuZDSSfTZcVV6XOeOzx650Y=;
	h=To:Subject:From:Date:From;
	b=FbV04BYRSiGlUODcNkayG/5oYHEGIAysPPhQHvp38KWXyGrp8+RtO8wyh1OsDQS9z
	 XZD93E1xELrEDhyJL5hPcjgmfHBkha3VCrYavKFYeM050fZiTjsxvEOos1jH1zUzR8
	 UK/7MWs4AMO4B9S/3mkhy5HGq/3wZYqD8HaV9ZnqHo7KXN4DkzqjzZk/IJ6DDnCMwN
	 XbnS8jM/pDF2CJ/EzJ20OkmYgRcc1RDZyT2OVl2s4RMyvMVFdFCSVvvQMX1mKTROVL
	 fvhXh/E9YvoUXC3gDQGKAfsMztKuu/hx8XK5qCXi8ajnxhMcDQvgZlBjLIFORYCFHW
	 g+HTp55+et0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8D0C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689243369.349.8192067768958058135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ec0a52d0e070f844bd6b7e37e684f9716b5b8fb288b0a27bce92ccc9d2bf88
Date: Sun, 16 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786892433
