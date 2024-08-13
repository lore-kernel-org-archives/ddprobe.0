Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC33F19412F
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723545953; cv=none; b=MIBmfsdB/zu8lClvz052Y4t/ySimsfkYs4l4GqjE0XlcE9N6M8lzsFVde/HMDB+Hn+6/Ddy/HlWAIO0DJ1LjfMD0Z0epdf0/GfP9rdxA659N9eUFc2xtBuDSs/K0GKQ3wgGXUzAT8DEXSma1jJZ8KHF/EiuZ0/1pbDh2FRVx6g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723545953; c=relaxed/simple;
	bh=osvrTTJbSBMf2Wje6Q4Rjj9GwSucPBYVeJf60rqK2Mk=;
	h=To:Subject:From:Message-Id:Date; b=YPvdBCJN/NXqK3DEjqlA4khv8bfwLgk5fywvXmRg5qVrcGmqd8N911JgU1lAYoXm5wGTZQVF9TUhf5fC6XuB6UR7VItXCbbkX9eM8SFuTxipdf1WM4+0vGcqgZrqH7udeYWEMCUPBQ7VfsT7JycQsMUFEF2oI0M9Beih3tc4e7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7IYCSdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7IYCSdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A804EC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723545953;
	bh=osvrTTJbSBMf2Wje6Q4Rjj9GwSucPBYVeJf60rqK2Mk=;
	h=To:Subject:From:Date:From;
	b=o7IYCSddnXUBNxgqtLoeJV/h81lbbMURwgKBwOyHys85WoR3WQCksNMTICpbPOwt7
	 L6PAqmWW4KU7JQna05Q//1I7QIQQHGFP7cbWWHNXgVV32nsHyzm7TsGczqpDQB2v7B
	 2Q7Mg3iw5NM155vlkXILPOSZ3BCnnBTONOzYX+8A8mlokDX6jH7O4z45AzrGvXLg5q
	 Vk0PT5X+MVsbl8ZGfZFpzEHXJDVsZf+3OQyjs1oTn0HJW2MAEEKFyfjWX97hwx0+x4
	 YInpUnFpt7n7WGcngEK21B0Dtk+LVKWBiNEqMimhSqXV2uCHPXbIm/Y5gb0IfIezsK
	 vYQU/q/tsAp9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C4AC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172354595361.7996.1151519645501399492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254294d884b4a59255205b5223d30ce5487e2aa04b5b971ee1e15b58c2f038a2
Date: Tue, 13 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723545953
