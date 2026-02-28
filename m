Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51712D97B9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772295894; cv=none; b=Hlrvy1D3Bn/ouNP4iY9VVQPcs2vBUTB2A03rlKvRB7uDqFt6clbaCNPoApWj1jzP89nlzm97vfpWmN7a3iRZwgBAtv8AW0nkRtcDwh+o0+sPDXk9kjOss5VxKqmbBzmkQ2tSaTU86AoskwKkkUjWAMPGuZOhPtyHXHN8oRFx6jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772295894; c=relaxed/simple;
	bh=CXuCTVxE9dIH7KghB/bdu6lY41zMNK4B9N1R/cFXk7o=;
	h=To:Subject:From:Message-Id:Date; b=YxlF82wZMiCaJ9XhLi5kprbz3/EVNNwcDTFFl5HO+nLzrmAoO5VtM0tQhK5XdmSoJvaOK0EO1/B0g6SLWMJUXIDVv6etnXPec/S0aRSkEbeGeFrSmH2AsFKch5w9Uj8sOmyQcKBUA8/in2EcBu3WzivMlVR/xlmksKLtV3YU1Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npOFrzGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npOFrzGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E05C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772295893;
	bh=CXuCTVxE9dIH7KghB/bdu6lY41zMNK4B9N1R/cFXk7o=;
	h=To:Subject:From:Date:From;
	b=npOFrzGsa1IRH06HG6pl1dsyhhrpfpoTapI+HtC60O4JTyo3STRjfGfUI0o9Y6+NU
	 hxY/OGcqU3oFT76xl98j5wFJb0Q3+RY12IHc1dABzjmXbN/2a+JCEY+RkBSWZBJMtf
	 fIN4aifNumExzZK8HFb07f3I70Mqn8nATOanr7ZVrdelhd6tcfJ4Hf7WsawYW0BENT
	 +CjXQK8V4XteDoXAkn+Zu8VEGWBY3sp02NtSfZVliJG1K1+6oApHrFG1UW8qgXfWwP
	 AxvfkCDio7NXdrgcVwgMqhUSh0sjruy4YJCfr4fc95Jeztx+yBZhxOzay1J2rvFewv
	 MPnMfsd+eTF1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C17FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229589358.28436.1861005747149617038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7e9aef568efb826ad5a6d6702c64462dd5b2c9f80ffec5806cf93c20d2b4ce
Date: Sat, 28 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772295893
