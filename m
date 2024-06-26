Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0E117F362
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719407003; cv=none; b=RupwZlNGL9bNXwqAMmQSHEzSp9x23E2YxwLcAYAypDmQEP/EWLbdbD7TQd9UC1oIHBH+plmV8DPsd+dO9sxm6WrDYDInZL1jxxfwktg/FQ5SV0rgrdT19ncW/NDg4YTH9XqqU83Rsx0WABByAx2JaCisCRfoVBim0tIWCpIgANY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719407003; c=relaxed/simple;
	bh=2SJCskqMcE3IxzHqVdBRbCRCmFvtWqHBni1zQwoF3LM=;
	h=To:Subject:From:Message-Id:Date; b=LnZeMSbAb/ftYJHVsEMTGDDRZ2i9jjyvtmwG7ZAWP2E27OOm6/3BuNf+VijsxTRWpRbUOiQpVwlBwzA1CviEBmDjrgevPmP40x9s5Q8/sVZCHdlvye9xZLwTlzJrjxBmGWLgdoSO/kKm+HRygFdfH+KGHXVU/Clz0KAAclyCTpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLShz8Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLShz8Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E985DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719407002;
	bh=2SJCskqMcE3IxzHqVdBRbCRCmFvtWqHBni1zQwoF3LM=;
	h=To:Subject:From:Date:From;
	b=eLShz8XtGDGjIzH31ia4YDlI35Q2xbnkjD6X2Uqa5D73xQ2O/oktV9AKKSYpcSfHv
	 G4IXDn2QOlRHwFtvzA9hguTWd3RHnhJlD5cyAAYCOCQbUG0DaZl1xa3Ez5jOyQXBJy
	 CVjkFVcabMBsymgYuUfRshibIJvtPlQD6/4fdIboxn+cA25c9e9fMcXQo1jB70OOF9
	 O2K4ZVSn4ijsdgptJjm4eXz49T+mBuMUY3GbyLAwXOzTRidN3bbQouFUpO8OA23W/b
	 7V1wqaCI40wwZorBhsT1LdYXDVrLDmgRpWI8QgBplI1rA08IrwvghnE+EOPoIEocnG
	 FR/PYZmTvMshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D78ACC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940700287.15936.11529063087036026008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee40dcf0f20d73562d13f75f7b60cb13676252d2c97fc6288ffa12295378d639
Date: Wed, 26 Jun 2024 13:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719407002
