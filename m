Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245A9156C40
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752460794; cv=none; b=Qghj/vGjtaZlfUukqUJMbmGLsz/TvW3tFsdWOe2UYqvDHgfzn/idlGrvNssC2iFOMBA18c+qFTk4Fqpt7nhODzEy1nMKEYmS+mEOxrwaHpV+abuuxi+y+J+I0pfzdmEVnmGPHvJvYX4kZvolBuJ7VAfd1XOWegxDCt44KabOCqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752460794; c=relaxed/simple;
	bh=Y1xAltYPFbnCR6CmNocyXZiaVHDe+3DvrX1zIDwWKMw=;
	h=To:Subject:From:Message-Id:Date; b=lPRf0luMdKZS5kxq9aPbuWLK7O/IXTVzy8DTYdAhWzypgCcdrB3qxDTaiFNbbENfVkqndbFGWW59UDyMZk9nI1bi0TMUBaYsUbXfzmXyrH04614rb33GczsWF9YVgtv5g2Y371wwO47h/595EjwZv02Cp/h5EeY+IpQClWe+FG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWGeNhBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWGeNhBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD53C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752460793;
	bh=Y1xAltYPFbnCR6CmNocyXZiaVHDe+3DvrX1zIDwWKMw=;
	h=To:Subject:From:Date:From;
	b=fWGeNhBSPvdccnrkIwq+c0VwKf0HU2clJNoKD69QTSQNUo5EliLd1TI104zFDxfl6
	 W8A3tol7WsrlHX/k+bqEhRt0GT0bhE5flcA7bONlfjfkvAc/PzJvgwNZBZawzNosLB
	 6LY6l6Z5C6ZrLgHtqbhMs//IiHLAURboIq5zsR6+gvxwgbBLLUAr2TPXhGa5o5gxF2
	 ugNTtGlA/+gZwsVG0PXR9iKK8ii7cwpFfbzj2Y+uoM+WRn6I0inVae443JaDfekd+q
	 XybsKROy/l0Nh/emJ4KMDb7A8dacIHLPt31Ckhh+5Cgd6HuAwXEhKFFzJqDTMyS9LP
	 uAuZ/1vTBMwHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33EC83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246079357.11771.16592670694976642448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaec9bf05af0eb9b9bc24d886c67db25821dfb15c5760cb482c7fe767433f0d3
Date: Mon, 14 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752460793
