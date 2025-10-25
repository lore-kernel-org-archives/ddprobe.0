Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CACF238D5A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761361794; cv=none; b=qWUV4fgxIPrInqSxAfdibV9gnSvntJCproVh06ilgF0l+g0saEq5iEnZSs3oW6j+07DIh3bGpK4srvOMcEz97AJgBHVegjI1Cukcu/5HdlcRnxJ+hVOEbgFCqD8U6cqShG/t8+lf7T7ZulEUypL11cQy1VyRkwL2B6cKUMjBkc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761361794; c=relaxed/simple;
	bh=Ul18jTmn6oNWgQkhyaS+WG80UxJs8NlSeKgtY8+7JWg=;
	h=To:Subject:From:Message-Id:Date; b=Tl33PNBDuZwRLvnM4vkoxbGin3imNd4swSuJ6YjXbefSrluQaxnOT+1DVu8lNQp4utMqB4E8rvuXODapc5Ke2R8AOKRwGYkGkdFeKBYWQF5kJvR+rBa3RHOItClPuRIK7XslhgMcnzawKg0gwEjSwPNPpkNW3qbkUjEGgrNgtz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzjawkVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzjawkVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DDDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761361793;
	bh=Ul18jTmn6oNWgQkhyaS+WG80UxJs8NlSeKgtY8+7JWg=;
	h=To:Subject:From:Date:From;
	b=uzjawkVj+nYlEdW2oiDS3uURhVuEvk8qIzmwT4iUIZp22cNtOh3QmmLRT54A1Nsyh
	 zcsQ9mmDCOXi4pQcODxe3KmnDrrQ4XwRfZOn3w8ZPQf774k64Y5efzi1ALhlO8xGLk
	 /5sDaGnanjMJFJQKbNS5LdoFc5s2ZqAHVD6q+pkVbz2ju1i+Gro06ZnURj1+oCmuTK
	 RJOfEK9t0HccM6aJA2ZBv7hUicqYAcAm3c4EmXcvV+EsZLKAyldW1mWYxdF5zGsgAQ
	 9HMtkyWyet8WDqpCo64mP/269vErg7T00mPje9M0bIX6dSeRC315rUwCMjRhYqnjq1
	 cUdKqtlxNM1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F432CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136179357.22294.4482951750031423909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef337242a3c517348902980b2cefb97b8b8c5428d4bc3a09d0bf3770346091c
Date: Sat, 25 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761361793
