Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D8F2288CB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771100694; cv=none; b=DhfrzVufdc6j3YCxiFNY3xJ5XIo5+erqzoVY7d7sANh8S7Bc3nN8GKp7FgID60rqJLdNJrKYZ+f0oTvcWPOeh168bnJUoIJ1WaD1Vnvn041LkDMWqoqw09sp4xaYD0JdFeusQbLo0OBb8wZ9CswsHlGhqavkTnHEFDOGkWswu1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771100694; c=relaxed/simple;
	bh=jrlvChjHn6crvQR5hgPeuZgJlAQmvNkRAaZ8LCB3XJw=;
	h=To:Subject:From:Message-Id:Date; b=RgLZC/6KvXfjtcDSLCT0GUV3a+NnuMGLJ9D2orKxXXn3vfkhUJNuL8QhPGXvxwB101hl7ALrH8PgS7QKlLrLqSNXskdfdRvtbB34qgKNDXvYIrImUahKBX3SzK9w9UZ4SCBeS4mih1TKysrLokfMw16GlUOn1JFfczSm6VPr5Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgvcA4bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgvcA4bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0A6C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771100693;
	bh=jrlvChjHn6crvQR5hgPeuZgJlAQmvNkRAaZ8LCB3XJw=;
	h=To:Subject:From:Date:From;
	b=DgvcA4bsx3yOa4jg5IO0zWjhsPa8qz9NDir+T/ktoCWO9kczI9ID45dZcvlROLrsj
	 NZWni5i+FNy7ZxlL0yC3fDTkUpoRe5FkgAG14xuCKfGaXEjRqGif0+T1PplMZT6gXP
	 Hudg9DbhltxQZWNFBQYMIfW2nhS4BSTP2KzO0VMPbu3VNciFVUtl50CYELHmMSsrCt
	 oeaU4AF2w6ej5Rr7Gwqvws57zyhaEQWYryjiPnxQxxxlBDtueXSE5OxtxjrY4vtD7h
	 oQ761CViY/AOOg6c9VoKqDwd6sgh8RPw6ItMR0NJgBHxBHOThY75TzJXBPkn52bUP3
	 AOry+EXmdSK4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C754EF5851
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110069359.16226.11029107383869667369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2f77e3877f07e22d7389b10716bcee36bebfe879d043d80cd798d229ee2f9c
Date: Sat, 14 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771100693
