Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70641360
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717114463; cv=none; b=QoenOa7uTQdkddIkthZJqavH3NyInETvYpHdW7cYos0zuJOwo50fBtMq1WGopiGeo9afdDwgl07XiwIGOnzk+mlzgVGO+CPKTfbVGa3KkUu7JtDh6EZpw1bFq8HrzJ9v3yYd/+y+khQdunJkGIElta+UROHy7jXFlZKSzG76OkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717114463; c=relaxed/simple;
	bh=nkwIx2FhR1enAuc/iE7twBFOh5HHuv8OGIteKElfqoc=;
	h=To:Subject:From:Message-Id:Date; b=ee1JAIeKALTALPWkwro1+eE64XURmjYWobHh37zE7ppnMsEAHagrgidAh14C/oVHyTPtplzrO6bncR8fKCBebUNVj6YyHVv+jL+Eca3eRNCrYzQDtFq8OMGJU4qdXhhs9DcS1fLeOErhD9dnVJAFeE7pQlhr7jyPrbEetTAEhWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0hjVu06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0hjVu06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5998C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717114462;
	bh=nkwIx2FhR1enAuc/iE7twBFOh5HHuv8OGIteKElfqoc=;
	h=To:Subject:From:Date:From;
	b=s0hjVu06pv9frDvOO5UuBiOx/0PCJXLdByLPB1+wb4RS05bmC7rNX3HvxBCqean42
	 7z0g79G6pxt+s5vmwco27B/vjY7CiNTeL0gqchd3Cg56uL1RVBYs5OR6ycbdeScgcD
	 S4FUeHjmVyHfgtrizG8JGTM/PmlpZXB2UrRu4QU1RVzw8/DDOMURuY0xZFb8n/Bja+
	 rll9pk95G8tjcNccSzhsTVKA1qp0GUX3ecTWvH6EXRkYim2zUTotVwfmIBHdaU11K9
	 P8YHzNjh7L7EazDtJpRPmavG8I7ZvPP9RIU56LW4WkyTdcdxnAv8QocDbd/A/e5iaD
	 i5YLDRq7xkrGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FDEC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711446280.31299.6143311393308629477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede2e816030825251fe23326e9bcb8ee9fd5c784a72d36c3aafced8a57a909d6
Date: Fri, 31 May 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717114462
