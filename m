Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312C1125D6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751168394; cv=none; b=L99F55x/v6k+Rdn1H7exSTUUCMMfkFWcE5hGkT3jSfIdEUdUp26CU29oCPk5IItwNJHYwBjO1EcT4cOI66fNCF2TYDQrrUyps60TPV3Cc1kq8qNrak8oGwpdf+2TYUk+yrfJRt6NZyMy1+oALWNbKGIoXfkRsaDRznQKG023Zo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751168394; c=relaxed/simple;
	bh=Yi47f9GLR351IZwtH94RWNjAAJ5/pk7Qub8roNwJ/OI=;
	h=To:Subject:From:Message-Id:Date; b=Sq+1X9XO9zmZq7rMjTmUpP7/w8RZ5fQ0bUs/VY1VZ4W/PLbBiRbGXa2QDflfos3aG8nsv/1LFMcGfqJmgG5G/43mCSbySmH6jlwwoMSF3xABpBFhJEiOgc/On/uiNr9C839lk1daa47V3HIksv9XZD2tOGV6fZHweKmvERgQf4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjsn3pBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjsn3pBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F3C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751168393;
	bh=Yi47f9GLR351IZwtH94RWNjAAJ5/pk7Qub8roNwJ/OI=;
	h=To:Subject:From:Date:From;
	b=Jjsn3pBR3A05yi29VdTYKuOSayuUHIkBO0rbii6IN4TMDVG/kT9odqQ/wNhPW+ZTy
	 c8GwQ9LLqewqKXaG9CQc0Bmbst5bHJlpaxcurHjX3AhwsmwS4qr8m2g08P7Qgise/B
	 NwgmInGhQKe69E+dWR36YfUyY01lgkXCIuY9zHoKTswQy5nuFimF1C4XRdm/umlZDH
	 Z/8R8XWx7e6c8xy+lgbqS9wWYZyXuleESBPE08ALYd3X2G3fCSN+MxP3iqvcBm3Wzj
	 mlGTGLCR+MVzqpjNMlCHdoAmvaW3pWwX2NLzcImxYUxhSbhqGwSm0MSO36C3bB5sfj
	 62pwjPvIJBsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C8C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116839358.451.2803416965531170748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5575a704dd58831f0bb32634bf042bf952114e94fc79983975f27897431bf703
Date: Sun, 29 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751168393
