Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8322D28E8
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717026863; cv=none; b=PcJmApgWzkSJOvEiWKRA6UXpvelI+MslpOaGQcwlIqAyUONjopwEP/IVSXK6pOMWLO4EijQIk+FVU0JcOCiqXvRunTNjF2erDlWjzr5pij9xWsHkDnVQXQ9IJ/MyLbc9Xhd8qp6rDvh5VaWgULOEZiSvv8P85IDDg/BaFPnfmqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717026863; c=relaxed/simple;
	bh=VM0oHkdcLF0qVdeJVFhwb9mZfCG1STePNx925Uzv2+8=;
	h=To:Subject:From:Message-Id:Date; b=iWogDZ7VE0JwXUZr3IzkCO9XVktyRkF7H7amro8hkDeOB2qe2WlLeWtWpt5tEeDztuFTVVANU7kfvaY4YT6t0VaQJuXXhqpNpHTGTSKItp/n0XnL8H0QrKyejYwgMIeYvNixHzs8IFkSA1m6uTn7RxCiU83UfRoILZuNpfwZ0Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEC6sU7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEC6sU7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80C9C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717026862;
	bh=VM0oHkdcLF0qVdeJVFhwb9mZfCG1STePNx925Uzv2+8=;
	h=To:Subject:From:Date:From;
	b=iEC6sU7yzV3Xg0I6VVZvalOLy7zPmbskIURSEmnkfKlRJaJ85oGJoL44/IVTZrdua
	 Jf2APN7BElsUgM94BjVcu8vmJDrGfRf9CukE/E+gP/bhuOi2cGfCdLJGco6cJ6FJ7i
	 D5YeRR8kpPgaUiFTwEWBo5FJ83M1D8NoMX3D6SqDwSXBRgbz5r/paly29sG59BWVAv
	 AQPS+fDu8kGIwBkoIvYB/g4ChQHS4iGAekfKPrVF7kP9z9vj07LBqP1aKZTT9nLZTc
	 vli4U11OpR3FX6mXuDJekT9256yv8/mydOp09ko0pTbSs6fu3Ddy5cTQXjFxKDzbGq
	 kAiV0zRJGaPJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E09C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702686281.13874.10042638649665797145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f2bd38cec237e3eee0ea02eeb0172a31f4b6a81aff0142ddb465c9d1c58d79
Date: Wed, 29 May 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717026862
