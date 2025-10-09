Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65023BCF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759987794; cv=none; b=AVl/+F6hdS2DwpNH+D6u/HEpDciBp8Ce0LYqvIowHZzKOh/BbYd/6oHYvmDgiAUZcW/fqUVsdFhVPPQLXL0aVS3sAEPxqahjiJExP0nobJO5cdv3dvlCKbJLcegcJ1Q6cuuFkri+Oy+VKAZ9AXGfN2+4sgAHvfw9xSlSRjw6seY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759987794; c=relaxed/simple;
	bh=vi8AydBobF4x9+YuWUqBEQcK9RzLRmb8WJbyzDZP1OE=;
	h=To:Subject:From:Message-Id:Date; b=lrH8ve9K36BxdsDWWscNMi7ScZVPzNktBaYEPsMdJe8UPLNttN0Muj4AeYLDSIC2aqvjXn5NJLx548d+oVzr1qNqjBsqddwAYtQ75CeWV5I+Q+A5/lSQiLOB2p/6JWo7Z6Ncc5SoFc1gwNZpooTW5msJfELtPIMXve6YuQX1kog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCNbxih8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCNbxih8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759987793;
	bh=vi8AydBobF4x9+YuWUqBEQcK9RzLRmb8WJbyzDZP1OE=;
	h=To:Subject:From:Date:From;
	b=vCNbxih8S7QxNQFMEt+UNvokc1pvdOj0NkRpiF3OR89cxdBppdJX8jAcaw1+ac81g
	 yggSdbhvbCJys0NK8dYsOe2VFutPwLKB+mmltCGSKpIs7OvVqXeXACYDOQIxW83lsH
	 +wUs2pFUWpEgt0YB7H6NUrRVuyTQJVv4dJDfn7ZghV+Gl9HbyMkROKscuyFdHkVtQz
	 OjiAFK3SoWh50aHb5FrTv9+omSsKlgUa9Y7RfPDsP6X94rJQBV3BFE8MXeLtBi/NoE
	 oB9GiuvXa7OAh0HGM9NuaRBdLAGDc5aI6Qm0e2yCsLL2Q98oG/XN3yGHtDq2SI2ZiB
	 9NkvQK7qty7rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8CCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998779358.20967.3043042001162396359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a59eb12137ce8e11f2ed6df70db225fde0ecd484f53d3648913a86ee0625b7d
Date: Thu, 09 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759987793
