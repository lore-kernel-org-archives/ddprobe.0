Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EFD1DF736
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762990194; cv=none; b=LugKsWyntdXS/w+5yo2Y9M7oHBqpri5jzgEWlYqSif+hQLXz9tZSiyvUz6XqmQVnLvtPiK9nap1IsVLrmPq/bmPIXvReBZX01hB/VVRSqFbxHXYfqpj6TYiWijjPIOjja/OZd960Srw87Y4kLsUSKbd2XlrgPyQbYAeY+J4rVXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762990194; c=relaxed/simple;
	bh=ipv9emmJwprIJtcqF9+gM4IDMAVXrQLRefUm92B9Rvk=;
	h=To:Subject:From:Message-Id:Date; b=lOWynE6OMgXB5QN8Dj0J7LKIwpP4JXMNo7nE8gnptnfjP6u8nidikEEBlbaxYjMZwvayhckTAhVLVzlpnDkNUHZ6c4n9h0bnzsq6YGEx/k7jod1TTD6ddy4wU5WWY8o4xe5WwYTpsD04TfVthTeAryBmFNXHvWnaXo+Y+k1iELw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AviGe2sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AviGe2sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762990193;
	bh=ipv9emmJwprIJtcqF9+gM4IDMAVXrQLRefUm92B9Rvk=;
	h=To:Subject:From:Date:From;
	b=AviGe2sDvQ9HcslzAKndK3pQRNN2qPnriTI71yVkIjH8OSFsPo8sqDsPwiI5Rzfci
	 46FNiQDDbdPvMxefLhdql5Ud+vCFq9hoLPJPJvldLislMt/Nob9PlK34OjCYc57Ynq
	 /8JJKubjeU99Im3QjhdXWq+pgAU69YIsnakKzM+CVhikztaDjj3Zfi7McfOgtBOj7/
	 9114FbtxOjjRA+HugYiN+Iu6Dya441rGNgf0Ka1ZAi4+pAk8qqApnFAVS8eEVaVbuP
	 P51rXXiZd8H4wQzLoqAXusIGuNoW8tUaW3yqVqMONbZ9Fyx9MEw0QGP5CrHP5U9e0F
	 LLArDaTR4U3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F2CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299019358.13607.7775643174270766528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7698ab4f26422af419c8eb425f7830d1c4caf0f6ff432dd657ee27c7dce1b74
Date: Wed, 12 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762990193
