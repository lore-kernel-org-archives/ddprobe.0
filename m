Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176B3304BB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774628094; cv=none; b=Axx9XLKFdRFyoTvwoX1Nqzq9QpMhrArQcDtmO9ILWxXzf6+YpyJP2I+Bv/96dZkHFsK+aPLyC6v8bPm9HS5p5ixFAn2sHVVB1icEnDh34I0xHoqXv1Wzho6euhRM6gYfHiyfHbOFV2dj7cV/+XRNMaQnefjRCAt85AdYNKjaj/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774628094; c=relaxed/simple;
	bh=kbLozwx01tt1kozH5xBTpNxyDst2zQbupkcRn+mh9A4=;
	h=To:Subject:From:Message-Id:Date; b=kBBelIitkfvMnl8+Mqy8Jci5u2AoNKNJTYo6ChDUTbIanhtKqYs+Bmn6QtjXB2s+/64TJum7tIj2aBNSWSt3FRgwnpRkYW24SFLGp8zgzZD2CHi/sl8x+TMfkpsbGemSysG/wDfLmqftSwT6rKybNsw3klNvDKqJJOsPudXUrZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdR8pxB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdR8pxB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F4C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774628093;
	bh=kbLozwx01tt1kozH5xBTpNxyDst2zQbupkcRn+mh9A4=;
	h=To:Subject:From:Date:From;
	b=UdR8pxB7fsXk+xeT+XezaoAAYM54393NIFUrAWm8suZuMuefhjmIRPs+pAcyU7P4S
	 vq9rp1ddzCBaQF2uMhOiCdn/mjPa7OeZejyVMlAD96vc+I5phFaKd0bHOd66qz3nf6
	 cMY2HAu49sNNiJFpw3OFzcSwNR8ApGZ6p0gF5fQ2BzSKnOvt9z2Uvl9DwPO4dwMAA8
	 iUiq4rUVnfDOV6FbQ/Bf7ds9YjnwQooyDuUcmbnIR9+MA0UuIFFkH2vJZE23ywxmhd
	 m01sQvW8rwPSzu12IelMYpKlh9/5/bhmrrR3j2pJlFtuAMpd273LfiQVanMQz/lMPe
	 HhNOBAdG90rrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCA10F284B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462809358.7025.16076715190987704897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9607d168a014e5e0e56d226a05cf796353d2faacdd832bb2b8e4501d1045bd09
Date: Fri, 27 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774628093
