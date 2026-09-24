Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3BDF4A3D24
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790280034; cv=none; b=pqayl5S2RyUrxM2KrSYrODh36g+DKzuQaxZLtIIRnGMXMpLdKPN1VQWcVxo6xvz6kZqM7MvoYz5JgISpTmYkeHLAGinA7oN6wYLKnlDznITHinrGAo7MAWOISnlVQVYr7Ebizpm+vjP/L2GIbHISD0TB5THdGa65Sui4dwd9ROk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790280034; c=relaxed/simple;
	bh=+JWd8vvI8QrNN7Bdf8HSe70fEgwTkWRAzYFX3t85qNc=;
	h=To:Subject:From:Message-Id:Date; b=pFMXoEQd3m6H9j9soiTjOYEmUnkNpgsIW6QNS4j9RViPw8dp7V/HemRWqRkZKXUlFeVeHqn9I1DTrYMpduAAbKtWN9aXq0qoSLAVgON+4z7Xo03KLdilI7qdEohzvlpVIf+K4Uf3i7BeVVN9K7ko925iXjhY3cFkGYFkOCUkY4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M++khkf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M++khkf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CE5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790280033;
	bh=+JWd8vvI8QrNN7Bdf8HSe70fEgwTkWRAzYFX3t85qNc=;
	h=To:Subject:From:Date:From;
	b=M++khkf+do2NL7A3F5zPJ9aBGIfc2yQeNKpyFZ9yV+7whFotvgWVZEj2zQzFYCirk
	 v+F1KVkxZZWh2zW4Mt/B2qaWxQriGvHt2hoCoSNrfxtuzO2QsqspozQ6CzRRG6IQ1R
	 pS2iM/Zwm+xVD2Cd4GCFM7WJ2ZF+pykYwv1N+44Wh6RJrv2wHHEMxCMZ8m5vntk9Tz
	 SVCMN5e4nGGu7rjI+9FNuWPzMC2fuNHNpjOsI8yP8OFF8XGJRHOtO8vcubcQsyjFZs
	 F4UV+gzH9sT//8OwHgE6fB5+BBJYkmD/g0Co7PgE2xT1y6Qu2/GSzDSOjr0tsKWKFH
	 JKhS+dR7G9wOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DE4C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028003371.32215.15350244743044222452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2b322b821e387a7fe9720da8c4feae92860ba0d81954f5c770b9476bf797a4
Date: Thu, 24 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790280033
