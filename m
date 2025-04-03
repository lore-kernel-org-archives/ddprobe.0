Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C119F13B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743715794; cv=none; b=uyiSvlhV4gJ3vYyGcn69tfsmklLTqYx0PnjhUQHn09WQhI//gpMe4IohhndphqKtxMMn1ZY5qe3SDxcXpJPCMId7bXFkiFS9YcmDvNwkbGipXqAhSD/Jjvt6RZ7ZqszgDZrh94JoPquMK/j2j9Jzo8LPo1SN3i3h3OrVk3vAvPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743715794; c=relaxed/simple;
	bh=oPA4rc/v/FmVEUIJWrs81HCYXAFo9yr9Vb8Y5c0GyCE=;
	h=To:Subject:From:Message-Id:Date; b=fxiZywUtSQXqOfE9fdg/k82nYvCL+QrAOTq/ddfiHEngMz3tfyia3QO+Yl9g/sbA2EI+uOerfkYjGstNwG6PmGKc2RpR9DV0byykZ/UGRZ+GCLtetl2YvSdjcLVwkC7T+vfhFx79qleN7Y1znOvWM5Yn5lSEImc+fwXyqScn5Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWGTVAEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWGTVAEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C7FC4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743715793;
	bh=oPA4rc/v/FmVEUIJWrs81HCYXAFo9yr9Vb8Y5c0GyCE=;
	h=To:Subject:From:Date:From;
	b=fWGTVAEMxv/ExZs5UREMjNF8iNVzvFBGxlT2bpIyNHqCUCSkzyjGRXxhvBWXzYGQx
	 a4tmnoT85l24QUf8jFF4yVEZA4iK94eo8hIP04PewCFUBirM53T2khpUE5P+LX08qu
	 zwTdMGZs9JGNDm0Q/oE/LjU03ulZ8TRZdjX6/sxM06jDA3gc8nfBZhODWUJE0g518z
	 Gdn/wPZuhJPI9KB90OOjHlW7TAfV5o8AdWrHmVFFzVVEieBGcgTvYoEzd2sZEQlsHd
	 2uDYH4a1Rxpqol8CGXftNniM9tlZwaepyyr6f1onOd7/EWbtW6TM6nW/jsd9fB/U4A
	 Nnipj2E4qw+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C4C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371579369.6733.17477224049422564452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52246fa9138e45aeadec0a87e814c5d94bb6c1a57f84a8fc8f24dcaac788b238
Date: Thu, 03 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743715793
