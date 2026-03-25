Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110C030DED1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774439694; cv=none; b=UiFkHMdrTVz2N6B6KJS/H6D/MIBMmGuZLe91DmJWJPxYEtck/p2Pg4WhzysG48MbZsdHoizZF5btCizHkuHNK3YjWI3+i3d07dhRp9Ov83my987ZCOxHtEiZWE/4z7h1h/Zwsif0KPvoFklcxkBlEUKMVttFJUCegZX8yveWjJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774439694; c=relaxed/simple;
	bh=Fz1J8iOX+nswyHgYvhQxyKJC77s1bZiodCHsFVDPP+I=;
	h=To:Subject:From:Message-Id:Date; b=WYfDKFygWG4In8m9vuKmHWFjxIpdYuttzflQQS+9gWeLA90VBwrbpNohGFxo2jc3J7vcgKZNAWnFAOeood4QpsEK1VXoiKqpsnHz3/JImfkB33qzgqCKH3Iwdg80KtE7fkVHDGaO55YyZy04P6X0ew/WWjR/ubUA9lOTM3RI+mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnfMnmK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnfMnmK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774439693;
	bh=Fz1J8iOX+nswyHgYvhQxyKJC77s1bZiodCHsFVDPP+I=;
	h=To:Subject:From:Date:From;
	b=OnfMnmK/kxSlxZbcGngszbXp/OLRWETPnmWiHNZeI9PcEpLazumIorI0eWgPGp7+B
	 c1pKpCTpbZNBNGbxJON0QbMX51qD+l0/ZR7Si82HZKDDj0AeNoPBpzpDV8j3gOCFJg
	 lp1p0CZSX8WnTGbFIjKydcpdeigho8yAW3rdv3ehBRcTrDrx6xHNzFIKEdHyUusDh+
	 wY614eGSe6khWr5pGPWg1v/MnBjg9eQACrWB0wIvDurNnddyZjNzaSEtgl7/m6gyt7
	 5wvoPuw7fkb0/7f4nVXEtHgdVLOfwH1ncthnxNkVkruy4CiTEH1AcFrWDTtGb9Qwtr
	 /nzfivL9hiB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97878106B503
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443969360.21666.16861581237342861032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24010a41ba9c5a65641f345d57bdc3fcbe6ac2d57abcf52fe5aab79738ef023
Date: Wed, 25 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774439693
