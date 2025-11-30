Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34254849C
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764528774; cv=none; b=fIHd89taC4gCGz+08KHgHAMsUKy7abC2EY/N8ZOQJtpXqDDLOXb3lG9iwRPwpEdBeHHB7PI1n2OOrVw67Yx3N3SjKuY5ny0e+g1GKp9G8c2ZFBpNkPxOAb6rCaOu8TsSnOQX69g27R4K+AcqQqzLtrfl0Ovi8haWzMcMBReLLo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764528774; c=relaxed/simple;
	bh=Qww87SLWwDcLcO2gNnOFOen6x0LLotlRniKDil73E4o=;
	h=To:Subject:From:Message-Id:Date; b=mb9QyXvo0XWWrllCxbQLLnQBZFMANt4YSyT7jS6/T6y1hErlKB9kPt72o8t/gD+IZWYsV4FdkmqHAcHOBSZbASAwU9FvTCPDjDK2NUjZlKP+qSMOZGCpsap/Qji/m5GDwX/izXcEhXsUBUUKw/WVDMHdMWonWT/Q+fEG5uvP+Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBxcIxj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBxcIxj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA3EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764528773;
	bh=Qww87SLWwDcLcO2gNnOFOen6x0LLotlRniKDil73E4o=;
	h=To:Subject:From:Date:From;
	b=XBxcIxj+UcVBMKIbTcrRLeUts454nUvid9zRx5FHMIoJeTA28W4JYxw6vg6rQS/vQ
	 NErMUA3p/HRRwrJEd7B4bI/G9Z5Zeg6KeK77FF2S7YoaVNJfJT44x9D6jxTlXRD3Ds
	 XsvN93XSD77YHxqc+zf8xcjCa+76xU2DF2HMr5lj0OiXsG6+R2nv8lWgF2E1dOjLV2
	 bkn2I1iAkmL8r5oOM1+XWP9bS+BhFXOUuqqIfD0YY/oBJZjG4VuHpjiaxX4TrgsPxg
	 ESbROyEwgC2kP+ktBlEw33b3rjGNzath/gbvl2FdaSSAQslVtRtoNtXe8V6nTTiZH8
	 T5dtXo7w/KOwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E61CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452877358.24419.6173568001709919623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a155dc4a7b81cc3fba3d6c92b5587c4f8fbe78a230496582517d11f2ba431eef
Date: Sun, 30 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764528773
