Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2684B26FA6F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758190194; cv=none; b=PBC86ImrJ3wQDgvEwxu1mJ/fhi2kowtEBxI1J6QKKMFSNgrrJ38QPcMARQTmZ0nATKzFEqiRYH7oxVKuXxKi2awwT8fgz2Fs6/2qtwITrKVlC9+HsoTBBx05nhc21CkEQO9ItIqiO6TX8ENyIxgFAI99kXka85jC7o3XiQ+O/Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758190194; c=relaxed/simple;
	bh=v7Ov5DEAJVHgzYVLBADk/YpUHepUcShSHywDt9HI5Ek=;
	h=To:Subject:From:Message-Id:Date; b=MCxGcbwDtFI8qm1bb7aEJynsBQsaxRaqnWt5VvEo1fw/qsD/4wBfKR47Ut5JVaTEcrpZAORyXOVb3/crnm3TTsluvyJRKCk2HfElCYPpU/S2+n7U7gbr3VREjufiNqyQEetlIwiHqsRnBEwrp6yPDFHEZHqwRmLir+b0tp6VL4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8Cq7g0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8Cq7g0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758190193;
	bh=v7Ov5DEAJVHgzYVLBADk/YpUHepUcShSHywDt9HI5Ek=;
	h=To:Subject:From:Date:From;
	b=Q8Cq7g0OaTBRFDgHktxIE3Tx60tPfBB6zb3j5XF6zmLfOhaHwq02VAUtn1D/tPR/E
	 a44b+9nEEY/5ZDmYIoVBxAQkqdfvcNTY5ZWY5Jv+mzwjHek5B3s5AUt/BwTqS/+UWO
	 8ffuytO/QUiA0/6ituIyjiyTlOzRZX8IgDp+RcfSQegOdknU6UIxxqVoIp5CTLBazf
	 s0UpwkJOiaFfrLFXwLVxjU1Du6aPYMgljWFWTeeWjMlSJZQn5IBS8XLH1nl/HVIEyt
	 IjTYWPC60Tz3W8IaIvEl6t+g9e6IPPu/3C+R0xgxKcSjZttggZLpcMRwPp6Wdr3K1f
	 6YM+AQrjwr4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276CCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819019359.30428.10061399212941595506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55247873ba7e9a2c14814c49c31bfeac019d1fdcf856672cfc0953bd8fdca6ad
Date: Thu, 18 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758190193
