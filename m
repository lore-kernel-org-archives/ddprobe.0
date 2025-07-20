Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947B1A072C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752999594; cv=none; b=qqEoZSxjFx3ywYzOM3RA4DoywaegWi6vxi9iuITqpHlKl2O4Si1U8/eNesIIAiW+ez7IvOfWHzgoS3ORP1ZS1Sv5bgwGx6P/+DqBcMXkal1PKWqjzhqPS4+eID8JxMUQR0WWVhQ1rDjakMKweznyD3n5Xuyne0Yl7HX3r/G2NyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752999594; c=relaxed/simple;
	bh=8+NJGzJOYS/TTuR7iFvZIHbTO6pY0a5sVP/DhvYO+hA=;
	h=To:Subject:From:Message-Id:Date; b=KnSjhlxizsfe+4hQuANcrC0cvLuxPivSaqrAW1aAd1DRRJYSa9/kSxIZoRGzMjT0DBoasT3GG/P+K5H/L9mGobjzTXmTOF2nEXsOcr3BBtP8QE18rY5QbDh7buByDCXmH3f5RFJXEPOnsvUQvLENXaO182x/GMX7xoe+A4X8HBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is91gVHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is91gVHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752999593;
	bh=8+NJGzJOYS/TTuR7iFvZIHbTO6pY0a5sVP/DhvYO+hA=;
	h=To:Subject:From:Date:From;
	b=is91gVHb7HHroV+yn3ES94IIs62TYbiXvmMjK+6X5lcj8qN2VFtFNlbXkRZLJdmCo
	 2F4UhZUcTMrzqqD6+rm+SSLQgwuG7dMAFLI74dQPXkCrSqIPRWtAhzB6MR8ZtRAcCC
	 uL57EQeTUL8m2+4djluBsNWmn9Amytitk2X02bAYvUHufAurwYl0oq1VA7MFj/lG1l
	 vGcXVjaVzxI3nL2WPjaFAbfeKEOxKavQGqVmwPBqkOlPns4WjV4uPUkSYAX6R/NvS5
	 PsQQwQ/waRZQb6PJk8orYKrad2RuVNsocErd5Js+cf4c3yUIE3xKt1IIyMoyWO49zG
	 JSaoywEr2bPAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262AC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299959357.5111.12111291143111987523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6e5820666edb79e560a60c02ca28f13f391f7eb684e6143b4ba075982bb5fc
Date: Sun, 20 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752999593
