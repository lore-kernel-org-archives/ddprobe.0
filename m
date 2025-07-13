Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469BA19AD8B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752446394; cv=none; b=kR7OpsI2ZQI9HaI/0lYuhcAIkA9kVLgepNE6VYNIKYC97Iwg2Nq9uRfQtcBATXhkTOJNbX3eoQVksHP+I4RgLeVh/NTWgaVPkSqcHjrD0R9izH7VKEFKoRVZNExTBjm1rrPJ3HzEz1umkVb7A8jSmoekD8cT8/hbm66ZRKFACG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752446394; c=relaxed/simple;
	bh=aFnJ8hyQ3dBrXv0t82AEjORDbDBnFPbC/SMD9M2B108=;
	h=To:Subject:From:Message-Id:Date; b=uIPaFGTqsAP4URyrWtmQgED+IZfVRDfSf68nH3pb8zZZ48ra5iycaXJR8f6stolgzrOjoAUSmdYom0GWF4jvYPCn5qwmCZpqR8TE47j+2qlibBby/DQiOkO1d9w63QDrvDqJsO3SXRZuH2UI8PaGGCTL+Ipa4jQ1D7oJQEz7S/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2AKeZt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2AKeZt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0793C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752446393;
	bh=aFnJ8hyQ3dBrXv0t82AEjORDbDBnFPbC/SMD9M2B108=;
	h=To:Subject:From:Date:From;
	b=M2AKeZt8ILwNrXoQ6h/QBnEbsvdkNjg/3jklQhym47Jn+oLAXAiV7679uKXftMxAG
	 y/LVB4fwBGXdOqJf9SAvJaqBwJ1RQKlqDRYswXsaDp5zowBjePMCsFXEv3O/1dEtQ2
	 6Jhsi9cliXjhy/ycRCtCitcyUZU27GlM9kgQWxIeOyFB9Z5I8vZYoOKIKahNBb0/iO
	 aP1gcxOg17ROD8j8xYtVAf98s7uVqgUZBSwWOIF0tNCRdlja+qVAPu5jiktROsxtnz
	 3LgHEry1A98BGU99FTGZiWRNbA8tLgHHJ5XdbI8znwUnOlm5xoEH+EGFfzAEI1UwfH
	 yHqSZBAi5y+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DAC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244639357.7042.8540809931904556884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7b642ee8bb1a4328b12b6c4dc43d073590a0a49f6674440ff3d0a5c82329b0
Date: Sun, 13 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752446393
