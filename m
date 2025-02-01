Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A14F1C1F1F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738427154; cv=none; b=oRuG393QdAUepP0xjojvxPdaOjkDTnFsE44WLw3mYBtLMJjtPUFPtwStc0wB117QKpgQVOVSO2CZrJzu/h2F5yhXNy1o5kL5pUw8tzoiBv3AxdXSs2t11NGFR1XBLnsc+yBKOJxMVipU1VZBc66CczU4GHzDDOkpOyRdYuGR2M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738427154; c=relaxed/simple;
	bh=2twiDqXLwVYxlIsOa5guC0fPIjMpsXsjyLCc6LC0pls=;
	h=To:Subject:From:Message-Id:Date; b=UGkaIWYnFEKN3ADR3yoveQhoIMBOeqXALT7CIPwa4+HVS36nuUVziOoyFBm3tiBCptVGTTMbAb2HI1baGQzvO7CL7f7DFzw3QlF3piOadjAmkEHM4inSaH4eRra/QpBwCDoMlgbEq+RpvC6P6DdI5AVhoWBpl6i0p2qxY0vpUZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/8HGFxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/8HGFxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E1AC4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738427153;
	bh=2twiDqXLwVYxlIsOa5guC0fPIjMpsXsjyLCc6LC0pls=;
	h=To:Subject:From:Date:From;
	b=g/8HGFxSBeHBqHFUmfuMxOvDWjHOPH/aql2fzP3VZZBplcwmZ3O8r9w2DRFhpjlcI
	 BlvILbjkup84wiUybBII1h4v4R0LfW0HjSNR07aqI1+KiN99QwRXvgRTQ1XTuPxqg7
	 xtp3LAZdKoTqrRqsSMZC4v4lkqItQF/EBqDGtehJUd652u5uLYxl34wG+N3LBLtmHg
	 OOvk4OOB3t2D6ekCxwcazjdTwmVZRrsMDW8xIX3X5/PKVDTcwlFPBp2qKyVa9H4KVG
	 xRF8HI0A6HUOx4jwBbTN+W/CcmCXZ5RT/rR7vaiVXWw2ZZ2muTsdGh/3aWKEDTsSqv
	 M9I4uK+PTTn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1CDC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842715362.21994.5640424576744775134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0a832cf5306efcf46c8fb75dcdc3695df4a7cccb2c36eb4a1172d5778ff323
Date: Sat, 01 Feb 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738427153
