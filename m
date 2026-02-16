Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A9F8635D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771275894; cv=none; b=P0LQ2I9G1IF6GR4gYF86O9VdTPd/RajrcPZ2UonRhxAH4DUmPbFQ5iErWOMp0xQCI3zBBHMoIz8Zkh3V4UKdFWYG/8+rjw+eGCdjqxExpbZT0MMJTaTN9a0ohkoH6yDH9iSFC7XHVFT2QQh+c4F+aOkbbLEgJcxQ5DriNni98qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771275894; c=relaxed/simple;
	bh=LYNXIaat+E2m/X+U9QuZzo2Ecn/tFOFWuzkZAHrNf3Y=;
	h=To:Subject:From:Message-Id:Date; b=EPEyPL2U+vxjr8Etqv2d6NYa8RwxFJzgU84PseiFhy6M2Z9vTPBQL4NQCbeJno6FIfFOB0QNOwe9MsbvlBzXolUPzMoz+oOOkSBIQVUHhDJvs1F9ZJulL2uHeQv3mOXTs71xgpMphUb27+DLaqHsZ5EGXbT1MvgZCdqJcTI9c/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQ/JIoMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQ/JIoMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94E7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771275893;
	bh=LYNXIaat+E2m/X+U9QuZzo2Ecn/tFOFWuzkZAHrNf3Y=;
	h=To:Subject:From:Date:From;
	b=sQ/JIoMd6GfvD9Rr9MD/BaoLQHy2qZVmSOzO8gzTrNOavMItd+iwZSqS+wAFVqt5f
	 aZA/FTztxtP/+GYKUVChUzYPdrTvuW8NT1SQq2nSH0qc0HQHy9eb3rqowsSG/zDphw
	 XaWKEK3Z3O9oW/ie7X8qei1++VgXdii7oza5JfFO6VMxlBj1/O5IORhmzmDJ8V119U
	 ODV+wKuhkM7FvPedlcCa83KP8Juj6qQFMA9gW4D8DFmN7HtM+RVH08cSdoHEPdCJ/9
	 3LGe1lNkkNUUeCWOmKzr458IeabHL1ySdJkSIqn6bYZ7GYpNc5u8nGBAq3rUc6DBEZ
	 B00EC+9w6Uujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9C4E83835
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127589363.10748.4923069939546478865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69736a62208ed35460c0f7b0c1daab1746b4b12c2434d45f51bf3868de1d33e6
Date: Mon, 16 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771275893
