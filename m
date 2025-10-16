Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C4D23EAB4
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760632194; cv=none; b=UO1Am5s/vxkZX+fTwuHIjoPykAtBXlU25BaCQXsHBm78IXCU1KthdUv2GTgyFcCpY0NjmLMNLWmDDpEfUps8VBRiyxzk1mNdr3L/HEKPNMoaGkkB+j8QCgGmJQs0LVXQIY2QEKAFIbzAr57/H1/UOJ3CvQ8pCFP+kVERockOLmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760632194; c=relaxed/simple;
	bh=wyoEdHmPg0ZecX9hDMYG4FcTXi3WF9ngS9OuCM0o6gM=;
	h=To:Subject:From:Message-Id:Date; b=L9jzV6nZ6EwXUJM/z2gnChqv5C+Gu98AzjtmD7jY5y+5VUIvPgKmrKAAFpz6AweDXKNmMSuQoKq4dIACzQRItm6BhrjIO7HPNbaWp1Wy1SfkNPD55gThkt33EYG5vVSd6OiLqiSYv4lNX1k6CsGGXtVxM4oMymUCdjdPKSv0Kbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGti/iYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGti/iYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0108C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760632193;
	bh=wyoEdHmPg0ZecX9hDMYG4FcTXi3WF9ngS9OuCM0o6gM=;
	h=To:Subject:From:Date:From;
	b=tGti/iYR0RmbjaqXDN6cG3trW0JJ/1m95Mb82Ahzd315Mx2BNMDCeBhVFjTTfZBo5
	 8K0VuU748jGg5Q/tc/TVws8+r3eOsB4kZxLLfO5tkrFAsIP1xlRfEvAHWlb1oyizf1
	 oiTNJu8N4A1BsAQ4kSEQq5Eacw25cTmWBgzv1Bo8tktWi6R1w4ki8FYhvMzPAwJXj1
	 MQZWtkEspE+Q8D7AWyzJSdYfhQwmY1cC+uuiw4/SsMP7TOeLv6ICT7EAZcIM/IuZfe
	 fYPrVddPz4wlVCAJkDmYOQvWOPFoaHl1mY9jvLe3UccFt3tuH75UUkzr8F5pvitmSr
	 pcyS1KdUKNynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA11CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063219357.32205.539527175533811860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0911882bcfa54313feaf0ff4eb96f21047fcd7b6b55bae4e17560ba66763a8d2
Date: Thu, 16 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760632193
