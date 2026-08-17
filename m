Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4607A30C159
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786931434; cv=none; b=h6zB6RuY9hTpyh9ELX+33bZdDxZnYETKxaoc3Znz0N97SZ1OxxIsN5NKAY6hz8ZuKQ4Hu0AQPYXJVTUPHWzlzqy58D7O0RTz0KjtPVvAIYF/2teRobuHy6fRPv6jvnS3VU38qvgWojSlKuVZZcC+b+jDIarMeNdlP+G8LGnjFXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786931434; c=relaxed/simple;
	bh=j1sOyfrfnPX6O7CcZ6k7nszfWPb6AHNBFxifw4y9xXk=;
	h=To:Subject:From:Message-Id:Date; b=oaAbMUlQ22WERvvktrKbL5kdHd6nawWxAkAUtceSqqQN27HLjYsU1TKpZ9dH7SFZyRYL4nLz3SWl7k5wLTucl9vTG/7dPl6PkT2IzgBFf7GSIOs3IGrx973WJQGIANk5q494TR4jotG/GejLq9afu5qLA8l1SXwn4a4iP68GVDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJsFVTP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJsFVTP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62ECC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786931433;
	bh=j1sOyfrfnPX6O7CcZ6k7nszfWPb6AHNBFxifw4y9xXk=;
	h=To:Subject:From:Date:From;
	b=mJsFVTP6bbdyNz8tKzNGx30y9b1kLPgQFKXkTVbdVc7Xl2LttVwzKA9MBBZoqHsAZ
	 B/M8xIUBm08Pnh8nYUnvGJUkW4oPC3lMwG3xj6Hvh0TNrscUCHTuko0Y9xaNNpNhQK
	 QtY+7VeK3sOJntGtIeqC/+bDhSVtd13UCDfauxCX4n4MN9Cvk1elOLrCz9tBfPGx5Y
	 asTcRT3sujQwOQ7DieZA6joHsSrAllp57VvXaqlCo/3Az3Gn5A0RCW/P7R8I5gFfs0
	 /CsyLRN7LhGFdasAK48dt0um64xxur4Vt8U1HazhKnbKSO53mxNZXUdcNqyLK0LtK4
	 Y2KfmRnupth6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE435C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178693143370.24035.15731144980060464584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5435bf3eb06bf829f48ab7dfec1125148a3c860c58794ee09e5d1460fdaaaa
Date: Mon, 17 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786931433
