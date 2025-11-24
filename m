Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C323D31354B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763997713; cv=none; b=bJ5COM6q9Bhgsq6cwd5Z6JdIwdymsdbIJ8y7er9tAtWH6yJJMtZN9sX01eZvxY/VQB2noj8WZ9/+d044fMANyjt7V8Ix/ri55wK6C0D1baXYF5jOnJzGLT6RNS8+Y1OxmezKbCQc2ODEMLMoE8iUbXfEOfbtCoL4xsOwjsceFqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763997713; c=relaxed/simple;
	bh=LKq0sAG99ILbT3iFNn1H01iKV8NwEdxL+DiNg1QQKwE=;
	h=To:Subject:From:Message-Id:Date; b=WXvgXjzKZ92pcbpgSUqVFmMucnxVdhbhym252nftp7+2e8/5lneY+65Rsubigq0Dw1a4FAFrIpg5svqB0oKc++pKGq7YegKOWZG0qFqd9PsRo5J9tTqjpoN5kUQ//wxY5hFgrfKOTS+I4SBIByp3iq6kYsEdM6MVCzlJKG83oBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgcW9KRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgcW9KRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C28C116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763997713;
	bh=LKq0sAG99ILbT3iFNn1H01iKV8NwEdxL+DiNg1QQKwE=;
	h=To:Subject:From:Date:From;
	b=mgcW9KRb8iyFtNYZtSVk54bkfrYmerBoyIKdx2E0mggAdaer6rV86dBHoGmX7Ro2f
	 SOiNrLMGe++ZKna2BZkcxwzN3u9s1uqZOzePXWHDJ+DcQSY6NoWVvRwdKp9VS5yzn4
	 frNWjbVvngmC9wC14LOfQafzGFyl20nVi7LesT+4B412o08Kdp/jVFOO8oGgKRetEg
	 8ABa0gDIX05kiqIyzjESFjmdxp6fxSKQ89gSgUdvxVg1wL1057xa702bI03+QHyD7m
	 Xjwnf7o30XN5RyQVWYa7rhofNa33PmDxAwbEE00muki/e9NJvRIARHHJ2HajP9ipt8
	 WLgMJGGvaeZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94844CFD317
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399771359.29419.13557043337981019856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be8e37ed32d4534bda244d2ce0b01e315f77a8f7a5c0a9f3beab8e84fffae0c
Date: Mon, 24 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763997713
