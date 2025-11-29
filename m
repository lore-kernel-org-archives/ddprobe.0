Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9E82309AA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764446574; cv=none; b=iODqtHQ7lLRIdqOBSusVj1cl5tGSaVi+pMWPHgTpD+J/NYusg3RIEFPJtBtPHcRbna0FV4za1Y07DxCRJ2E6zZrH8rWWSBYgM8xmAGSNzFmwMjBjxvpPLFKKWsvdzIIK1vIdiUZQJIBhcE8qy7MO4Mfsl03LtDNm8Z1gKyPzalw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764446574; c=relaxed/simple;
	bh=M+YmvHbi9gUYoWyG2EO7tuO+qfXhRgpxk39Td3YeriQ=;
	h=To:Subject:From:Message-Id:Date; b=LBHr7aW4wL39ZNimXmagsp5fDSk+XoikKywg0RpbWXJ/UtU7ftX5A7VFNX4FXJRtr2Yvmm9NIAyZMFgAzQ7JyvNvjtrWjuKJkVpNdpYuhusdf890M1nquo3iPhaOEP32LtwAlhs+wKAd/KfSq1snlano0TD5Wyv4qPLBt9PhYV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEtp1zlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEtp1zlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764446573;
	bh=M+YmvHbi9gUYoWyG2EO7tuO+qfXhRgpxk39Td3YeriQ=;
	h=To:Subject:From:Date:From;
	b=GEtp1zltLNZt4EbEziQJ4wHb42aRd045DS747Nggcyg1r9PAFZU5OvStd0ZRjabJb
	 jKOzwuv+995xbNvHzlPeQCJ8TfU/MGk8DAf7ts4cLXmNvRQyJle37AXQ2AKfA5xAyS
	 E6RJE9y+0oIN5WuypU7GbI9FRixUc5tY4kVkQGQKpr24RDS89gHm7u1jCbvdkoffgt
	 yFoU4ZPTEa0fRwj6NpetilqmMXOBv0V8J4hbVBG/qix9oSGJroNm7D+sJnrVeZ9pUa
	 IyEk6G3XaO8saIb6zeRqRgJVv2aX2jq4EaBAn7Q6u74xF/vpIH7TWXq/nKNdeAPkA+
	 22k4Plx7Dm9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A28D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444657358.11589.8579665814660880787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65ccfbb3ffb3e9e572efd338c31dded6012a29bbb2e8b3181e139403a09af99
Date: Sat, 29 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764446573
