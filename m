Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B973DF008
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790676635; cv=none; b=rzqt9RwWoTqq/xs3ymztxfX49Lk82XNNE3xnp0/nOGl5CQKrjHTNdgF8wca8jrtFVzq60TOP4HX8McPoUzZVqBOH34r/pxqdnSV83tmGJUsI/o86JiEcTrNLsBkmlfWua7+EC26wSEbe29QszUf64NqDfqHFnE2qgtZArlVfIHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790676635; c=relaxed/simple;
	bh=VNAOuJPJBrFf06mQyeBuY4Y9PaiU6BC76FjWZlJQBF4=;
	h=To:Subject:From:Message-Id:Date; b=YF2N/9Sx8BU6Pxa32uRhABU9IU+z2YXYJjDXsJEg86ZpYi+DN8t3UuAAQjlL0RN23jR/1qMMck9zRuJ7niGs+aHY2mKiIJtjPtUCWT2d8MeCXHJNIB7inyM/guGyc1TnUneqxMmdzl0z6OFhm8FZI8YofjjrKPxugR+uoHbljB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8enG4tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8enG4tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA368C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790676633;
	bh=VNAOuJPJBrFf06mQyeBuY4Y9PaiU6BC76FjWZlJQBF4=;
	h=To:Subject:From:Date:From;
	b=D8enG4tuq3h+lzT0flIMu4eLwm9IkngPJURL6RLDPht8UpzHHB0/Du7mF6KpmKHg5
	 qRXo3/Vmd9dkpUT6lAC0W9HjAzeWKdI3yBl7zIZLi74r3fiXli0TbLcJy5VjHiOk5n
	 V1bnaK831FCK7H/QhUPZASQeca6hjzBLSzdAjryyda/j2b+9urMM2rtXc3JDavwozF
	 ylr+8hEpv3RGJXqWVZUp4KSCVUcmAeN/JUaGTbsYKOq1JtNB4RgcD2vHmNa8wROFTt
	 bswj+nBYfy2lgeKZi18Uaayo2DUoOmOt86s1wAzEVRGn810E58rhvbVolCwDiQPB/O
	 DKvNrEGgYUCLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE6CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067663369.23309.7411972491560922959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b925bd23e9542b9d249ad94615c1f4aef91e043fe3e6dd22fdede7b3883a9f7
Date: Tue, 29 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790676633
