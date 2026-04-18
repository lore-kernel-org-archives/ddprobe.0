Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32A2288D5
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776497854; cv=none; b=GEOGVQZw+uNlVv0Cah/D9KtUKJWKUjCFtjKmFYd2KTtcDNdyyxcA+h5oiP+uooIslvKdAZDZSf9LCWCIdzIKDhrdlpGg9mNG0XSogpdwtAiSAstdgdkQPfApGW1gsKRjvJoOX+Zt940Thtuf6zUKo8VDtZCyMNhW5WUgM0lTZ3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776497854; c=relaxed/simple;
	bh=qtd3ALAKJB4QAXqYzzJubvRazDfUiBKS80LAytPdMWM=;
	h=To:Subject:From:Message-Id:Date; b=IRzGkzEwPi92HNM4wbsSo3o2hPXN6TUeJ3bdyDjonoW64MwolHs094zjY68ORXtQgc5sNTixEMVxbEpsReHsoKWWynUM1SO696zU3Mgt0R3KQj1bSkdMMTrZwatl62atZXuFFdGKh3FlTtvcYqA+OjzeKne1b3ejw9t8Ux4ipwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtIOl7te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtIOl7te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B828CC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776497853;
	bh=qtd3ALAKJB4QAXqYzzJubvRazDfUiBKS80LAytPdMWM=;
	h=To:Subject:From:Date:From;
	b=PtIOl7telFBvFz3y7f+gknlWfgqRee1vQm0Y24hkFeJNGMwVaQTlO3FEmhACnWqTH
	 gfmH076Ok2KJ6e2EQl7VoOgJGbBeOD3tl+iTw+rXGwDbXyt8niRX9Ue7qeVx6aXvS3
	 /jielahjcK1tbMy5DSz+KSRFVLgO6amrwgGNJ1/qlZWTI3sNgRhBj4hsjJgnaGaXuJ
	 pdcYHRi+5ipSiW3XQ/ChDR+PdTqdimG6TjPWoGcD8v9jBmq46blyE52/8xsNxxkOM/
	 LPAON7A9vLW9o5eT7lqKWj1QrhxdOr0/mq8iGP/zV0EJnuzkcCSfx1FTo85YmJiCln
	 RbZ0eMY5GIhyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9363F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649785368.15490.12017427012135365442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f76814e107a37015fb327d71a2c9bb84cf6589b00f5a9976a06889e4867e21
Date: Sat, 18 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776497853
