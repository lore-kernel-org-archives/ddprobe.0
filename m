Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4569F2D7DF7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760692794; cv=none; b=eCFC+9hrrB4RxfLZNj6LN0JHbeDdGrT0o0zpoayWDovVVhvbqE9Uw1CcalzYBp46iBwdSzSzzAnP2AfnXGXS4pZtrunK9rWnFgZJH0XTxIPS+xLF93+sXo3aRCipQ4FIHkwTQQaa9PFMIdBEbhXb2e13fKdpjx8uKUf9/XFTWB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760692794; c=relaxed/simple;
	bh=c0HqTaWOBrpUgwN9Id40+WO8EbagSZg2B6YOhXjuZDM=;
	h=To:Subject:From:Message-Id:Date; b=PUg8uedswYB9w2MwBcLUdevNJNuHHFKxnaXdR8QIlZrnuiEg5OfMGWbf+R22DIYQ+bYNef9IpDZ1ATBIpWTiGHRV0MY0HYKLwEtgG2T+TmyV+tpY3u4QmNbs2xzBusvkGzVKKhDB3WiTu4zsRh6FavolQGpyV9TjQPzjkGfnP2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cayKdw6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cayKdw6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE53AC116D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760692793;
	bh=c0HqTaWOBrpUgwN9Id40+WO8EbagSZg2B6YOhXjuZDM=;
	h=To:Subject:From:Date:From;
	b=cayKdw6efrZ6AjGW6EL7nhhZ4/UO/X6RxE1TIEOXJUpNZtNXXY/2HX2JHE0AkHt9y
	 FPf3k1i2vLv29BVrulTORQAfiNmMi3Z4xw2ty6xFVgn26JfM5yGRsIeQ4KMaDan1wF
	 9rf9Jvy/y8Fko66Llqp36VwgkrRdR46yqZ9FDnO1sABevHQhS4upj7974EN6AC1Hn7
	 lNcyZy9SDP0eYbeGQGDSzsBsFlPz5RnX5XjoxFAc7s3BOYRb6Pim9KJW0hSmzsnyC+
	 na02St5/ihF/WF2YCutELx2qIzS6UVLA/d36IO2qC05jrmCruia3kvfOiRhtLzEN88
	 /ttifw36oJ58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92872CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069279359.30886.15493397734866799638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271ef1199b4e2dc5668dc77889eb9b1510583505363c287f86fbc923ea01a67c
Date: Fri, 17 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760692793
