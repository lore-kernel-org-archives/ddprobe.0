Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBC113DDBD
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746268795; cv=none; b=kcOFyDoegeGGlr6J8lyvG/QgWNKZLC0IjY6CMTRavg79jswwvlphxZ79ktqteaxsDFs9VJ6aJHlFMUUjqBe4RKjoN+wLL/VxXEJ6HW02cj0p3V4woDqrbJtnru34DECzbxH783B4D/1p4TV/gOEW7WH2znzMRiQu9+St2pMZKw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746268795; c=relaxed/simple;
	bh=/cds/mnuH+ujPhijA66iSj1IpAw3IXlCM4ES88u/QLo=;
	h=To:Subject:From:Message-Id:Date; b=iMFliNFYmleTJ9jGOd9cf4BCt4nUCmdsGd8CJzjKQg/RjuytuRjRPif6XsrknKNppv2RUYYvw67uDCMf/D4wuGQRUK4C2ni6seHUqTsmznzWP7BzxRQWxuPEsWs11RPWit7VqOflU+hdfSMyoDovyQNooA9VHRLfpyjlflv9cuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phAm/95l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phAm/95l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746268794;
	bh=/cds/mnuH+ujPhijA66iSj1IpAw3IXlCM4ES88u/QLo=;
	h=To:Subject:From:Date:From;
	b=phAm/95lql8/EFDb8ZjrN4YSItWm6Wz9NJYyDEj/KkbnU+462gc6e54DGs6Qmk6oL
	 w3ZXyCcJw6dNbl6rVIx0mn7RdUfE6OeJxKfV9JUQZvIGAixyWqBg1bErzcLtXAuReG
	 yiSUL15GSn+etb88YIWmzEdqEbDoTm81EqXfz2VZEwaoZlmxyoV8dloOMiM9yUyAKN
	 VuJNNRbRlph3Y53ug3UsNYqM6BKBvsHEf9gG2N3pNDzfyu/AW1GIWzQCcZehQULBPH
	 u9LwjxXmS/db+cYfE8SWaH5SE33K2cbpFWS48699ser5ypgXGoQDsSMFIyX5Gq+VQF
	 ygbp6WqfAGp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93544C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626879357.19482.8332982422262283333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abc203964b048dc9944d412df91eec547424aef01ba90b322be3cbbbcbb7e21
Date: Sat, 03 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746268793
