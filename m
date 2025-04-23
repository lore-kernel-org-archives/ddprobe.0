Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26355211711
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745395794; cv=none; b=MT42IIrTNnty5Sq/Vd9+gTn/efMYw+eJcDwn7dzwfMJXBfaMxCXR0l216saOGQa7WN+M9O4Dj8UJ9uMhSjLRFt8YSv72qH0v79FKhvN/ftk1as1zQYJB8xlGbv0ARrDojT94JZlrnPn1bHvqdfHDih2p/XcT8l887CyaQ9TEhTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745395794; c=relaxed/simple;
	bh=Ig6eCrna3mbm33w/7/CBfRU1vwvfq3Gt35cQYSwBr9s=;
	h=To:Subject:From:Message-Id:Date; b=LEpePoxZrtd2hjXNFhvquil9rPFG42QFRuMO3tRWfsWWScc+6Ju5yawO9LkASpevKMsuf9fbkcdftExik11eQ3aIU9wwVdJI5spwyQLsJg75lM4XH1xf9jYSoJQ9QaupQXxqwy3L6q4BG3jJrR1/YBC+/1O1T5ntbZgA1AyyN0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6rTak+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6rTak+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D614C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745395793;
	bh=Ig6eCrna3mbm33w/7/CBfRU1vwvfq3Gt35cQYSwBr9s=;
	h=To:Subject:From:Date:From;
	b=o6rTak+C6iTrlcQUasKwNYJtMDLCt1p6S+WN44x0laU7SBY6gHzIOIaTnvbIRc1nF
	 Vh++Ll+GM1Ut36XLJ+7MfAjI0R+merFb2wvZPT03fV/xtRy38K+QSO6mafTfBRPEq0
	 w4DgTLPiGMqCvMXkdlIuOqZvGSzZ31k6XFLCHHLHPxny03fy3Scs91mVRC30yV0Ilb
	 dpOgbxjmMaP+emVI6NlGJ75O/onLvrolWEdgO1grAJCBiByKUDa6V9jAnTMJSDuK/m
	 osl5xOtqIiwRJzMPtybV2wo8uBebgGuEwKoWwdNeoT17U1uMPH+/Je3N6ohljNn3iq
	 SYSa57KOS6/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF53C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539579357.21101.15945060811289535000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0afa3f4601930ea7076fc49d2f5ab193336ca631790a4b36cf7cee6bfccff9
Date: Wed, 23 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745395793
