Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113D12DCF6C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751477994; cv=none; b=t3arOkpR1v76wPAUxuBUCQm9TTTuNRJwRYJGATCAIcIX2246r7OV94fQheWYcRv28jZvxvrCpBABbb4LY4a5kXWJpywfQiW/c8sWOQw6SdWJ1G/Gb5fyneSAd+8Zq6E29ApIpou5axFcQMR3zRuIPoNvXRr0WEF5UL8nGZfXCc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751477994; c=relaxed/simple;
	bh=sJPYxAkGziDS6wZLGrJW3aqqlyfN2yJGwPsp61QW8AQ=;
	h=To:Subject:From:Message-Id:Date; b=MjRd2BlgZ5uzWcqKLHU3fghKK3Uwonu/Q7/Wzl54YqozAJ/9jGV7ptTaE7Y9/Nsp5p3JaWwR7TqzuEBAAvpWZGdtRYHUEpB26lUeJWZmIeTbb6hUtIUzLGRvfXPa7ZEvaD4n0taFqwkwMz9waZnk1shzwfjzzdjXJRcDtri1QD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKjY0lkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKjY0lkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFD4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751477993;
	bh=sJPYxAkGziDS6wZLGrJW3aqqlyfN2yJGwPsp61QW8AQ=;
	h=To:Subject:From:Date:From;
	b=PKjY0lkNBpb/l/Yakvncz19xuLqEFwrSxbHzTK8jv2Owipr6wtMyaxvQ2gaqzvFmP
	 OISHrXOI7CYmKXFG+jtdRgDB9cWfJ2rHNSEUzZafkOSjiNI7JZNb3Cyd7qQbUZoVlz
	 qBQf098kvZHa3j3Qsa8M1ceF6xiEqXlRqcw1tBdRR2WBJ7qk2ju+yEb+ByUdJPzkre
	 bDZR8boBE7omtkVMXTzmKLgqpH4BJrh7PL+kZfX+aBBNaUkzRynGRQme5SiM06H5K7
	 fB0D0Q5JnbYxOsGPR2pCvaeOjL8YqBzcHqOr/8A63tCu5KqSB78aplvirs6SfQbeOs
	 GOHGBQYaQ9O7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E9C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147799358.2691.12853259335889230524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfedc5eeec736ea587987f0101b0638f67873585a239963ff78c0c6e000b4faa
Date: Wed, 02 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751477993
