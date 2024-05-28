Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D73616DED8
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716920063; cv=none; b=SES3IvtSA67D7OhqIf74pZvGc9LMmR01NKh6zSiT+3KvtIdYxsBNdjULvphMDaIWiBX081/7VMdMKZFgmjpEycVgzJHv1t/IRg9/rsjY9G1TA0BgH2TrUtqPT5Ak6pUYTKVtdOwKytJoeHvWb/Rg2sfyRLgW+0UF8XmLeh7L8JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716920063; c=relaxed/simple;
	bh=5RZsSm0sO53o4ADIktlK8ur3k+6o29iuW9yiJaIxQ/s=;
	h=To:Subject:From:Message-Id:Date; b=LnAqkUk8P36fQL9CVtNS0uqOFIHKWB8eJXXvydIcipJOGKac1+wI1+tRV5paHi216D8kGfF6hXmpysfwnTdBaxDMZypIbfNQH80E9RwKQHY4Lh1e/PQK62Rph/7jp5FtkpBEDmq0N2Lha9yfKSNdlaIRnTU7JVoZ+xuxE7beDwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQCzaCCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQCzaCCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D742CC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716920062;
	bh=5RZsSm0sO53o4ADIktlK8ur3k+6o29iuW9yiJaIxQ/s=;
	h=To:Subject:From:Date:From;
	b=FQCzaCCVjm6IDaeAgekuMLySr15qYQjz8/zHi5pg2BwJOUVu0KpwUakGA+e/0PXAB
	 Y0Vv75+e/mW5+yJ0ldK7NHh0ISQoGqEADdKIgr9muf7RHtwhqVQ1085g01dFgb3tRH
	 r6DJefUqDYuw/oYxz90fI757PeYI4fvVzBIGnwYnfx1GeazrsyM96zNOaK2w0Ql0MD
	 2Gr3IGyEggCgBSjhTqhzBW8hXf7q2Krs/zWX7w/KHQ8LFu7UQ9i1VtckfK7xrfJ2v+
	 ITNONeeXDEIfiChvqnZoqX0EQ8NgHbRrRinb94T+RVUHnuWmEp6EGVMzcw3zuxTI8x
	 0k+d2g5LlnjrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C70C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692006279.20959.12868102957866456994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaec33f8b92e474c8619ea2d7dfc287923d0f0c3408ad8936c8d137edd05e070
Date: Tue, 28 May 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716920062
