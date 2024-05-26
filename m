Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B2212C494
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716752063; cv=none; b=IT8iKLmN9DB8l2twYwggw5RQe13P50yIivDrgJPWHnso4Pw0Fr1tvMmzWpX9qLpdRwbZZ3GQpbD1NJcdTY5i9UCWjbAuc53z1JOZf5QURdINKzjURmMIu8d3kGZZZAos2gzWV89lToNQY7Bphroydl041ItC4A2lLxecIZqEAVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716752063; c=relaxed/simple;
	bh=I8IOtGrusXvtp90k9hYeibrLHbDRQA7vYyJSWMSM51U=;
	h=To:Subject:From:Message-Id:Date; b=KTGreHcyXE+UwKcExC+ZLwDXWcj05D7I645MFuuWdhhUIhbuTTEpO550rMjI7ktWcnxIopOESusP/zs0cWbpYBKG7QJzNhfw6OYuZ5yKfgd/GGKEojLdhWiCbIQJueLibdPOGcg2zDkEI/QjTFjnXBF4YdO7dxw30vsK1VSY7QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXnvBr3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXnvBr3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0ED8C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716752062;
	bh=I8IOtGrusXvtp90k9hYeibrLHbDRQA7vYyJSWMSM51U=;
	h=To:Subject:From:Date:From;
	b=lXnvBr3YQNl+yhb9aqQuwAibmfZ5/UOE26hQOvBd5MrjLRIfKSaAy8ysbUaxVOjyH
	 rxgR2+wg5e10hkzvyH12ka261mgUJSB7ioEwfeA/nFDsT8yzgcYsox3TquuLSovqRI
	 Eu2jZsEextv1Jne5K/D3ifJxih3qmCV+bF4jlJNRonut4eCbjVKGsUPKYrn/YJWwuf
	 6WLdXq0S57KH440i59H1uRPCYp1rb3GXBIK8Dpys3855/fQGSBflf0jQJzWuAxTu0C
	 EZwhxSpL0y4yknswZmuqVSK+OgCXyRPhcb0uJlnmvYwhtcyFRdw5+k02EPA8uNIiWo
	 tgQu3G1o5U3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD729C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675206280.21830.2421845774019070553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c993ba962db70d21696d294368ad9dd864fb7dbf2101f638d143a37ad86181d7
Date: Sun, 26 May 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716752062
