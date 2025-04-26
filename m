Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3DC6FC5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745685594; cv=none; b=Vf1nBTYU2a2I/7D2UTdF0ZrARFN9lPqpn2XB5NeNwrghmJtUwqYRrQo8Z46bLM9t82M1sMh8PdYyHrvbTP6J8RSmkYFpg9WYTMH9dE+uDbG/mD92GCl3luHMMiBsxoXz7/sCBp0CVbpyjm4Q/HOErqxlK8zWkeA5hQvjG2geyPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745685594; c=relaxed/simple;
	bh=8rU3uTMUKGoYKX65ru4aPnrsFtR1WDFMYuN/zQURoOg=;
	h=To:Subject:From:Message-Id:Date; b=EAd2c45kVJcf7Q/SpU5WmMm+qgHXePpoAbYRK5EuWqujMT5H7EIMjufzJMCZNvn+c1UZKtfxR47GNhO/EcgLrFOBYR1vfBN0CvDT11tduBMntVIJANOYGyjiM5TNvi/KjBEAoeQsAmE9T6hi2MbHOIMLDPutqVQPlrmLMkN4P+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsAjQt8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsAjQt8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B19C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745685593;
	bh=8rU3uTMUKGoYKX65ru4aPnrsFtR1WDFMYuN/zQURoOg=;
	h=To:Subject:From:Date:From;
	b=qsAjQt8sXu2Y1t4jXLF2/C+bBhyTBAZgWMM0C/MqjoLCcCpbAzvF8XDDUPA9Upgni
	 +f5yYXKYKFWMoFU4+kC80NlltXs0dTKVUzdatdjihvgRUVFlfOfd9UgH+f8TiLHMzr
	 TJ+NBqiVeH0mAoYP1ybDdFHmJm2doh/46aq11by4dXmedYZF5GeUej/kdspmoj6Seh
	 DEj3a5pGnIvi0O3rIqsWAqP3Wx7EyChNbQtvmbwVY8rIXxFZSHTwdCP/5ZZONpohJa
	 F2ZLhncacAExzbolI0y+/01oOitHjgUCFdcngFNh5iRUUn7xKnalmxExvqqAhXN0tk
	 oqfoEiRIg6fZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA30C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568559357.3177.13740588728027101588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836848bd0518ddd406c0c00a35fb3a195bb7c93e83e793d0c6673b2eb5a783f4
Date: Sat, 26 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745685593
