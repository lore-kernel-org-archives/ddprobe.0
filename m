Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29914170826
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750729794; cv=none; b=rLPDqu0Al91+njC1373rJ7Qw9wf9dJUDJ5zgrEG+mMf6kdfFMIMtmT4CO0x8AKYuOMosECT5JjVjjUi6T6WJD8MjFnXdPZby0uA+5CHTt9HnEUIAMxNzsB7v+egAR+I6j9i6NoLDRVAtDYr/z+ePKGMtosJeHITErWKp57ound0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750729794; c=relaxed/simple;
	bh=i6jj4kkQWttq3qWC/mE4KjL9Nf+zCtkZuB68igDJQpE=;
	h=To:Subject:From:Message-Id:Date; b=NUAzWLKCIbHq5ax5TeQhV5dxwcn+6dM6RrUfKA6NowbgNBxDxvaNHlbIEmLcZklP7EZbIFLMccm/f/38j0BlWR3Pxxa1Z0ZmarVYFpfppW9oKrGrh3VB+IJMxlwIiGgUGnfeUm20R9n3e7+qgj68jWXgZz0ZvAAKkGav5df9+SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db1jci0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db1jci0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD9C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750729793;
	bh=i6jj4kkQWttq3qWC/mE4KjL9Nf+zCtkZuB68igDJQpE=;
	h=To:Subject:From:Date:From;
	b=Db1jci0lRaZ/bN2rDNvNiMG4GGCBhbUK79zQVlJk5qNPj2Vf+t49IsA+TBzNzj4P6
	 OhvlIU/iVj0Xr9NYEd1VGer5DxR9xGizRn8FHBDve5i9wm3bmNBk4ClB9VcOtgv4H0
	 Fdc6REJ1WevJbT9/FAVz1ZKP4CsLrJqo5MB6Dm/XUPMoUSHNpFAiQK4nxyZGjmndMJ
	 NmXWK3T+vvlsGUbY70dfU7ivq+ae4OF4Ta/j9cIxN8x/dXdbY8BT+GqV+BtjzL0yCi
	 8yB82JuDIpCIUJhzJrdCEuUUP8ZaC/tOiE8WLxCs97BBqD//L5v8a0JYqA9I70e8RJ
	 nbjR74E0Aqjqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE72C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072979357.10131.8067388705300633924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d80064fb546be5839e04d4f6535bab4e8b51db7cfe416ce3d70a962f40f370b
Date: Tue, 24 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750729793
