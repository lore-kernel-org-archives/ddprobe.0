Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8183E47B
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758503394; cv=none; b=i/xDA7Bzpsak8eyHnt8F4EaqgDoYkncXeThgrA/kcuf24sZL4FODIgb9vRRf6Wo53D7QOax08E35XjmXVrWu7WT7WUfdDmFpJh/UcXi44uwQLrL437g6HFscHLnQ+yy3V7/VlYPgEM9e4xYWXkdpK1Is9KXdFaXrWlG1MBl3ftk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758503394; c=relaxed/simple;
	bh=ENPQV1atKjVMotacVexskJxif2LV4HPK8+Ptx0JBAIs=;
	h=To:Subject:From:Message-Id:Date; b=qglE+IO8opHLinElC+3a9ge4Schz6Gmyb8NpxblqkDQG+mzKsXtW2H7nTAPp6ePuqpe6TVST0LwIrYZvZFLu8/Q7sQgweXhXtzmc4NjZhVGnmwIFASisti2UYkNUxS8KzHhsMmoPLrtWUNuPKmnbOThZu5LV0gJsxTcs7yRM4hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrECHDWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrECHDWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB442C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758503393;
	bh=ENPQV1atKjVMotacVexskJxif2LV4HPK8+Ptx0JBAIs=;
	h=To:Subject:From:Date:From;
	b=TrECHDWjtvWrl0Xzsa7emLiO2vRZRES8QsSLrevHUzr+2d53X5c/6FeStAf2zAokG
	 tuU5M+rn57IE1E4LqWJAqiCK1OgSq9ER17NDNYsszfPC+nURT8WPfANYQkHFqSB9SX
	 N8/rZcw1X9YcKRH8QZjXF47qszpZu43gAHJBY/b+KSVijYnP1vuy0ESdBa4Z9LeCqQ
	 oifnVEQsqaj/xFiDFlTO7fyHFJUuiMBLpERwsmQsLtKNyLIVeBJu0ZqFW4FqEi/Eb+
	 iIG0EJo8Lit+zRGZS1HSs851I7c0mO6ZA4wEiXA0D+hH+UElpbrAgnsdjrTJhBiarA
	 O7KNCOw+wO/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC5CAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850339358.29794.11218927448876906490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b11ed1d5557f040d95700151bde613f4fc78f8fe7975e6c442822c91736cd52
Date: Mon, 22 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758503393
