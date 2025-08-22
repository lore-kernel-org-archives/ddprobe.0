Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F972238C1A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755849594; cv=none; b=PW0sl0s9npqe/j1BJvsBJQOQ5l4lHlDfmUhN0od41k32BZiR/3ee6lWqBBtcpJOzmis/j8ocZyoimyozsCIS/ymghfrrJb1d2cJ1XTj6nmXFeu9ZGjKAEYCSvdPYIvandRIBVsK6oYTER/vez0H9Slp1UdicCs+18wjDuuJoYxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755849594; c=relaxed/simple;
	bh=Qooc3XNQJADb0wYmZC2hFsJr/ZxdbBtcQz6P9+1Yc2w=;
	h=To:Subject:From:Message-Id:Date; b=oC0ykO3DAoP6un8cfcyP0z+vzfQYII4QUI2KXGsW+6fM013ml2L1liVGmlCdU2dz2ThyavAwqYV4zotcHPynx07hG6ZeXlZpHsMaqpl3XdrTUUNdVRJ36BKmSn0LCkySxfjlXTzVJ6vYixHFVxnUgztnRyYOBsMDUCuI0JmPiuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/hyJigN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/hyJigN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC6FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755849593;
	bh=Qooc3XNQJADb0wYmZC2hFsJr/ZxdbBtcQz6P9+1Yc2w=;
	h=To:Subject:From:Date:From;
	b=m/hyJigNdbCQC5tZ+/wV6hX+F+U+r9V9s6c8eZDWzrsq/daAJN6awpF9nYuv6zUNP
	 S/Yg1ibKmiaGB0LPP59carpORjN20w+sj093Frrr7ZUsx8LUW+txtErZB9X3PdT/iV
	 8WatbSgBuQ6SZ5/lMtqUgzRyK7BZuV74n/ityde9W7/fKIl0n/M05s9ew7dxy+OHeu
	 QIhXW/SNWD+crW0QH2sOELvaurPGM3R+tkayc/vh1boUSBLxZJGakRC/QiPGjjlW8R
	 uipmjiR62vsqrUcJvsu7H7pJ19V60W2HqXZDfZJsRiI718zrde5opA6oc9cvp6Lhuv
	 60vyBOb/5Tphw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D1CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584959357.9949.16174472211974673165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725b1cce8a8d47f66ae13e131d2d7c5ff45b462c75cee05b9a3c43d6e05a79ba
Date: Fri, 22 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755849593
