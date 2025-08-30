Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5BE2AE77
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756522794; cv=none; b=gyIVpU8yREBuEmYIrJnyitX8xKVAxzuP0o6xnpAQV3APoyTwO6UkUnPFm8AefV/wXsls/QtQvr/55JJhSI7l/1+WdcNg1r52vPMMtJatJLntSl5xRUGenCS3RdLpSXFKseLTNqQwiPXF3IdefVhxxwxrxn2TH8li3ntBZp4pjnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756522794; c=relaxed/simple;
	bh=fJGpR0pfH/tvU6Tz6BXgFCGme4Wa4lgZNi24/8h0o+U=;
	h=To:Subject:From:Message-Id:Date; b=HcM2iv9FrYtKaj1+mVCrW0mHXDGXejPu2XBED6gclhbP8tDcPtAPt9AMwQRZy6X8m97mdQD44sWkZlK6M3SAfYvkVUSA/Q8IttKNJe0VJemIodoKu/TK4k9igPxMG82sVNqbz07Egyde0fkBTIbUmiuMQUmP1JDMjMTyBM1COfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h13WCWce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h13WCWce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3071C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756522793;
	bh=fJGpR0pfH/tvU6Tz6BXgFCGme4Wa4lgZNi24/8h0o+U=;
	h=To:Subject:From:Date:From;
	b=h13WCWce4Zg4hRUNKa+slU1tiS3H8wfTFWvJFXhTo06x+TvP7FpSZSv0+7M+tc1v4
	 oiL9JTxogjXHmfgXG8bWxCOwo304fhsyVDrSWuF7mrFuwsKBhXJ/RnzFKWzvNj5UW+
	 YoKbCOjzWDVzps9/yjQiNP8z17GVQpf8IjgXFNymh8Aph4ZsTa/7vn/qOuMHj4NmU4
	 z9m+D9ONbjfY6BXkYUZWWVW6K1IqqldUmab36WmalGp9XX7UnEzwIWAn5bg37ank9N
	 B8HbFYTZPCt/tsjKA0iH7IQ3bobyV94yEZZMEvqO/xcrZJAcyFFVO175Dim2Kw39Ar
	 dREzm7TgD0W/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB7CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652279357.24716.1866531580779339235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f54773d0e418c296b98a6e81ae377446bdaba4ced31c5f254fedf34cba9331f
Date: Sat, 30 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756522793
