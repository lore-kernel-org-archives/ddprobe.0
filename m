Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B6121CA03
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766765634; cv=none; b=h9ioLjjFO/N6O/bakdswIVyg2DeX3kpxnDP3j6KqdO8Ddi5hBQpgq31YhWtAWhYFw9UaqM9pKb/9QA0RypImQQppchEHXbnOXh10tXzwQbVogcd/z6e4QRLabD5F5pUGd7jjCD8Hr7TtbYHCVxOepHGPySuWA6sMo3liF87UecY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766765634; c=relaxed/simple;
	bh=Wzxr+LrvobWh74+8rDQuUFKaGAzNEg8s4rBRxtmmWG4=;
	h=To:Subject:From:Message-Id:Date; b=CgQ+HkQlTzBXsaQ1oEc28NLskwsq6K2UHy7nTA4nohHCbHkGy5OUbyS1Fe20TnBFOaUwM6q9OkgVojHnUPfKTXdPB2GneTH9tEdGo3E95jwnQJwihX7k8tzV8jc/FBSsesilZeDqS/VKY++J1ceSrzOG5rthrboM2z2FQuiRBKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPlZHV7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPlZHV7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA0AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766765633;
	bh=Wzxr+LrvobWh74+8rDQuUFKaGAzNEg8s4rBRxtmmWG4=;
	h=To:Subject:From:Date:From;
	b=CPlZHV7V7VUZrcyn8WP/zsYLiUgE1lIgRAdinQUxS63Q6yMlae5K2yd4o8kVcFiVh
	 4JBb0e3EYlU041brQnEaz7jkkqUf3/FyvsE/Puyw3YDfuj1ECuWMcPJCmBhWCKgqmF
	 pw3Q48+ZB75xLAGm7DYWSViVPMUbhn6BZJYT6ADeRr7035Ojbw+uMNpgn/4FNcvXuL
	 opYnOkHVOroVeC6lJzsQ5Eeuk5CJFH1i8RXZKSI0BOWgAaSsIzn0v6fzYo6s8oxQ0S
	 +/rf6yMgKPYh5/P+3ZbNchuF7UCFAbwW71ho518hA6kYBpy/lqmv3ky8SWzRBWQ13D
	 9uDIEUS84V8ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA91E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676563362.9985.3714045631984776403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8149e24d165c47af346d9e3e58cfec3d24e039c689510df7f81d60752458998f
Date: Fri, 26 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766765633
