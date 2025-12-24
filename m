Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351B528682
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766619234; cv=none; b=lhnY2UK7OKMdgukkMOB0p2xZc7UhOi/rK/l6FmaKYmT2G4oPJ/GJBAJvQmnkgMb3VxSr0dLdFNdUWSbKdzlMeXXeyU4ahcqrRFBzEgwxkbDqC9JrTQFPCa2mSOMWY1GTjrlnFEU5JiRY8kXcZ4zUIYmxKS5LunM62nZHy/VP8ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766619234; c=relaxed/simple;
	bh=PeBh9e5LKdfB/ZZ0skyY7gPvy5uaenvD+7hCh/rJqd8=;
	h=To:Subject:From:Message-Id:Date; b=o4XTF8Abl54oDzDdVfa9l7jaYbLM8V6pl8RAXqO/BYx+ar+k6T4GTR0BkFMttKzhhwfTdOAQrCZjDjX9ssbO/cWLxclYm9pCQ3bZXN0Gk+7khkX9DwtswwLFCCcxvxTjtrT8NmvFl+Y6Foze75iMQW3TvcHQA69AXVXyhcCFZc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1u6+BNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1u6+BNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A451FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766619233;
	bh=PeBh9e5LKdfB/ZZ0skyY7gPvy5uaenvD+7hCh/rJqd8=;
	h=To:Subject:From:Date:From;
	b=L1u6+BNFOjfvwfniP0bGm/gruZgGHfcpx6ckTmWCl8gvA5h+XntMd9lnVwoNJzxzi
	 8ttT4njaVxoYsdwaT93JThGTNk0ipVWFVIOeliO9J30dr4DzO5lwBlo14RhmEpdnNV
	 znfpCm8e6+KXHFxXG5625rlmoQWJGQ9qkSMJffoV9UsfWzh6UNYkmKJ0jWpOu+mit4
	 gzVLrNpnbPKod4227kLsM221bsKYqlEuDamchXG8O7Y/UTmQYHelckpZPc3XJWRnNq
	 VP5lnab+ZBkRO6uDXmdeP8V2VOTzQ4FqdiUyZTruOlyq960BRYsCpZn4b+m3xuN0XR
	 1xvGcnuRW0U4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C48E78498
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661923357.25928.7231771356234244214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce17d0c6fee5578fa1fedb305d1032400aa73e942efee7f9da329652c10d80ea
Date: Wed, 24 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766619233
