Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F9BF51B
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712603296; cv=none; b=hUQNHP9bhOa7xFF2zdF/8EBhXWl5t2YG+PTUH8QggA9uJNaO5Z+z/bMV4biRXs6vTQdAeM+D9KNVWLQGO52/8q1/pUSv0aXh+T2PN/3GPB93BZpwIk1rbFBYy+q1OhhON/iWh8zejvgmNUhNiK+VQN8kJ2SGy7qtSBlBWm06lUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712603296; c=relaxed/simple;
	bh=ck5TsJwMvjoCxcudwLHlhBA3bh80riaq2XeixUo6umQ=;
	h=To:Subject:From:Message-Id:Date; b=qmXJbegz1Y8JKAz8Y5CrGhLGO+5COCecpeUk2eScHgCWmjfreBr8zQ1zbNTuLbizS9PZZhFvBr1jToCndwmLBpeuPle0E1SQqwAQvQ4UXli5U/Yi7cMNi9CE3+TbhSIU/j3lrEmvEEcoVR0FUEBpw8Rp54uEPSMiD/0ViCtTaSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHfawEZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHfawEZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F1BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712603296;
	bh=ck5TsJwMvjoCxcudwLHlhBA3bh80riaq2XeixUo6umQ=;
	h=To:Subject:From:Date:From;
	b=rHfawEZwgYVQciJa9Qv2NDUKvqkxOgwQbr5cd3YKs9+2DpGBcLf32nUGFiMIIwSsh
	 HNrV11z5bL3qfYfd8+4CgEtqEgiHV+WBHmhjJf3uH2E39wYD5/kQyalFoSQ26HEBZi
	 bGKmvr0bLvfW3jOMtP2nirNGYK3cLHiCsbfEDitVUvZUgyOfW7whMZRKVuk0QjZbVX
	 U9+mnMfA+CLl1X19Lgnd8y/sqm6yPpGCuCu9zsYH4+ACjKj99Faq69AxdnQjnEt3GW
	 wZeSwW5RWrqMt5Rf2gSA7AlR5GElilhW1KNJtF2x1FUXf6jOdhwavQ/uPd+aPS5PHs
	 /Kl6GbXBmJ55A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E5FC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171260329646.1802.8397923708441722548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074331af9fe3c36ad19f1dcc6878fcf2f12b50facb3c6bfd5c58dbd8e6fc5cc7
Date: Mon, 08 Apr 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712603296
