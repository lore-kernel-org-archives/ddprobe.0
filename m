Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644FD5013B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791930034; cv=none; b=ujYtzAMeY31VY/NgauzGQUufr7GQPkis+C27am8RKrLNWXf+LUAgMGwhzkXT/UDHtTH0G1VmYzJebyEB5tU6OtkzSWU0z9Bf3pRC22FvPpGeK2igjIt60HDj+JAc/a0kMnkEpXewgf5kiWP35oZnkgit2y/vLWvqcI8SvF2HMOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791930034; c=relaxed/simple;
	bh=vbmZTnCj/qhOhGh9EoDZaZvFYequ+yxG1vxy7Fdq+QA=;
	h=To:Subject:From:Message-Id:Date; b=uFsLu0vbllZH4EPaCHqQej75BfPEiQGf3z6AvESHXKMG4OgHpTYHWes6LQEVYNTLKjVioBuW9/y785/N41U08MnPE0Nofx842NvA7Nc5ETX50wzuSFczwTDUHlGVd5QHAEW+K18hwGmfnHYDXtpvEutmsqu4aeMVWZDzcmqqUKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9CdJXdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9CdJXdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D13C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791930033;
	bh=vbmZTnCj/qhOhGh9EoDZaZvFYequ+yxG1vxy7Fdq+QA=;
	h=To:Subject:From:Date:From;
	b=E9CdJXdB2EimGxPkzNfLFBRoua+zBBjgvRW/wS9HXFo2usQcC3qOgwUh117VLspz/
	 Q3LfCn/sY7a/awQZJaKZ2ZJN8Tses1Z0gFobBlKVrDLnuJ9iRq4SUMHAXQRABWKJRI
	 KmjaYzRZZlGEQrwxBQoBmE8KKzvAhExph2Pwtz6woI1WlQfxB6YwY4fU1TzRqAhv3/
	 VNnEV37SbDpZzKHD1+0S/fo/kBl7eVrHHmBu134jV1w2eFpHpIjsqqV3crHzjXUK3P
	 WBqmaDy21nEjpRvUWveAmQN6whkK52Szh6vncRORswjOqkSTYEZFklrzcDoX5U/nUn
	 Fml+sWVp4VmIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA04CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193003369.14614.7768533505695016284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe5de9737a93fa2dcca88416bd37995ccd8c9afc210a48da094c948de3753d5
Date: Tue, 13 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791930033
