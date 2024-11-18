Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B761E47D7
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731956754; cv=none; b=oCjNOwIaxOtzALIAKeMG39f3TmYwNAldimP77tfK3aeExyq9AudpCSoZlZmLhOrFMEH2C1w1TM2xhfatM5+UT08cWWN4V/uM2ouIjjnnLy/IE2q8RRgT0CHqSpzxptzWVlqnsbrj0Ck2Gk1PnAgbXC8E8xrQ2GD7H07ek74nubY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731956754; c=relaxed/simple;
	bh=YoIfcLFy+/FwUcPu5rb8zqXsiWvo25hczOSKN0M23oY=;
	h=To:Subject:From:Message-Id:Date; b=G9DbziqqrmhmHLHnRbWM0AikYYg59kmrvN8+XIwD8yB9Tsvl0DgR0OGOazmmUWzKPuWWLFU8EPVIO+JmPibyzksdf3ogwBSH/6xCNY97Pkp8r+jHIU1pTsXBQLF/bE1ZYFcOelOWUvQcmEzCjyRcD8PBmbe//Ahh+/8P55K79bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stb8efzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stb8efzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA268C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731956753;
	bh=YoIfcLFy+/FwUcPu5rb8zqXsiWvo25hczOSKN0M23oY=;
	h=To:Subject:From:Date:From;
	b=stb8efzjZHmCUwktOn7LGhR0u86gOiIwnrqciQDpjkhCiN1hSj1KXfPn/OZswdeDz
	 wrv3TLaQM7TYTjJOwB0cB/6friLH4IDDA5XTyut42MbCS79vYju3g35Q+uwZw/kHz1
	 KKY+B+fhct9wZvm5NOlIqrlfioMon7S9CdHEOy4HrNsG27/ua6W+I0UuOamc7EsFkU
	 fsxN9Mf1FjanXEx4etDwkTbnF6Yh1HF5tHq7EhxgRj6lvSQgtqcsRgLkYYHppjnGTt
	 D5ewwYVwEfXufTj/BheBP+us4razzz5X7k4rdjVtLcQEoLqHkBz1nf8DcvbRXECBKY
	 H/cYVIK7wluMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97190D591AD
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173195675359.29793.17982271727784593320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fa08da719af36f471ea379204bf5b3d1bb39c3c6e91c62cb08d15368a2aa61
Date: Mon, 18 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731956753
