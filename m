Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF4538A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722098754; cv=none; b=ALhhpb1IPBh9H3acvA+yMfPSdjnLs7/0NXdurGP1Tnqamn2tvcJKstPajrT7f5gmBjSAGz2aoF5849NZHS2GMvq6TFO4/XL4CAfeumi3A4C+Yqw80MXKv2UOvkb918lMl+HlO5XLwped5s6uPKT7IcRCG+l3w+tukBB02lA1L50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722098754; c=relaxed/simple;
	bh=tNnFqXqIyr7AIMODNO7kJQj2jyTHo7tPav79XFR54Lg=;
	h=To:Subject:From:Message-Id:Date; b=IOgqaEXEPYf20oeidxZWZYw+Pf0WyCEVGf0y7oWao7OYo40/h9yXLQom8EqfO5SNoE0h7Yo0Mz2iQ83MJMF2IKtrEYTbojKbwFcwv/19PCA7ocSi7yi6+omyiifhj31i9WbiP2RfJuXEM+uIaxUTm4jaLL8nEowTtFJsOLL2Nx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvnKp9HF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvnKp9HF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA890C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722098753;
	bh=tNnFqXqIyr7AIMODNO7kJQj2jyTHo7tPav79XFR54Lg=;
	h=To:Subject:From:Date:From;
	b=rvnKp9HF15ggmGW++rcr+SCkbDkiGpFFlNdiXR5MXXuviU9/CO/hVgKKoYFoo0jk0
	 8C6OjjsToQAg4QozmvVDtoEIXktVOmdQpnOGfhTlBr5lLwD7fjchx1n0UGXEG23UzM
	 eUKVC19Gv0TCtCdhfnHvaZw+qhM4+SV3wZ7HcMFjWuJ39NPvMhcyNY9XhKFeZqd2bK
	 L8SObV6u5gGLMvumrtQpy3EiGaT/UtQaKtRDgNZHAW/mYjz4GzYkWXWMyZSlLJW+cs
	 nZoL0NE+qdsjTAqnH+9fSKprcJvW1rLcmb7EFurmD1evpM9SNkLUvRAujdYF0aV675
	 o1IXAcEfpwcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D8EC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209875360.3173.13735755182376592498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a39a5efd25abb048d51e85c79a41db298ac1fa252c3964d66c4883b7803085
Date: Sat, 27 Jul 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722098753
