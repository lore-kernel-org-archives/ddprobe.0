Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BD929B20A
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756292394; cv=none; b=VmkvDy2ixi5WSrEkP2TiK3GCkIaDOHv57tztKvdkNIY0aD0py5002/H/Q6T9EQsoUGG2GCGakppDJA+5TxH2B1EOs6M1m5CLT3dt31WbZipu5L1NPfBC1YEey1jQY8wLa7HegNqAOxIehV1hka1ZZCX6ZJvCjoB3Ld8gZry5OYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756292394; c=relaxed/simple;
	bh=qO6kXsFicFheUnOUbGfYY4tA04x+lEMwbCzh9hwDKHM=;
	h=To:Subject:From:Message-Id:Date; b=L+ULUkzSgY1KtwqCZ/p68U84XE5IsGlIbCjqoj4CirLlZZhwBhwJON4A0LAfWI6SUaLg1CdsXjnOeRpKQ3DJThGQn4t4n3Rez28+C3g3F9Pf5hWBwXa3i1Uq3QsqS1Ug89Npo6hw8S7z1tE5QeVFNKiBSxJp4Sep93LjWbybIb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umujgq9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umujgq9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D59C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756292393;
	bh=qO6kXsFicFheUnOUbGfYY4tA04x+lEMwbCzh9hwDKHM=;
	h=To:Subject:From:Date:From;
	b=umujgq9QQ9ybDx+Q9R86/L/2ii5QXsc71NH4TlJkv5heevN5zEMncJ9lt2I/4SSwP
	 +MlqWSZhnXwyJ6S49NXSrEyTdOTcu3T2T3VaBjRrfSWcE6hkOz8F0Vbzfg+epO/uIY
	 +EW49WSser5lKQCYF2W/RYCQ0hN4tZm8W4DeK3hlFc88FQeXGUfHJqIu84NVnNcFhA
	 7VgwKkczI+m9iYdcB74D3/XGZs3LoARViy8Z8olKo4Dyu90+FjVei4xXzVV34s7gFL
	 x7ViQIvvmOG6u96YEO2d5Jm6lhGIIXuGNd0u7GMemPjgdC+3ZqYiFAzDW97FGTkILd
	 v5053d4LypxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24ACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629239357.5859.2266578340417758031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b89c1d44ad87b009d8bb339e02463081a84d1d059fcfd60c5fb2ae5b6375021
Date: Wed, 27 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756292393
