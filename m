Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CE5364E8C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767981834; cv=none; b=oHRvkAXa3wup5CjX0H8/3qC4JcN3hxPt7c9OXTpJv7QhW51MShJvjcliiKVEdilBImLOZtRZWN3k7aOaYv6R0qD+I6k9az9yEvplhlf4wMrqOdBPjLqK5Kv2ZoJN8Aj646vPNc514I0A9nvi4fPCAJLUWcb4zNn1GtKO21oWlJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767981834; c=relaxed/simple;
	bh=Qwmc0K4TBrfLI0iM2K5dl/XbKoDNXDtdI0cvjejhwyw=;
	h=To:Subject:From:Message-Id:Date; b=E8rNodr2xOg8op0tHomyb9lPwApe4ghI7gPddSTdTNSPETUHqEIUB7P4zcazjhH4Gln3mpDznC3T3oMnffwq1tDm1jyOs8DtteoEIhGcT+YjOpqi8QifHHl5wc9supdlLR/8M/MSRDKMkrSsE9/0M7Rdrh+KpBl84/6RJ2BM3Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOrqbmKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOrqbmKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B18C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767981833;
	bh=Qwmc0K4TBrfLI0iM2K5dl/XbKoDNXDtdI0cvjejhwyw=;
	h=To:Subject:From:Date:From;
	b=cOrqbmKDqD9Y7YnXXZYAMoI5Z3YF8BmTsjI3nnDzi4FirVyiGirlfv4AhuOSvbYSD
	 OgfECabUon0OdC3PwfLyudFVMYH1oTVMC0gAoeofhjjLdkDpdPcVv46Xb6VlyE5VXy
	 LCAlJjyHUavKjHksBpjHEEzm5lvKlBY4EYa7qWPsstmHWGSmiquFiA0skz9M753tps
	 c+LAjTeJdsNhy/l0tUX6t819cBVBvjWnY8akAAlla0I1ou19oY3ohjcXUJ76mO5vJK
	 AOkAFGW4GR+QXQvYIi5WjSrqKT9V0OF9WG6B+4axXZdG/AdU7kGlEZ+jOcFlMi87f7
	 NGH96rN0utQUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9396CD26D7B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798183359.13308.6790442130256757889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cbe55a55ad6559e30d119c13f176a0f009967217528787d1c61a1e32d1d635
Date: Fri, 09 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767981833
