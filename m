Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF412EC54A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758716394; cv=none; b=s4sLkDCC6rgIgwQheVqnnBiOyn2Be+15Bun0YgGL7faq5h6k2Il/OfZc/F4de/0pNh/HIYbEI3hDPr/Qt4Ya5WvRbpJ524t84/VxpT6nNymqk8Tc9sqUrhn7P+fNLNat0v5RmEma9EVfsoDyneirGZ6bTjrsLUj1yRJehXJjYUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758716394; c=relaxed/simple;
	bh=0GkXGaT4vL3R5T9e0KMIAV/43eI8aeIIKo31QOgX/6U=;
	h=To:Subject:From:Message-Id:Date; b=m0R//u6hUi/81sfJUgpCoTm9oP8/ZMQGo+31uBli1donlmRohAwX3Zdx24u+1EBNxZJYVLiQGQEMLRu6YmDgkXE/pxdAVXN5v5J38uw0mubruJdbFUthjJbIcVE5wkvqtFVhXwBi73nvuKQhEOKYUHAyOhm/GlJt1rsij0aRh6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyKBAMk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyKBAMk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF28C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758716393;
	bh=0GkXGaT4vL3R5T9e0KMIAV/43eI8aeIIKo31QOgX/6U=;
	h=To:Subject:From:Date:From;
	b=LyKBAMk56IJMLgCI3zcfNkTqqNXCvF2V3DwVnsWi7ogf4x7hWKrgFBLC3aQFAebjr
	 bdLCNJlqRaV7OYp/fsO1egjvlK6Y8woYYfNeNWhxrWz7bxzWcD2a6J0SIuiRwi2iab
	 EUdSVtr7gcIecvfNImP7GBbh9ufeVGrl5kn2xCxoiA4vrxHCBmd6vqSdYnRnuP5zQb
	 5rAWDol0oAIHaoOyMQp6EH3Z0i6XaK5s84+YGshkhBDGS3HxM8HfbTHC9B3+0lMinL
	 tiDR7WqkgMmEKNJ6YJzHIE0rbNIU7wkumsSP6qHIsb6M1FvXSY9fcHfgYJSY2Xw/VN
	 LBfZlgcr4xQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F7CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871639357.18299.7631725480093348636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a37c578e0c19b67ef06665099ddd9e762017f6062cabbc9462626f6225360a
Date: Wed, 24 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758716393
