Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDC9310777
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776925054; cv=none; b=hulYjcJsBB86zXS5Ne/W2xqC+zAiD6cfP1bfRwYeslTTQIg3tepZa9hsWV13j32mPU3LlSUCC178cQVEOPsnnR45pKu0KTN/lofhhetiKBlIeU/zDXwrTiIZncAY8FkJmmQ3ptQwEkSi+GntKKKAnEsrbHbtdfkmb9Ukmj9NH1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776925054; c=relaxed/simple;
	bh=B5dv1QjJMrhGCOIVF0lWJdxpb9mSxHpL278cBvOPU1Q=;
	h=To:Subject:From:Message-Id:Date; b=ajsU4wXMMw14QfqUUu2ALDC9WIyMmOOVoXWv1PhD4YpuN+o9b4nar0m5Qn69seSUzBWKws9AnXq5UfE9xxz2XIT7OQQBfJMwOwzh6Jn/kk1bqNqH2R0h+gNfYFN1lj8YR6l5JuqpYZazax8ZyKMq9zQauq7djdIkO0cPeCq7LYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNiZHkPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNiZHkPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D78C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776925053;
	bh=B5dv1QjJMrhGCOIVF0lWJdxpb9mSxHpL278cBvOPU1Q=;
	h=To:Subject:From:Date:From;
	b=iNiZHkPSZgGKMH1iAqaxs6MNLjFQxAZA8NgIDTXeId89u7lu1osIldlIkYQQhE3RI
	 RojCF5n+MWU17u/OBgNz3vftLkDsDJZcvaz+ZBdz9AwpewPw5FuSqkYrQIqLLA3tWy
	 wPhotBFA4NVTF37VJVAK8L0yXdW8YNEfDsIYgRO363Gg8AhK+othh8IHOBR5FvPshZ
	 7rWoTg0GIy/Q2YG8sJnAKVpuMOcyugqyW+94fyP8Gf6Cje/zJiJQ+Pa9XkPK1/PoAt
	 H67DooH/b8mv93cAiUW3Uc78LI1L0QlfNVf1Amw3625rcsreFcS2fQB4plVBipPYT2
	 G1l5t4coyc/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD81FAD41B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692505368.14348.7039546697514832241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff3c1c8a2574c28d1f43ceee1caf421c05f4de65b6843e5c9462dc5c54a3d22
Date: Thu, 23 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776925053
