Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D141384B1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711558697; cv=none; b=QebdbBEHG/nQv2b8SCseh0Z4k8DMGMye4ZSRoDAtzIV02DzJ4+6lQ3J7FaAMwLcJN7bC/UunQStKfGg0rHHVYLzNIa0Ce69G1GQBlpvNacj9+4+5JZ2dgnd9os8f2H5wgWCYMutCzf1noNtN0Hn9WDBCEuPFqOWSLPzAujatI+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711558697; c=relaxed/simple;
	bh=h1dwNfpD1EOo4L1IAB997JtdIxRrshCdis0rMNN7qy0=;
	h=To:Subject:From:Message-Id:Date; b=rksDtG7UvEgZn0fUUzImTlhXBPOJFuwp8Z9QtZjM86CyBB8bCUEv+XbzytAWq7SNr+7xWnitZZSf4NjlgAbX+N17ufpvjulhMHeqxQI9Q0nyqPQ494HIr12UtHmYalblop+LLAeR0Ndai4DVDs8L+FR2Z4GOTUiZXlOREYTKmpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O70Cw6RP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O70Cw6RP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FCEC433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711558696;
	bh=h1dwNfpD1EOo4L1IAB997JtdIxRrshCdis0rMNN7qy0=;
	h=To:Subject:From:Date:From;
	b=O70Cw6RPd42w4X76XzfFHv7/rxUGseChqu4vE/I2ovpTw8NysqZ/JQME0XTYeiWB5
	 AbounSUpzfCTTcHwCQYByq2b7tp/b98gBsQsu7S8YPWF9uGdmwKEN0zEVvTTYD1+Uo
	 mwmmJ9Q2a04Va4K49GZl6naxml7XWD75sEeOJxE4zBBqLqfnMmOL9FjQ+Ayk0JVEJQ
	 YLi0+eR5jMqMWsMCWn5pZ9PnPT+nppMfTJkNSZqWEE7isZcbEGZ4iAbhbY6jhv062a
	 lu7guS5QppV99zqogDyrfjF1YC8Klnk/9tUToVlXuJmq2HSqUwf4UthmX/25jjzrS4
	 hUElGYindvjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F760C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155869644.1968.12532382486536185664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5eee0aa3ada60f8ca947137b7accdc96d7f87a45020608318e386121f7200c4
Date: Wed, 27 Mar 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711558696
