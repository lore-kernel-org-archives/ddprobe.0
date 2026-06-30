Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67254366DC1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782782914; cv=none; b=aRld36Yb83w6ISHBmotmkGEyNVeLFMxieSOKvgzro9r5jF/h5NQKzc6yWYt6pqKvVbKDLgnBgjd42/WONrzP7CFBj81hF4AIC0mtIprZGSJK2mE6SfCn3u24jyQBAv3vH+uj/tgi2U5NgNdfmbJuiQ4yKI9j0+Xz3TCTCOvhMck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782782914; c=relaxed/simple;
	bh=mmEDsyXp0BVT5wXGom5tSoM79nwG1gwhhHslKSmRh10=;
	h=To:Subject:From:Message-Id:Date; b=s49RCch/sx4fvoXFvfNZi6ko97pLuo5h88F6xB1WqfkLHX8ezJbvVRseFHCEFIgr8uCbUqwaNLEtjwUIsF0UIVqkQVrokuuc+rFWCJGGEWFRqiQ/Go46OCM4CjSXuR5dh/f9/XKUU97EEu1hl9qCZ2wLC2NcIe3ez4UlfdG0jA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqDU0A/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqDU0A/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F9EC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782782913;
	bh=mmEDsyXp0BVT5wXGom5tSoM79nwG1gwhhHslKSmRh10=;
	h=To:Subject:From:Date:From;
	b=HqDU0A/dCjajFGESpFe2syLkRLj+cSGGRHWvcOWGwpC5iumNVHXHYsNJOQ72EsDo4
	 7bJbX+mbcsBeUt2qCpSHLEAh7USrIbjB7IkttPbP5UYOr2Rx0TpcFg36OXh5xMiEZM
	 kQmooUJ+8A02I9xll6ARQYMNF0Ca1hNxP/oB1nTUg/M0A5LXzobZVDgRrMTwzWw2Yi
	 DjtnlQ7v0+BQUJIohrM4kmJzitGcedCsJUW+/13PXZZeowyUqMOt0YcGDJRe8aPKC8
	 N5l3hocywAdufv7Gu0frtSeGM7lm78neWvqOyar4AIZo/eBTE+1NRyH0nhc4B9vTpk
	 8nMAA1wPxkXDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE28C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278291369.26184.14698685961989752626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51de8a269db60b330e2ce8765efceca9ebbc4e6099e0c7da23d701b486baa0d3
Date: Tue, 30 Jun 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782782913
