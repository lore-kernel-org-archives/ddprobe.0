Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAC445023
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718453903; cv=none; b=LTLFKG3lwLYj8zK/I1KvH8PxH9Tw0TA9ufbighR+5yPD9+Gqxisaxxam+SarQUUvVjWRc+SsVOKHrt9w2ftrwFINFLgUB/leYusahPO1lehSbtOvQy+r2tTWffFhSNyrWf50mT8zCzMhUZYsZW4DG3/AMj3nLowhEZAhkG80EVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718453903; c=relaxed/simple;
	bh=dueVJyAaccDmvMULTAZTkv0Zs+vrU3jV7uXgfANXQdM=;
	h=To:Subject:From:Message-Id:Date; b=LPSwvEAwV2bz2KmRQ9WcxsFdXwWEQbNBxtZ45c+TBsl4GIbyI2DuzHb9UtHIyaOHIRu35e4oDqX6o66YN1sot6AjzzdVgMv38xtXA/S4z79fo8teQTTQv4fgcUjhDGXqWgTQFUgA516WsysGsVky5JXy06fpiUwXTHwkFZv7MZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmY/YucD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmY/YucD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34DFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718453902;
	bh=dueVJyAaccDmvMULTAZTkv0Zs+vrU3jV7uXgfANXQdM=;
	h=To:Subject:From:Date:From;
	b=PmY/YucDlQOkph4r4Sw1Khlkk9y2/IBdO+qtoXLnNqkRG53UpHqETq8lCc8/tXdMc
	 kDS6LWT8ASx5bPG/iCsBWSu1M7Fo4H3FQxuK1Ru3tB7G3dkr8mv9eIv9ISocF6m49T
	 54H6INtnrW+sjkY14/2XYnExsO72ho8mGVQrzDIQBym1fWAj3oo2cEXsx8ghU7x2A3
	 j5+QUAqPA5H1kW3zKnl7Iqry8hN2kAYB0uXFIRO5yhT4uzs94kGswQjAZ9jH3kdaY0
	 coxaNfJjdtv+B/gcckBboOcTnwaD4yjdoMeO07IsfYNfo/exg8cnVIiWEKNRaREQG7
	 JjhUIk6B91wbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3110C27C77
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845390279.25115.5675125206707392263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdfa20de6252d71d18887c0d03055638f6f133893154d11b7500af1327774be
Date: Sat, 15 Jun 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718453902
