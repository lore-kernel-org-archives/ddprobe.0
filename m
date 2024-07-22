Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655B82CA9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721653554; cv=none; b=Qgrws6DVvZnKEritpPTEAMBzpx9AOpZo0blUlIwMbRmJB3q+EU+dbZu20WFzm3CtGg4HN6uYQa4Dvj6Qv2kw2BGXeQ2G7aVQTLsuPEEKjUvVlK1D/80ucaGXjHC0hEaPNDTYMkzsgXs05SgzrjXs9naSjWbYxFKG52GA2fjmBXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721653554; c=relaxed/simple;
	bh=tgGRHUrIE+pK7iIpkZ+RRtnVs/z6KL71f8A7To7Ssho=;
	h=To:Subject:From:Message-Id:Date; b=YhUEX7e5F/UOSEkfsTF+v2mMtGXmtfHvLyZQagm+R5cGQInZzKix1xsndnZkn0vD63OFHXupEshKn+4ZMvRqY5XIwyuHoeeSG41BmrXCNQT6kEozQa7OEYjOKIAIbLCwcbsbipGO65URQHnFwpTMmoZnVCzZv47hocArnvq3C+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsmUJNA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsmUJNA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30BBC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721653553;
	bh=tgGRHUrIE+pK7iIpkZ+RRtnVs/z6KL71f8A7To7Ssho=;
	h=To:Subject:From:Date:From;
	b=KsmUJNA3MNDoZkbAUZEKUf7LphFgCTCIeHDr/kirGCj7onq93KditylCWNTwHGU//
	 W2JRTnnOQZjLme3OOwKY3fSeFWRAqH8HeHJ/a1hLdrKnRwOG8NibLb6xZKIcP6DKIG
	 tVVfsWqTo3tgdeZ3471wG3jR1icKhSAHwQNPPCt/32OX+UCp4xfdlkycN8JbyVB2Ha
	 jbnS29soI8BqZAEdES5roHmI4wYs9sICut4MYdAXtFBl/KcbOEhqf5/N3spU418h/1
	 DeupjexUYqXyTqaIH2whzUuNvMWonaNa7vbboYGgaS+P3m8H26eIb537Jc1Lqvnxl2
	 Ml4qe7Q7t3YWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A984BC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165355367.2186.8180367803814423564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad197fb59a626b5d9e0696240a22cdd59b64f64c2f96994225c14117b6a73f8
Date: Mon, 22 Jul 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721653553
