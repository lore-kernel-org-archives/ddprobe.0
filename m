Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2360F276057
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757015394; cv=none; b=K2GTw8mKAdnPfkke8HpmGBhIVBuxtq1zSAHA/JP6MM1RLoXr0ddKjyQnw5dgBPY3OAX/6ISrZdnjIpJz+WCoSgrd2QD3Rq+Hwe9Xcn542pn/sp9MQPpzK5G1oIaH0PSzuxzXRHMv2zMngpo0ozHsa2PIMzVpTYcI9qhzESVAHXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757015394; c=relaxed/simple;
	bh=8p83Ua4hU7D5ksnMwZi1KJ2Suf4ICfneD70wouQF5qw=;
	h=To:Subject:From:Message-Id:Date; b=QPhOqQGgH2fHcapiH9qMEizu10NHJ8ubTi/FB9gwavuwA4wbjW2e5XIBULcLyijwIJFZL26uGvIKWeKEAMWEP6Xufu03ZxxHGz+vqM/mkbDz+wz0UQBVRT0EX1lDDM0MvNtNt1NUJPCEIFIht/NDFhZG84n0DusneQh28hLMeNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ns7+N9C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ns7+N9C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6939C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757015393;
	bh=8p83Ua4hU7D5ksnMwZi1KJ2Suf4ICfneD70wouQF5qw=;
	h=To:Subject:From:Date:From;
	b=Ns7+N9C9VnrKemBdoOY5suP31AGbLNxX8NrmDO8glVdLVLLBD5SqxGgAjopI/w3aQ
	 ikWD61z8Jy9ZiNadPdDokn8ws3xcALeibe5nLERMqXUnVO10BBEq2Itywpmy2aFJr+
	 NiQNGVCyAroNXjCk3vUNc7aITDvwO5MSizsf7Of4TQIYFu3FbiB6ekEH+KWpt6zy47
	 AjZpRKTPIVealhvNW2C2TfIQDs73A71uHvlDZcfxyEcoQ5xvJx5rbWufia57PMV8LL
	 1zKIxSyewNUaajEda2wNnsBRCiD+ju/7oGnTJZcw/J4lSpGwyTIVQT5xqDY/DbA7YG
	 0UxPv39pp6PFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F61CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701539358.5634.14131515032783156918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf625be13ea82025f20309375a3a210bdb659fadb5cbc89f35f038223cae5c7
Date: Thu, 04 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757015393
