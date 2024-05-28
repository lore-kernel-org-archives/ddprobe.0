Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4665F224D1
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716918263; cv=none; b=W8cPDTBIYR5YSclyHAwq1aiZTW3M5hOnvHTO1EVy63nGS8n4z100QXpBcpM4UfpSFT0jws2tHZQGXtZld1FacrrdPkOHkdm0rDGwokhztBv4odtjMyQoZjBuC6vnr4Yx7DaFI4Dp1OyH+Gvj1fbW1itE3XGwRDghSrORaL8/wZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716918263; c=relaxed/simple;
	bh=ZXe+hoi2onIN2ZOKuZKxoXJ4/i9Slww6oNZoxb/vpSU=;
	h=To:Subject:From:Message-Id:Date; b=BXBIaA45wzz3q9ZoxvU5mM63iAYXwytbzp4ShxF5k+kvuK8K6k3di3rpibaLvrqznJmxMC8xDTX4pHIQ1ts4YL07McOAWh6AP1FOnRRPn7QgVVxjuAI48WaQoANs8JJtBIF8Hwa5pdOXt9odFSE0HGRPe/i5DfkN5FUhANVCAaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCJmvjRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCJmvjRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAE7C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716918262;
	bh=ZXe+hoi2onIN2ZOKuZKxoXJ4/i9Slww6oNZoxb/vpSU=;
	h=To:Subject:From:Date:From;
	b=aCJmvjRhUekvSvlcy9xXsBcAO7YhjRpQwCasm7cWzMHN9XaCI5xBIY3w32qtbVvr3
	 QnzbW3MxRTTQqTzpVhw1/01V8s8mEuw1ftCDKYLVE+M3fjMxtttUxiY4g94A08E5b5
	 9QnHslTP3Dl3gEGTOHnwiUezb6jNkSV++e7ugXREoGD90ELfY0JeqXTy9H78k/dKo6
	 AzZRqOBPj8hxAcpoBjx5S42OXUxIlpPpmtcxNVQWQch0PF0jZDpqNp8Npfugel8jZ5
	 V0/ne0j5Q2D/7WTRim2wl7JXDUDePBUu3sVUx7WsqYsYVJlUzvYCrj55nH6A1bH4Sv
	 7xyTjfyJFWCgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6734C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691826280.23618.13493081773514784253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb06d95e4943b8e8325b8e9f0a02e77c965ae6c1188ff76e3eebba83c04971a
Date: Tue, 28 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716918262
