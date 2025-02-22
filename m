Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6A84A05
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740195535; cv=none; b=lHWT1JodXz8TZlshoFBM3efmg9dywiTLAng61L8Ha1ROZOct9s+IGmqymUqEx4/XCZsVlW5pRbBADe+PF3UrSIxUaF+I89fDQ8iaD3T+sV9MwWnGFVTWWQxc5vz/Rk3DS0J6KHIe5ZXLKKHlpABLE2H9+89X+WbCR+5K55E9rJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740195535; c=relaxed/simple;
	bh=gCaj2GUDrFkmf36BsiuzG5oq43s0Zf6lD/61SyjAaF0=;
	h=To:Subject:From:Message-Id:Date; b=tyR3wfn0P2gJo78nQGYFItnwELDxWqDXdVTi4MMV24xrIrV0PUlgRhxCXDjalqBYqqigSiLFcbYkA1I9W5B/jlz60yfC1yEgcenwQvh6q80evIhbMrN+o6hvZlkdOsJx25NfQviZBz6/uViQi4PgwHTKd0GtBQh1FbW/sKEQM6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esDgl92z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esDgl92z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99E7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740195533;
	bh=gCaj2GUDrFkmf36BsiuzG5oq43s0Zf6lD/61SyjAaF0=;
	h=To:Subject:From:Date:From;
	b=esDgl92zFr6oqCTxP8maHraaoFJ7fGNyHt9YSEyn5y43BwbpjYqPVDkWqu+kfX05l
	 eppcpMiFlPxtoQeg5JDnoddjsXC39c7oN7evOe6a9QKthWKf6FC9jhn/8gkSm8v7DM
	 ZC0buiKjwPY+gSKCa+CvJNDxkaCDRuvzsOebF6K4DgK4uSRIi8aJpb9gPBvowcBuFY
	 73ilbQYz72OXJHvi83u2eXswlgBmyBzOj9KgwfcaiRpNoOR2TT1VKb2/rSiPS4Moiw
	 rl6UPt+eflCDgyyhk1eATrApI23tI6K9SmEZviXtHcIUfIla9iJ0Fnuofb7AgpVUab
	 bqiWdBxJn2akw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E7C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019553359.18292.4520130914554689830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2066f73069b8f295ab0908396ff4c0ff23e2273b4b141f8519e8841c945fbe3a
Date: Sat, 22 Feb 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740195533
