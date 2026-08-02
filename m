Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FCE1EDA32
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785633034; cv=none; b=HrFUQ4P5Orw8Jfj/rerF5zh2j06lgXm7PKsuSApbJuabXK1gAKGyGTK6yJOnVaOPXj3RGwlIId9Dd7uDxigRxJjsfdhp02GMS5fn11QRoHN1SvbNzB7eC7Hxhvi3+fYK+f9fXkoDjWnkrZHlm2jAnE1+Yq6GY725r8UvR/ECYpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785633034; c=relaxed/simple;
	bh=cC1mwACI54AILvd+Su6TrziQLMsymROaXzotBlw4IvE=;
	h=To:Subject:From:Message-Id:Date; b=ZfH2g81Fjsal9UE/Dcth1OhCmRLYALoX5pBKr1HTrBNFFzLznJnzSz/2C9C4X5/GBX2gGgRoAN3m6e1BBtRwLWDbL52Wo3c/3cnfGqV2U6viLZbPpN7jtIJpu9Jh5Wd/CgYIOgCGSCApD0UfJqgJ9GQ5bZb3B3yWXdepZxwSBCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcLQbVQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcLQbVQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3609C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785633033;
	bh=cC1mwACI54AILvd+Su6TrziQLMsymROaXzotBlw4IvE=;
	h=To:Subject:From:Date:From;
	b=OcLQbVQf1+AYPH632Btmtms02C8NgQRO13HAb8opl46mbp55+CDioCrka7DFo7BAD
	 DCMqf7BqgTgJqWJofADa8DxO2wDa63qtHmN44SWKEBXIVNatnwA7CNGILiYdph/OLz
	 391mgUvQz+FGsFfkoTlAfwineJ3zRlu7Tv7iumSTf11HOG8IxTCxrn9+T/GdMIjgPk
	 u4QpP/uzLrU3Dct3WzNG9dNZNOkGHGIOG13L/AjyjO1OLBFqBsJ+jgu/b6pYzzUL1P
	 Q6VMzrR1OQfIDTCSBb3g0kxh9vUCgEU/ipKpZkfT+YsooQj/bze9r4iYH+8d3/KMV/
	 YeFY0oVo2CeUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72AC5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563303368.17205.194294622877330194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13be0fff5ebb01c512a281f639c7a7f26b9728d219de0a97208dfc19ebf29268
Date: Sun, 02 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785633033
