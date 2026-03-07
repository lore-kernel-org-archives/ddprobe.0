Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1442C199949
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772851494; cv=none; b=NKXKrsCKXAKquVfjzlMPd5ujlDMfN2r/nUnxuh9oEXRDycJZBBgsCQ1VdsUgHETm2YKNGzumh7rOrDhsIckR0za25TT9AKHMmftBhZsOVcT6qqyIS7cD7mlGdaw/TgNKC901EinnniFllLdZZRftI4anH3Ytv/g1pthI7RUBN/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772851494; c=relaxed/simple;
	bh=NPLeywIPtTqq0b5Ii67DAdOFRSYDu3cFCrPLa0Zc+P8=;
	h=To:Subject:From:Message-Id:Date; b=OkKnG/6tw2idn6Sm0ETXwvPpL5N1cG5ztAPPKjpdM+HXdU1J1GfXZ4Pm9fvDQEaByHfvljhvL3I+IijBSDiYbZzSRDnnLrhqiav0QcawAvGVSRLbHTWnqBAVVy+lHGuHjl4wzYyBrvZwi36BL698agsjVfU9Ywr4AkV48S7ghnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8iXC94l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8iXC94l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE468C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772851493;
	bh=NPLeywIPtTqq0b5Ii67DAdOFRSYDu3cFCrPLa0Zc+P8=;
	h=To:Subject:From:Date:From;
	b=q8iXC94lVRSE/eFmHUtefahthAPBZJ9tN4igHBn8ordCpiIjo/v9rIQQRgc8qbZAC
	 y5Xm0+Lmk7PGiEJMeBpFvp/W1JYMY3panOq3OJtv/TBneU67u3b2ombhFJhLfSg23W
	 tV8ts/t8Q8QI4asxnMBcLtjQ1hz/ghKbpHfOhr4rSIhb1afAjPPZlGORGyuNX+1wMA
	 eiN/XdbG2/LMY0dgXyJPyKReuI+8e2V7+Ow6Nvb7yf+F/ebQSJjvr0wIEm/45y6vwA
	 GQVEyja3nbJ22NiPj8VATe+NDzaoSfoAH8hCF2nHXA3E0J4nbMwA1J+TPHINix7VFf
	 Z9114OfMWnpkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4622FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285149363.3883.17647209700811810996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824ada06a41629fa5fa57113ef5429cbef12ab606b9404c5ce26a28327e698a4
Date: Sat, 07 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772851493
