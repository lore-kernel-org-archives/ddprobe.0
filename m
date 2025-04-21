Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2A41D5CFE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745227196; cv=none; b=BJMMVYqbwWxEx872nSRzHAcvxo5tWcLrmqdjxF7EPKi/pnu6mDe7j4pgMNG+xl0WcKDMLycl7nVq5qDkPDhyo1UscJ5auRHDtAp/8HKs96DPknj1WPn+UWSbRePUZAPILryk9DnVOyGEQwEQ5Gd7keyVbLPk1Wvtz2j8rTIiHKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745227196; c=relaxed/simple;
	bh=th4EhcSpFwN3XzlEvShCmyYfEsTdvfMUA6n9U/+VgsU=;
	h=To:Subject:From:Message-Id:Date; b=s53dH8XAz40ZccFEPCK50roMHdpencxEm4TGdwj0tWPNZ7BqESDU6opqqP4RdPZtiq+cOPb2TMoik6jzUB49sFDaCWnuX8eLjD0jfUG2JDqsOJarkScXCnxKaUmaPVJBdnT+tTfNiW0T5mm1SJ6enM4Dm0cAF5bkoB1VMS/WQJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bULuXSnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bULuXSnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B685BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745227193;
	bh=th4EhcSpFwN3XzlEvShCmyYfEsTdvfMUA6n9U/+VgsU=;
	h=To:Subject:From:Date:From;
	b=bULuXSnxlBrXdAgU7F8S3uOpQ9yPbzQC1w/x/D2i9k5lVJAwV27WCaB6Eh+FYWlOB
	 ABh21JXdzSf+U0Mk4Eaa6NWWMk5qFYrKsqJqWcLKFylFEKUsb1Wk71BAit/EPrim26
	 wXeQs85NK8uo5qygzeQWNkuCY18m/4J2HmIXW1OESMx4E32w93sq2cddeB+NMtdAnd
	 e3+XYgx+IN/zlOef0I0XrPPlDilhpABHgM1DgaEWJ0BF6PnkUlfUvEmjiEk7HXSVTM
	 TRkr7RKBvwXD2fx7QByopEp304nkNw8T1kMjf4+B+tQNKRxOIWcl+FOjdJnZK10LE1
	 z1Q1wq9mUpJNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A504AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522719365.21632.17618355872422832350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75b205eee078d5d26bdc672e8c5c71f70e7c618e8edc1e1f3faa36314a5d303
Date: Mon, 21 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745227193
