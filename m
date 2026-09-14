Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E74C4A2E15
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789420235; cv=none; b=FQCo+YfimCgIJoNecpArj1VuVLxLGu2xyF9dZYJ6dWQRVmPF4hm+7VxCBQ6t8xRPCz+z5kUUwtRY3ZM8UzFRSnfO70ipYr1UNZyvDYJKQsy8tpwYpAp++yvcLCSalx3xWOQ9k8MLw9tMKPweM2HBbWxYvEjDTJcCtogLi3DNHao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789420235; c=relaxed/simple;
	bh=9blTsVJQGeEV1jyQ3DoK0AjDmEEahM5CpYGk3N9Z468=;
	h=To:Subject:From:Message-Id:Date; b=VD6UtvRGm0s1pgLVFYfYPMXA4mmfqf6kyC29FTAy5jxQnGNEBV8xSikHisaBgl0qI9tTqGrj/h1ohqffLlenLQkQTt/PrKAZ+bOmqHThjSci8PWZB0qvOew/DC25MGGubgOw22mB209jGJWOQcWIXlkpFjBJaW5Mv4I9g6m9YLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N77Y/1zC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N77Y/1zC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC133C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789420234;
	bh=9blTsVJQGeEV1jyQ3DoK0AjDmEEahM5CpYGk3N9Z468=;
	h=To:Subject:From:Date:From;
	b=N77Y/1zCaj+Iw/pGas7ZSB6raF9eEsj3uThRFzQEr4+3itA5yx9eNizgW1ROovvQM
	 JmldlzBKnWclgQg1tW3KeiljJtKYK6evI51ySDXEfDgQAufszHCgPs8RgiZT8qp80z
	 /AdToSwfLKz0LssokQ09ymbkb4Oriju1Ds9PPeUOWgOZ6a0ojV+dzgIEKR45oUmTjZ
	 VVUg2FwAy0Xp32gH3ULwgcnPhI9qvyWYYRp6TEUucRIX8d2U/m2p3lMI2qeRy15RMa
	 tvXHreXlOOGSgerXanCmHia3pKtkhamT6Cxffho1V0T/0iDLBHkEvUPpGxcK3mGdrP
	 fpetLyDylhllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7883C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942023373.31871.3539412924475701028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3601774ef93fc4be249d757afe83d71bf56c85d8f975794548cd109e64d2df1e
Date: Mon, 14 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789420233
