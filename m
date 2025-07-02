Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7B62620D5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751458194; cv=none; b=EKBbV7dpdUeA5mltoAkzd6HTGnygBny2uZKbsTf37OTd7aeCOnfB8ZVvaqQMKcp1ZUqllU4969EacbqbAyMqpt5v8jlpKV5iRxVehOHQ6wV/feGBzyMtrhLHk8is0Z4IYICRDkoJdJ6K0RrDoaTIQvLMLETzh4SvHqlZrkMRh8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751458194; c=relaxed/simple;
	bh=DX3PHSRmeXsRyNjbZvKUl6mXfVbL7rnUGmyr+h+KlpU=;
	h=To:Subject:From:Message-Id:Date; b=lcKusARVfH1OGAn5KVm21oH3QFIyT+QivfEtt9/UYHIck9Wqf2Fe1diWdIoCbXsqyVI2hYVsAJqZ29kxELGu9NLZBhS47fNdsVGWTZl5XrAe+UQIDH2sKbeT8fsAB8hzANvCvrruC23/o+glgGlMrmnYRTyfSDPctsbv1zRUYXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBM0U50r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBM0U50r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CED8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751458193;
	bh=DX3PHSRmeXsRyNjbZvKUl6mXfVbL7rnUGmyr+h+KlpU=;
	h=To:Subject:From:Date:From;
	b=XBM0U50rCyvl7+CLqm2lwGSzJLjQj/he1MCArRrvXoKJWCnqUbc/TtVuH+DbPItoN
	 bxSq3TvBKEj/F0d5nN38nhNtn+KM5u5dI1uuYUizYRPtbvkcyakv4c2I5fadVThUV2
	 gtriAb+UEQpSsMnjeAogpsqY8vCKgjWDarwOpL+R/OBJq7GOY3b8DcH46pV/3nDwJC
	 W8wV9zEQsTjogMsGl1XTXOkwgdO31hYJYTBJ+SJsjFX1KQbSYTe3Za/tS9HdSqrsa4
	 ach0WBcCp01rckBRRqE1l/PKTroHGhKzqFY2RcQbTCTvnYn1m/bvvNZPqwdKlBOpaD
	 qjo+Kkajj+b8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA79C8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145819357.11621.9850425157324690711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181a68d07a481600ccc41a14cc06c6a6aca33f57ef1f8243d6acbc003ef7a82f
Date: Wed, 02 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751458193
