Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D8F15E88
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717401323; cv=none; b=sc02mzBDWIrR2tdnEOfUYwnPzOAmdpKxsCwHXdKY36TEZqDmTW4C4You6ABoCF1aZFvvAIe4xAo+JC6fNftKPvzKt4NJCEahUGpeBPZk7Swn/ggvObXPSAUxpoKQMN9aGtkvkv03q05S2InWFg40eM5gDMh5cvdDoMG76znhzEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717401323; c=relaxed/simple;
	bh=V3r0ysPurB31t8kyhf/ae2Rt3MkDZZttrrhMtB+TIzo=;
	h=To:Subject:From:Message-Id:Date; b=DDtFxLVoGCvYaZGKYeskZfg6jYSqc6oQGMWWxfZ6MDGgtmwuPWdV6xoav8Wd7guRZdkL4D1OSv2KqXoSVE1EzJ0xtXtYTDSEBlOIpSYM4L7l6C66Y90UkrynWvCF0OLAvC4wyG0qisatkcJ7JEQvvdnyztd5E6tNj2/cFE0HDJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXs54XNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXs54XNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC5C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717401322;
	bh=V3r0ysPurB31t8kyhf/ae2Rt3MkDZZttrrhMtB+TIzo=;
	h=To:Subject:From:Date:From;
	b=tXs54XNij6SKQAf+P0EhbEj3VHIIe4lwyB3ayLYXsBbQnw7HZct1YZ48d20dbOSDP
	 ejNW8FbH1t+8BndmNbMaY3sas34knohob3OufymzINik21FvF57+A855Ach3MjRgrq
	 4EC1XNCZVVFOfSoGqaw/rGFe7uqkN13ZxA7o5/b4qr1h3tECuy1WmMztZ8xhecgRBc
	 h+WIBm0qNeR/BkX+/pRWdwBUOXrr74WkB8bu5bRZVEEbiAjtfBcrPJrBS/04pIvF2R
	 P+ZoLMYQfm2LspKLG79inSgQ5YikxBKseaejeGYUpT/t7mXZqM46ut+eYhinZu4LRQ
	 p3iJZeeUrbBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2F6C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740132275.5721.5726633743899484901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a95f155146404a525853b5205032c70486c9c2b48cf5159fb6dd41d16688f34
Date: Mon, 03 Jun 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717401322
