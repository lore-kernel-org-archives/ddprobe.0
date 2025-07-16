Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D424293F
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752683395; cv=none; b=tF3SJqkLT/YvJbDBVWi+jR6tmN0PivKXpmQJ6pUi1mPfwLncYd3ORoKWSdnoK7WBkibWLlEUCNxoE8kfQgHd33YHaH0k9cFXd3UePe9ikd8Yfcr+Z417T9wFTC2szx+JZq8BMrj+l/xuLXZedGldcWsqsK1KG8fqwWeoNjLwDwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752683395; c=relaxed/simple;
	bh=rCTKCT37Qbc5My/F6T4lRog8VDKzaEA+ZEk4pm/pPMY=;
	h=To:Subject:From:Message-Id:Date; b=g6S+D/kqbbbsvmB07G+JAOIFt9KyzH4sI6LBP4LRncZD2DUdNZv0QmdGFSEER+WNKbzss4oEhkIqIuuriafvpwSb4KXhYgkIBcYi6OCdArpvLU/mv/cH2TFoyuwgvg8JQ4oWO4p4TNpcDUc2reUwg/9EGWHTduErgT548aDv6HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvCGTJnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvCGTJnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752683393;
	bh=rCTKCT37Qbc5My/F6T4lRog8VDKzaEA+ZEk4pm/pPMY=;
	h=To:Subject:From:Date:From;
	b=ZvCGTJnztbcJjr/l1GIodlD3hLkPx++a2wlDD1zWuSf+8isoOyo0jyWZrzpcS4o5v
	 QZQ4xsOnY8J5GpG7Dk5IvB/oRNxv46qwu4DMTCzs8H6Tqp4ciCPQXjXx4HRjYE9E9N
	 7cjRVsbb4DBDpAtILsYyhhb7L2ymWZFxYVn/d8lgF4XQMTPNnTA9iMm5iEyUUMCbWU
	 FHZKyLIOtHO9/b0RIC9aHsHtoYZgSLoMCyVGQB86zyl1dt3pF7mFpWAw41onPNEdJP
	 fkIjy/qxYLZLbTG7wwJtit61XQq/pqAd465rtuphK6exTDs6Mp0GlY3CglHL2JXACL
	 term54Bb06Ldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB4C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268339358.8790.8045087104232577826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193c91062882357b38522bcf55a50d29d158c1183b8e8d8f1d3fc86338924a1b
Date: Wed, 16 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752683393
