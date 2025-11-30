Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220FC36D51A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764495174; cv=none; b=Nga38H87dnsS9L4FoGV1ilRoasVnoPjCvrDgJu7pJA7xxEj0iMc15/YqV7JHHEvs+Y8nqtUYvksF0bPlte64NFC+PnKBnDh/gvUV8EZaZ58WBPw3GRNO6OsBnZiqxyEFZ5ev5F9JvZQ2V4x+6xconQVEX7UAaJQ3LT2cC1IxVvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764495174; c=relaxed/simple;
	bh=YFhHK04ZEjCr2hmGNqAd/7jE5J1gzHrqqCyXT9ol4u8=;
	h=To:Subject:From:Message-Id:Date; b=VPiOU41TB2WnwlK21tMmJlEjtwVxyUYrQbnd1lUcVIwkC14/qr37vQNZZo/lWoOUd+uWbwIOTQKYn79ogpDRAodhs+2qh4jCmAdko3CIqhNI5HntWo2ktYZm0zQRD4DHNyGMcizjZIwinEB5Rmyq33UWjZLCdBAurV/dAEnUHMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PykdxiS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PykdxiS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4CCC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764495173;
	bh=YFhHK04ZEjCr2hmGNqAd/7jE5J1gzHrqqCyXT9ol4u8=;
	h=To:Subject:From:Date:From;
	b=PykdxiS6zOvLHxwH996DOO0SFod1PF2ru0jUImEJ+DfmK7JW1mmJQj7CaSAy0KYf/
	 hqUB0ITIf9S64Drfui/kkw5NShq8OG/GUWvKt4GuVvrjTIDbi1RxuPN7s3Ha3idZnq
	 nO2TnKE651cDsvYTnQkJW/xuqHvA0Y9hRdoJoU7fJpeH7ylgsul/ex1r2Qfhsh/yZj
	 qtTiLtaze+JcJdfmktWUoCRJLtMhsD6it6Roo2WO4s+FGwDP4PvHtdO/VzZEGqXVH5
	 MSaBak0Mz9VV9KsluR7L18drEdR/5HbDToAo6bY2f6qISHjlVJ0D2z2P/8tElKNuaq
	 Ti+9iME5fTd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B31D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449517359.30279.12268968951920106439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84568e8e2da88d9679613f7373aece11df66b9d9e4ded49ff0e2b89c598e7ce7
Date: Sun, 30 Nov 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764495173
