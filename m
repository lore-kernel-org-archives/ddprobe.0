Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B323B2A0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749306594; cv=none; b=Vy63yaNf0R+9jjxU8nEPB3m6ACAjbJpgOpf88l/M4+305TZArMl+IAdJXwLht9bGQwr0d0j+mF9WP8kqENxl1tfNoN9hrHu2R8HJbp6zReXTIhhVcNarmjwKeCS45OEel34EFqo0PfYxbqcMnkMSq7y9XBCY570WldaMcS7vWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749306594; c=relaxed/simple;
	bh=XmqwTF8cbqtYVKsRpccHNxXqxBggBpBpr2phmM5xZRU=;
	h=To:Subject:From:Message-Id:Date; b=tB2NZx6/nTZBwFlY+9mY9CbMnq20+wQEAiQBpqPsTVBRBfo5HaQQXeSjIgK5qSqUDvChfJE0xS7T2AqXfdXRw9HnMOzwLK2sOG7CJ0kWGig7PPHXOdb5Q2hREYJ11PCvJXKzO6YAHpuLui4pzCCBLBa5zQ3FuRtor3w9gM5UKXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKgooh1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKgooh1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EEBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749306593;
	bh=XmqwTF8cbqtYVKsRpccHNxXqxBggBpBpr2phmM5xZRU=;
	h=To:Subject:From:Date:From;
	b=jKgooh1SXjR0DwWGgIaXM/kfYYEwfgUlBHyhzttISzSTIXieyjhGkumsNA62++hAv
	 RNhVa4hX470YIQFadYhmL0j6EWqwJwjlQ1PrUVN9qPM4zCt27UD0BkrLqg5oUGTPG5
	 oWopuOynx8uRbKGijjiWGhU4IL84LWDlHADrBEzRyceoGrJI8HWD/mHfOEF2uP/Ris
	 BduhbkTaz5jPgsjPwAjQ0QD9fDgNoDZTERncShceKFWvFZt2pdTVA+bISVwPdCljgw
	 bYjcYlRmXM2TRO3w24IGoB+dEYMHCQ9gXgBtfZ8rAzfuAncLYtm2O+iEtqv5FpmXhH
	 lO9po+kEtWaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91950C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930659357.12519.9444906644986472701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae169743e12e9b12f2cfbb09209ff53473cc0c3247ed3baeb1c75793cac1765
Date: Sat, 07 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749306593
