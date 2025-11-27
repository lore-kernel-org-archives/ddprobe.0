Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134F73054DF
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764240174; cv=none; b=Bor29moV4lA92DnNAdgaMy+KAj8SEJZ7npJ40lIdL1F4s5CCmtKHtuPJ+oyYcsQQu0vjJ/ugA4K0AuLCYdD8wdrzUtOkygjQikLMhifLkk8foyHrqVtqFB9GF1D9TwirZaHzp7Vdsdzd6s5t6xp4go/wpkMPVv8WZIOq+i/zraY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764240174; c=relaxed/simple;
	bh=kMLLioO040Yjh5XxyOpw/d9HZHfUTj0kH4tnutcVxvs=;
	h=To:Subject:From:Message-Id:Date; b=Bv8L1qYwY518PQpZehAv54AFcUe57HINsOBcagoRvsGped1HKD5D2QN/4uMwmmyXwzjGRJMFWMgN8usscP9CPL467QRkPoffwtPBNiF9LqyVVW6MatjxPN36kYy4LQQbU2wXCOauZtwT3D9i13ye8CbGuluDo+yPgNMRM/X9SKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btqaLpE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btqaLpE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDEC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764240173;
	bh=kMLLioO040Yjh5XxyOpw/d9HZHfUTj0kH4tnutcVxvs=;
	h=To:Subject:From:Date:From;
	b=btqaLpE8hXLipM8wQFhF7dfs33rKGYftQctxT0HS07FIkkeOV3nYKJu9/21YnXsAJ
	 EkdcjWMndkojZTPzBt0yvpsl5vG4cXg7cP2eYNmfYRVsHI78kwHGY1bX6uply5Bcyr
	 IT5MnpIjF7AlD30as4DuUqVWgEU6Scy6Ob/zwvCA3GaDpt3iyy8T8PGlfVr6Zd0O8f
	 ZhHd/4TTNfdcY/pHHeFz1YIXLL4b7YzoqJBhdxVXQhUpws7OYYXpEuAJgSsnVN6M/F
	 8/APsrWrHjn/2yhhOqucgfv2kX6BmCNPLwQs/ujuWv44IsxajnH91CmmJpYFrh08A0
	 kDV8ruh2Ond0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116BD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424017358.22296.3970703484431892015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c60b34e99562e838a09140d90e87fe08aeadae5dad870aef4eb38a9b65ebff
Date: Thu, 27 Nov 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764240173
