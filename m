Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297481946DF
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757716794; cv=none; b=glnY96XUxgBV1NmIjyw4+vsgat5yPb9r4XuQwvvR8lBFKvXSdpQWAlvtK+XDOmQRqALQgOu/+AZbpTqCR3q2iXm7KPhnLfkRADpI6OEpYAXjd0H1B+rQ44eA1dFzpyomOdiLX2wfORL8WH3PJcdon/kpMEMQbc4Fz4lUoNxa5+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757716794; c=relaxed/simple;
	bh=1TVTSjWaXfZtqdWdrMsrZItPanV9GUT+p2LbXVoYfso=;
	h=To:Subject:From:Message-Id:Date; b=m5Hrb1ckdrgGYLYotMn5cBzMzjwXa3Dyc4wFQ4sr4v2Bc/9HRX5PXaxM3KtNh2qoQozlo41fYXuSwNkf40kZWohEGX8vFCUYf/8uF1nlru4BQ0+DYoyL4KlD3o5ERmCA3xvxEe7xDknmF42TVITupr485ChAX0a9P1LrVZziWso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEDqOfKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEDqOfKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1501C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757716793;
	bh=1TVTSjWaXfZtqdWdrMsrZItPanV9GUT+p2LbXVoYfso=;
	h=To:Subject:From:Date:From;
	b=hEDqOfKoQn3gtvGT6PNDGx2Inwt/xA8Zzlxo7nSTLQxX7PttkOJ4txhb7xeXUPbnn
	 lGWpJ87hmV30eU9R+FiplY4RJzRorxtII7rzDrP853RSQUBdoZHnYA8i1eDnrxnLm8
	 k08piVGijCBaa2MTs+m7VoGyxyXXnIwPeeGjpFlzXX5NlWSLuLkulgUu5iKkQ4t/yi
	 lRx4VjHhw+tpdwhT65Cl++nrNqlPBiJ6t0YRZYzekO38M/7/IkGtJzSXByoEoaqObw
	 HWHr8yG8jcyE75L+7MIfAUCeAYmtz4ZmuWgcrD4Hm1Q8yJEAaRRufoYuKaewl3JQos
	 Oxoq3ojuH9BSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B7CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771679357.9589.52163240979130856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d33a60424bb8f3e718feafacca7fdb9d328d64ef898135fb9e53f3ef65c354
Date: Fri, 12 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757716793
