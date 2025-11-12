Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305FF24E4A1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762914594; cv=none; b=Q5CETXu617Xpt8gs28B0d2G4Y/PFS/tqVHOBOGZvoMb6fHrtn5y6cpKOLNt91UJMXtytPDEx/eIIv23Ht/FLvRdaOzzbfu6206mcKq45jQAln6akddGSXfWUGfEQd3dwftwoe5D36mjxyQw8NmwSWOXXbkszM5/DmizZUbbhSlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762914594; c=relaxed/simple;
	bh=RU4fuiNoL4V4DFCAVYXhDmDp6mfGd7hMe/tdxINBW98=;
	h=To:Subject:From:Message-Id:Date; b=l1JLDoD4jrvjrknB5s09bILQNiZgTCjLj4ENxHs3yje6LhEUqiQQkCREt51unB3RtZgFlB8bVBfYoxEA1p2fQ9PzAOuLsS10ja8QbVkdLnNzPiwEZBUw6bVWx6UHRJT2oPeKZ9y63uhh847CT+/42Hb4/2M5VM2xlCyn9//lW18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F34zeJeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F34zeJeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762914593;
	bh=RU4fuiNoL4V4DFCAVYXhDmDp6mfGd7hMe/tdxINBW98=;
	h=To:Subject:From:Date:From;
	b=F34zeJeFR7+Bte9oGXNHRa1s2f32fZVghd+TH8WAW4EUaLlLcMDZ16vVfTbevzgxV
	 VOyQtWYvx1W/zFY8BpqEp8G4xEzOTNPGJgG9Q9S/+Mza7hR5ydLq5UyYkExhuXipx7
	 ZsJNZk3A0zTKViwbn2hTKKa3qfmJMAbz+kt3gGSyizloLbY5/BUq3lThlFktzW2jcB
	 +pJFLmhqGqIo79fOuf43Mfymw5qlazoOvtZM5PXqHFjS42OH0iw3I8bzFLhRG7oCT1
	 0YLTf2BNofXChnbpAtXaCtlorMce88VG2ThSQ1YJumt5n7wO7PaC1nJ+eRfv8TsSMW
	 4Tyv6x+otfN7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9686ECCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291459358.15877.7695926156776165516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea28765bb874451e0edb69ea470335c13847cdd9d4a3322617500007b7dc7a4c
Date: Wed, 12 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762914593
