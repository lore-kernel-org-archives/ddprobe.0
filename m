Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F314EC677
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789555234; cv=none; b=c+FcINbh7pJ0pnDw1na9Vum3L7TZJrhQCAMorent3czZZj+G4QzQLfHz4eyn2adEbWy5E1CXVLGBMK9fN1UrsW1s2JFPFIon2aG401CuJS84KQQz/tOuoZhn6L0KqI2bX+RvqTnYpSVHSkmDR5V65ex+Lnqku9ztmvCARn5jY4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789555234; c=relaxed/simple;
	bh=ZMJIZWfkp9iCXWw9gm/33K/vSpG2MyVGX5+L4pA2uMg=;
	h=To:Subject:From:Message-Id:Date; b=IVvaTY5U4gvkvh6cdOtzxnKQfeZ3166drGT05uXnzVDY9si1RS4FUjSf0NTpl9mbTGrYi+HHWgVibBZJKCQ9YpFjKZjS79fqdoeEfCv1+X2wHwdd6JzfxOuKFaRHxkZ2ZIVprwx8EoMUmi7TOFjPOtbCMmEzIIzuOJN19VlOUS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mL4nhucP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mL4nhucP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4C0C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789555233;
	bh=ZMJIZWfkp9iCXWw9gm/33K/vSpG2MyVGX5+L4pA2uMg=;
	h=To:Subject:From:Date:From;
	b=mL4nhucPfLWkhezYFP+HK/ynSTjvv/4zeCEWT2oI3l8SICAvKU7kLvBs3LxtTB92F
	 fM6oA+Hl03y9fWbW9MijtEI21gROOTVyF28j/vRK31eTCSslIKzfHurEKtAqv7jSO1
	 ayNlVKbTnyJC7vfdSCaKiVTmFKrHLe4iFjCNVuLq8oPnXkzgFg1BcLqP+IcMrMnMlx
	 PquNlJpC7x4FfJnBpjepeBCXuB0ailWZ2Vgw0rxEtDxycRiMsUXywWmlqT/hNvdlDs
	 O7aAJ03urZsPybMpcNjkPEKnC3npyW00SDX5Mv56BfSlT8/4SdvuweH8zuvSVE+M1H
	 5y3GL742ZqsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D48C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955523373.12974.18325277744859632600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41d9480a39bb009ae1b08ce58f298c0f460fbbb69d60672e31a7cb53a788c56
Date: Wed, 16 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789555233
