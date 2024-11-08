Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2871D1EBFEC
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731097554; cv=none; b=MOnR8XlVqO0rwGwW2QGEahOrQnI4lJRdivuMKR7IVz6z3AWtStVqsZxu3/oHK3GesbiwyKhESARe9lfoRSnQZSlyoS4kvMWUcy+VDxKWbenjhHryQ7OzkTTzmhI4cElMv3k6Wapj3t8DN03WO1LPDEn8GJ+D/KKemQy5S+gwZ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731097554; c=relaxed/simple;
	bh=wP01zxKSeKai+HzW26a8qeYuwwCWZhVppnJGGAHp9Co=;
	h=To:Subject:From:Message-Id:Date; b=pnF6eqLhUIaVNtExabcDVixuHGjRC/RGB507BWLyPUztF4n8NA5Y9TI1Asbe2fcMUNcFO1FgfVFSqZpZG07w8kLMMiYEBt2Gy05ORed2Efp5FymxJdO6bnMb53pu1LF8uiLvxKFLcVmlEbGfu9O3qx/TMFJ72wzAx3z1bwa7f5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSpXXwKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSpXXwKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3DC4CED2
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731097553;
	bh=wP01zxKSeKai+HzW26a8qeYuwwCWZhVppnJGGAHp9Co=;
	h=To:Subject:From:Date:From;
	b=iSpXXwKav2Ux+Nj7ubmRTdwQ2sAJRDgwFmWQzU9E9jJ9aEAagzPKxeZ08Oquz4D2D
	 +pdNLPDEiUnSMh0x+FpmmhTXuDo+4KfCW0x4YjOJl+QKwth6KQ+G7DJlBN2LHI+J/M
	 Ycol5MbBWKuVrpTMZTpr5Hro4Cx8LWqy9qaHvgKc8v0cH/b5bdNdml2F2icucUFbmc
	 eXm4ld1uWyj5FrSFSakh/UNN+8YQbavi2va/R4fox1dAxUDko4Q5v4t3TCGbEGokOn
	 0/rqP60NUKzHrnElrx7xrUk8syv9cNy+jVCdFLdskJ3FvOcHhrL/pvEXhDJT5n5G4R
	 rCh9q+6rJxufg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A99D64085
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109755359.6179.13655259723380712037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07de66bb5ecd184e81445ec0a357770f86463499d181ad7f11dae0e46397f951
Date: Fri, 08 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731097553
