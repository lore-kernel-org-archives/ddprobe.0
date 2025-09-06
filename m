Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A75F1EFFB2
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757176794; cv=none; b=F12JBjQbrsV7T3Hco7GzUOLO/eGyle2qmvIcGlbUJzCvBry65ysHVlB3vCuRbLh9Vaf/rZKpYsrZRbpgNBZngzWLWjRF15OlK23xtkRVNRtcmSl5afoDc5s3TU8cNFfzYhHqi+GZwf7cT6K3UJ894ZvK9m2tfJv7NPUReDudo3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757176794; c=relaxed/simple;
	bh=Etcc+OfTmSUgZS0JgRt9ec2sGfruZb1Ce6SlWDXwAqU=;
	h=To:Subject:From:Message-Id:Date; b=Rt4iBL1o7SfjvPuzHQPzGx0UTV16Anelk2tOWgmQmVB4GBj6nyuNBhthStpw6e6pQRr2GL5skgtNpadK71xrYk7fETtQD0U3uPixt9QDu82tv9wfNxMXU3wQHTpG2nHwJepdc3a68iQY80WjrFTGuUpPrjciOPKaAOHBSJcDQrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/UIWH94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/UIWH94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF2AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757176793;
	bh=Etcc+OfTmSUgZS0JgRt9ec2sGfruZb1Ce6SlWDXwAqU=;
	h=To:Subject:From:Date:From;
	b=M/UIWH94Qibs2zWU4LTbA5HojIOUk+UoP0KbjkJZuYojsBp4KZCUzYz7PfYSoybKS
	 ZZ6/+s5hEaBUtoKRjUJuTo9aYE6EMV5MzdlO/CogDEuLx+S9JSDMswdbG8n4KPufbs
	 iREAanebc3JWv/HbJ8B2gQj8Pv73ObrgfTkG5pHmeGhYiIhFwCU7+m3DjtHE6tb3ll
	 3+HQCCrnEROsqiHgRXeo8RUvE5EgGQet4EvsaXjguj+fc3evPApmKMJRWkq8a/J293
	 a8OHQpv49f8TkUFaNa1H8umq6HmpJoHIXif04voDg4J2fVYstoKohRmwMsk7Fkdes6
	 2Y1zbFDDnEKOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4BCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717679357.5167.15059226971476538107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8edfd70508fcf09ac6385cecec42921a47f1815e3ea5174b9aff78075426a96b
Date: Sat, 06 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757176793
