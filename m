Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5241713C690
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 21:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721078723; cv=none; b=bRqViPFPDIbxt9SM4ujAV4jyP8sZ7qBSSgsf6xmYnMiYGBYqSFUtn9/LRwkhTL9nRm6GqvKxNTJeTPFuo2Ud/MMOaMHb3DJmhkGuk9yiDnrSodAJw2kzSM00WJPtboCsHOvPW0TwiTzgbmHfucOg23c3jgaWpnRF/vIslcNpfvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721078723; c=relaxed/simple;
	bh=URXgZr5ZDaSXMidvMrejZRSnujG8tXuEhCBIzfAv9Ko=;
	h=To:Subject:From:Message-Id:Date; b=bW6iiU3acWFjTt6Nk3QmzEQq05U922Mz+9gcTOSVPCBsiE4bllN9NYndwgwy/VSzanMwHzB9Ll5kzJJ4WtD4aQBBrNerefZuZqQxQKURYXA7ruYOFfxOztO9HsXRQi57KnW8KEbo+TZ24NZXZt+aYTLsYYqo+S7kT30Qn+eaIf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX0ByC8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX0ByC8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFC9C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721078722;
	bh=URXgZr5ZDaSXMidvMrejZRSnujG8tXuEhCBIzfAv9Ko=;
	h=To:Subject:From:Date:From;
	b=eX0ByC8dFbN9S88Qv1IAvMIcyNDAs+w3vcfg54cY9IDIdnit06Fh+O+0tSnzmLCCz
	 4a9oMn2VyGi5mvNmomY8iTEawAmMyCVdipT3t3NR3oYXl8CA7GxgepLGFzlBKiX6Xx
	 Wi7wdLHXKw64YqZW9jwvdaSEvdkhMi/+aP7IHttqPhVDA6AfibyNlmsiBlPAkseXRi
	 udBkE07uqmyhWGWfJOLZpKJl/6LskUG4v4og2/2UZCqd7XIIrfFIpxa7VT/6TzPbQ3
	 sntxX3GHG1E8lul/7Gto2LS1juOPhfdn8hN3kudxrzupISeUdNFEhBXnRnD6iDwVZr
	 +SIAUPJOhU1Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79F6C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107872278.30772.16772209824224847716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3847636ccb52783933fcee6e3812a548dd3c59662f43c3fc8feb225e1668ac
Date: Mon, 15 Jul 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721078722
