Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4171459FF
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715859743; cv=none; b=rW6HEb/nvXqAomyMl02F7E8iyzVCgfEXIFKXRSLiFocPyNXbMLhlnX9yOgV405ILST7behbr2DDnt/FLETG10gfs99ypmffEWSsoEHNXXiTPtW1p59B5hKtCnADs7GyK5peOP6rPL6BUSMM7CxYpmbKcJR8jtScVqeaVCcTcMTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715859743; c=relaxed/simple;
	bh=eRfL+GstVq5BzQINzbJxLxy7TCrrRY3801sl1iLrsYE=;
	h=To:Subject:From:Message-Id:Date; b=dqbUe9L4Onh/v/zLKMQsakOXP3h+NiC2wC9vX/DJatlLFEFW9QHJ0sUrSPE+5fK/4ok8Jd+9xdWlmkN4VX0gG+Nq56hv4OKh30yBGedhS1Eq+Kf8oJLXfLnAou/8TiZLMiqX2jrzH2b6+c1EPk7TSiVl2j3CQD5rSpOaDxtEsSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nww0ihXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nww0ihXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BC5C32782
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715859742;
	bh=eRfL+GstVq5BzQINzbJxLxy7TCrrRY3801sl1iLrsYE=;
	h=To:Subject:From:Date:From;
	b=Nww0ihXTqneiMuu5PcGFzE87vb65Vw7r4ejvQzXwlJcUsFgLn1tblloTMApbdFjvg
	 uZouMDonpR9/cbdw6PXgl3wyIzVcCCbh4BZtiDt/U3FlY2aX9axVsQbcp0LmaGnLcZ
	 Kqa9OHESTl6IZ/V48LU7m5LsXwDDXamiaReMIjLE10znlCVPCHUVBwGznzYy+OQbHf
	 hNJ/yJv6a9FwZ+2/gDtYbZB02Wk3HDOEeV6Q0hK33GUlCebYBIEGQ46RzDHtZThqCV
	 jjD2JFdNfXFHfE+0+IhsRoKgDaKJlqy+M+tBA/bOcWsYwCqGGyQZbkuNq1KVJZ+BWA
	 iBi0BIylxH4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70D7C25B78
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585974280.504.14402514537024207111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540acc6b1f1244dbbe8e86ace48e4c9cc1e6398a8b214672a707cd7ad9dcda63
Date: Thu, 16 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715859742
