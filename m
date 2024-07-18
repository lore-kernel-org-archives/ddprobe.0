Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28291144D23
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721318154; cv=none; b=Shex39tIKrsAQAS0yHo7hMjmooHbLfALwNHuxAXQIDbZWPtROyzO28rL1W6bSvjdWoYXGOh1HvQQCBnUp660y+psnl+l0SyDcwvjSIeH1hQqI+ngCGoCXnAd3p1u+kD861iqTN7rhRrdjYVqXfL9N2v50qNvKxMr1onzRXlu7fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721318154; c=relaxed/simple;
	bh=a03oU9YnmsTOf0eQppKnfyZzMhHbGs5wNJfnwsVxGK0=;
	h=To:Subject:From:Message-Id:Date; b=DBFmNPbJPcJQOCzqA+Sy4wJpTtszv+nqMcaoYL5QYYnYg88OME9A5J5zORPYkdeElEcf44f3BQidXYTlCOsboWLTyk1Ntp7o0xatrqcsr6W6akG4fWtIdRb0R34R3W0ABHNERcMX85tYg3VXe9XyDSnJKCTYaVGtQd4SuIeOsAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeWteO83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeWteO83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB3FC4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721318153;
	bh=a03oU9YnmsTOf0eQppKnfyZzMhHbGs5wNJfnwsVxGK0=;
	h=To:Subject:From:Date:From;
	b=SeWteO83RNVufeoS7jkhhqsFMag4nvokkfhvKepzHAedXtVWSvD09Klb73BxADtVG
	 StMuAimHijHBfKrIqSHLo/mI0ynajGBvl2utNL3vCoACfUlPOgk1VtSC1ENFrXnNf0
	 eY6FWf8haBJpbPunfNy9hB7cKIhMOPVJSvCpzRRujItUO3UGG5W4BShOIfOnZI6NcE
	 /psRPs/bHNbbfaEXNjDPXbu5FNLQALZ40D1pUXLXmNfPqo9Odi84X0pPSulvgTmHO9
	 ByVvrm9FxmrbuCxLEOQGrpt8EYSfjYt5vGBYYEs/ahg7B1jYdaGxsfw0sUA8ZLbQtL
	 ibjteKwaGhflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CFFC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131815360.17070.13265533709238973147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac1efe6cf29d8cc1a73d10af223fa8cf51ed3c2fd7eee244ad4da342465d053
Date: Thu, 18 Jul 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721318153
