Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6001413DDD4
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718693963; cv=none; b=XNSHcfMxxdnxbtnxrOztwZBYt/C6Rk89r2KvJaaLGJA455RNAIBx2Pq//VK6AfL8NK8VUZLDlQ3c5BgFUUpsxg7juDS95s2eIX+8QWrsPqbzANra/WbzqhbCsvdRk9PCQuMlCeM2AMkfx+OxvGuM05ChIqPu16dCHGd90lzwn0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718693963; c=relaxed/simple;
	bh=kSkuFJ6Bh2sr9UypR2XDYRZtTG2oEmFxbxPnQzLFgZg=;
	h=To:Subject:From:Message-Id:Date; b=UWEzWTAFUD6bRpAUL0BgXGmHne87hSLhPxQap4db5V1EfZIkwy9k4Lbly7MZcCyR33f/BRsLjp+j7GuNVDjdRXSU6TmrdNeHXgyCrM/+c2LyLS7FYFfkdcyb+q4/TTsMMwef7FZ5P8uuCp6GeezwkEjACg8ElcPp9Z3Sr4GGOFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hmxpsqw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hmxpsqw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74B0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718693962;
	bh=kSkuFJ6Bh2sr9UypR2XDYRZtTG2oEmFxbxPnQzLFgZg=;
	h=To:Subject:From:Date:From;
	b=Hmxpsqw2RqXiwicvlO74b289H5MsNR+8buS6yPaqudgGvtV2cpPtpc8m2pSCbEepA
	 oxS4veLuFf4drk1/hD4eBVUa1rYAfSUQITRrnff5zR6XuPE7XGliTgXrm+7+LxntbW
	 4NqYSBNuSCD8z9rpXbva00ErFioy3lxt/05trxG0sbe2EbWCKBd8B2Uvb4ppIVheEK
	 Gv8kr9p5FjT9LRJkNnimjCGYRCLncYqtE+7NIliJrXcOvwgItC3ThJRlK2JPXHzSR1
	 /f4qdGHVabvGL6+rvmU7sQcwQFb25IpYiOy77kE9/AtWYomjSJIcXYuZlSaE5p17gb
	 mo4Ug26CwfV8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07E5C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869396277.10827.8401931791669807160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68326c0842d27123250e96760ba4bb7f8a2fd7a50ec04c97d46bffb4c5f97b1b
Date: Tue, 18 Jun 2024 06:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718693962
