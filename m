Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DC444A40A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788518434; cv=none; b=WExj/AQ7tdvZxC0QUtg2L0a6mOThjf4uK8V/wf8y+qVsfdx2yFK2N4RfdG9WVfnc2DHwzylfNWUBGiSCbA1+xrVyeXmzltof3zy+wb1Wok+VFJf84KPsV2kDa2Mcnq9M5KbebKZKx7uANOJcFg3NfHR9HkT1umZSQiFwCzhUy7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788518434; c=relaxed/simple;
	bh=mNvgXOHmSeHB18KnV/uCnLAs8IQZAofQ/7j563STtDs=;
	h=To:Subject:From:Message-Id:Date; b=BKRJPsrSdyF4jfhnOdWsPfLj14qQVhK4BQQpgqgXIPkQkTYOblrrTptjHQeEJTcxPNdTeI8iExkk72EsQPVtxMYV6fjYKcA6LVyvaJEDcFHUNJoymRpK0iEXSU+c+gUoGlGj0ch57ArdoFTOEDc7GX3/hGNEeyy2aXVEU0tNigQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnFWRAQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnFWRAQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59DEC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788518433;
	bh=mNvgXOHmSeHB18KnV/uCnLAs8IQZAofQ/7j563STtDs=;
	h=To:Subject:From:Date:From;
	b=cnFWRAQLhyjFG5QvZwAfWvOj1IFq/1emUT5kh3GC9uZIX8ypZySdqn1FCjMXKIFpy
	 jiWL4WgdbSuH4QQvIZCqeRMppYYD685AvezOFeDIZk+Kx5RJyDFXNntBrPdvEkEYxV
	 ienql/7IryKKnJ9ENtkGs2wLrXmz1BIbPcCOACcDfRXx2hC8/UB5h2781+1dgREjzk
	 wzkMlnywlSHmjHGRbykpNLe9EG2FjmvifqANj46cD4MSKIk3HbNcX8WNxZgMbebl9I
	 Si1/QWfpGeueUYbrKy9a9oTyCzliQltDQ+QRJpz06aBmCECaYQlvhJeeQUBPUVnj/p
	 vBOOQUMzA2IhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21F0C61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851843371.10035.740169468527897705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad664b4e4379f12baef035be79ec97bd2d71f20204c1f78853716a6f622aa2f9
Date: Fri, 04 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788518433
