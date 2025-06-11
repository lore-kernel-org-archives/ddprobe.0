Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C02222CA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749673795; cv=none; b=qeCnTW2gmpal3R1vdoAO1axuI/Aj6VWPmbrmiwwoOtAExJsV1yUpno74a9osQOjapuhB1CwucCjDSeoNujc7Z7v1H5y1n5nGeC1YdvY3tBWTQ05+OE32D6xxkyhodbdzdOmg9zOjtYVl6GdxTKmKh93XKzNLb7SlKMnmrAnPknQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749673795; c=relaxed/simple;
	bh=nvpn6PjSO2DJSoLMXR3H1Kv0w9Vo/ht1zuE3tpdxLdQ=;
	h=To:Subject:From:Message-Id:Date; b=Sl1/H65ZgPOc/wDoCHkiodD2v1q+CG5NkQ/kGu20728IsIdQSVEiwT3fDt1DpzQkhG4Qi/N78CufiaNET+gZANqC3iOZotBfRfwVX/Bywk4g7tW49uY/G5D8kIk6Q7PKA5CuWloqiAEmU5sXWXac0m4vh65fW7DUGIZdCLd6+Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPv3MZAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPv3MZAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEC8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749673793;
	bh=nvpn6PjSO2DJSoLMXR3H1Kv0w9Vo/ht1zuE3tpdxLdQ=;
	h=To:Subject:From:Date:From;
	b=QPv3MZAQTE5cnf3gcBYkL6sv1aFGEAxBu5yRrT5Nul6j9OV/U4cHTZWDvLKLztX/o
	 xT21R+yna5sTDK+HYQz3smqwUPb7g/kVH25uSKmINdbZ3hlfDQzxcK8ufCee0t4mwB
	 zIR5Rr3YR1K8fAp4p7yC+jetoFaCgOxU+IebFx0GTjUU4+iS/GVTMTkyC9JAiPTGh3
	 MNh8+fdpj/PnpnTyNZYOLWcb66Z/oyvUSlosRFJ2VbWj7NdJL6p/FB0OZs95D20jx/
	 2d2NRRkauUT+puy1ACoenGisotpMQifGFK5W3LpzenZkUoPrBzqAzqx1+fOB2HTf2u
	 xtt/3qsmZG91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980FCC71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967379361.16804.18125528674941701606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0975502076b797810651e16257a7c7c0e3323fc3df798969e4e909372627cc
Date: Wed, 11 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749673793
