Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE011E1A3B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769646234; cv=none; b=D15yCJ0CvFIRTDmnCfjllNrsNYba/SozkYhWRemKw8CTP7ENCwFtv/oxozCz0WD0Qo4PkFes6r6zbSpTY/+Zvv2LuP7E1zGlycwtuYJBZu8ulOyy6NcdkurMawj4Qfo54vTjHPcloVOjKFL2Q3x0Skrj9lac9kpMm6zDV07pC5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769646234; c=relaxed/simple;
	bh=A+ZLMcK3Q4mXAKmW9V4bDmSBmLvv/d7oCo51jZhiraU=;
	h=To:Subject:From:Message-Id:Date; b=q+50ttO5HRDZt8wdrZ0ScUhBtSzPzRsey14zr8s7Yp39ASZyCtzZutILqL5sR5gkJHqU+6nzDfiLgwHejkEx2v9RIUxo9MiKrHpaRmj5bonzM3HaXVxvzLeSIyBeGJ8zu3QuVUaPwUiB2v97LT6N/E8BeZN6EUm/UolcBSDHXds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jtbsc+aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jtbsc+aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE718C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769646233;
	bh=A+ZLMcK3Q4mXAKmW9V4bDmSBmLvv/d7oCo51jZhiraU=;
	h=To:Subject:From:Date:From;
	b=Jtbsc+aGrXqf6dqQcQ/A25lk+S6pDYYgM4a0tV+SncsiI340gVglnfL/mFbEEDdcU
	 PMIUGdYFt9LQt/F80STRZaxwxon1Inraa7ExMbQVzIDXzubASZxB28ZPt11rQ9QgTz
	 RgpKZVH4w0zpX9P1DMMay8shJaIHkHVVIbxML5MRhweMD57bTvkM8Zk2h3DITsoemT
	 RFCICfFVt/ewJryRNZCZDYRzYF0bdBwms6H8mmc2ywrQEo+fkZY9/9l2wOpMdi69in
	 NRHRYOqpz9lKdJ98Rz4kV1R5Sqlb8Xcf1k1nQDeoX8R/LdgiXI+/RH0YlN/yj5RI3G
	 uq4RrEQnbJV6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99875D46C01
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964623358.21983.6592288453737440273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e600946848c378a8ae372fa6423e6c8f435acfe4082e2b020f9eb51e0ae11e99
Date: Thu, 29 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769646233
