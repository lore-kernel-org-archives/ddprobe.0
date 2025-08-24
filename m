Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B5043ABC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756007394; cv=none; b=dhkOBaVPT70bUy6aeg8dqPw58WUSPqbJNHhqvMOtSqM1koE6XH0AqfAsJsJt25mIVSkuP6kmxZNf+mMBT7sLkqCHq/Rw1wZ+PIJWaTbvtSpAHvttTCX7axmdedFrklp4a3VE32pMDNVjLhMHb8jQ6wa6k38oGlGkE/5Ia/ibS08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756007394; c=relaxed/simple;
	bh=UVA6na+3Kc2KH9hpUtpt79dXkNeHgQ1G6PsUsOVyfOI=;
	h=To:Subject:From:Message-Id:Date; b=o9GVeF2hInV4vaBPijLntbN4nsEPLU6UMqK4nTz630GKbZgr8EqmJCrcuXrAI5pNzDFhthZ2FLf9/SXOhPhr5JgaEcbx1C+MD1RFhhE6rtXLhzNSBo4ZH//yHXV+4hBJNfeLMxbdheQ4ibXIFoITXv9H84HLFdswF8O8yCwXOpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZxMIfaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZxMIfaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA79AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756007393;
	bh=UVA6na+3Kc2KH9hpUtpt79dXkNeHgQ1G6PsUsOVyfOI=;
	h=To:Subject:From:Date:From;
	b=VZxMIfaYoMy82WE/6VtlnEAGL4CSYA0bGJfPiSRnQ7V9iOIYBdTBhJtTjNWfa5j0r
	 Ohk24dsBqyPWgvR42r51qof0a8A6FkcoY0IW0K5NQosaa0J6bMpScwSm/+tqJr4HlG
	 zj4AP1iky9WMywcYVdBmVbipCilYDF6QQjjOZQqMOUeOq6hwVNxVk7vpwxCBw2x4VH
	 dZ2LjiJ/kPWozjORqAD316ZFhlPxewA1bnIMumMohOLK4CP7q1jl8KUewV14gZFvOS
	 gyZudBpzGg2Cgb4haLPmxw7XyWZruQVYtPhgbVHVvGvqrXp2bA0ZD86KziaGSGGIr3
	 BXj42rFpY5EGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C83CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600739357.28161.15914123363412457367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eca4f8cd143341669be4a188379d1a01758fa1631898aeccb2dc3f393935664
Date: Sun, 24 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756007393
