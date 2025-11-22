Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189762C0265
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763837514; cv=none; b=LHVXC9joOGNkQ3Ub33HDRfpq44LsUh4U+MS4Vd5IQCICq/bHjPejStFvZLKuNo7FpxBqqD86fSUzpLGP1qff4lCXxSS9Z9jcF5JA+uevKo+idH6QVjVh0qffQr/4QHtx1XkBgsZa73zNd+Et4ipXJGYjKdE41uI7l4UMcX3iLWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763837514; c=relaxed/simple;
	bh=N/cCqe8cpvXBynof0srGGEBRHQycWox14hyD1NEgWDM=;
	h=To:Subject:From:Message-Id:Date; b=Xt1bFQW/0F4+QDGQE7fhsqJwvCRXZuyv0VyhnfSIQ9ywlemHGbzt5ZmQb5QpX3BkuEV/UfZMoIsaawJ5HpKGQGK5UxVHqn24te7cPS4wotRI3Y9L5Pi7spVl5pl9swZPQv3IbdKPxtQnSRy1VazLOJRqny2skJLWR5RGG9hV/Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2+3wZum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2+3wZum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763837513;
	bh=N/cCqe8cpvXBynof0srGGEBRHQycWox14hyD1NEgWDM=;
	h=To:Subject:From:Date:From;
	b=c2+3wZumsgc5dSAbD0iAhny8YEbiLM2R/pYUnKTku5Sk5WTOxydP1IGpLj2gBl1ID
	 71sFKOntP+kr/rbsVe7QKQwS7fglGiYOJ6IBn1T4HxTLQs2km9YLvqqqkQAzKnpZr/
	 0FCvzNR2bvNlZu+JGC7NVbPIhH/5mqy7wrSEGu8m4/tB3nlGr0R6IYXYPH0GXfRWRk
	 Q4ItIewg8GwgNmAmorHF3+JE3TgwW14OCLMIuAqqcNuh4S9w/LHskir0CqortpcGCX
	 rHi87888PylyN52LTYKH2q+rfIwgYg25fv8huFnRRKkoe4QR5qu7ibF1JvrxhUKrVK
	 rvTY2OXTI7sRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FEACFC522
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383751358.13019.7505533772550007653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482680f61c630331e77b07d302aa001a133cad852443c6d9738c249b343a67b2
Date: Sat, 22 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763837513
