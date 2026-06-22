Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D7348C7B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782165994; cv=none; b=POTiksao/P9c5JjPF9deVJp7fpIshATWe83JXdO4xf6jKaFN7ccZBXr9Xc2x9Flp9CQqc2rRRHxZqBaLoUmQcxI+Sy3mRmE8p0F947C/BHVZIS2RCMXLVQmi3ywJabgJA/sdSdNjfIrprup8rTqKBKWkRapAtfWRntvoMjO8acE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782165994; c=relaxed/simple;
	bh=lsR8uRirs8rFvlZwg/o2uV2eW6yPD/+3jRkws8zOcL0=;
	h=To:Subject:From:Message-Id:Date; b=Z86qERPYO1wXYXdVqs1l8BqcsXwTWz/wquYkjD7Hd4dfFRCdOj27n2Doc8FUR7QgePypDD/dYz8sKLC2oNr+sIINOD4920qxkrcJVu3sKdv/uWgMzwyBIi2k0eOC/QrscM+g2F4D4TEHYwgOP7DXo7s4fKAh/lfqvELEKVeptto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYCL+/1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYCL+/1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EF8C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782165993;
	bh=lsR8uRirs8rFvlZwg/o2uV2eW6yPD/+3jRkws8zOcL0=;
	h=To:Subject:From:Date:From;
	b=rYCL+/1A2JB3bB/tZKsJ0y0CH/pk5aazg6QWpQZZ1PyvyLQLsa3jC8fxHfqLzprPL
	 dc9sBb37hzTJ/6jRHFifuS0ch9JxIKCQZQsHIG5wgYf6gHdGjjrITfw2BikVp9+NYG
	 lnZzHE7RI41vI/1tEKSbpqIqvrIUlExfwsRCLdZih1/+xi/xWXGmsNEvnduZxm6L3b
	 0PjdUAnWo3VzX+J7QtdGL60WathWIwyWVr29m759jEoJNgG5ndRCNJpbfp8jPNAJY4
	 zC4Fe1MjdAVRMvdYEItJQ/F6Em7FRusHbfPyfLc7gfZTEXEFXy54pKrZ28Oalz5/lE
	 kdMZmXZw9bSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BE4CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216599369.3572.3245042687048014617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4de16b9f92f4f847a0dfa500c71b3a04789be0063a09e7a54f077088893fee2
Date: Mon, 22 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782165993
