Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD521DE4E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275354; cv=none; b=mbtgLdXNd/s3VD3owTD+PfDcp/jmeYYkBJeFYLn34xe6Oyc+Z5xZFXoXfPTj+5AS2tKVgVK1XIqEUVKDUVPzhmNtH5kNUat4v6Ijlfa+McwKWnR9aUh7eMX+GfZ5l4p7bO3QHI+RxXOMuC13YQO+oR03PNHLCI+fzBP9L+7VE4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275354; c=relaxed/simple;
	bh=tmJxVjJhtDWXq4uiORRMMFuiUs9qO3BlxUTgtDT+5OY=;
	h=To:Subject:From:Message-Id:Date; b=iPH2/x25xUiX9I5iJYj10LGHBjdUv3KCnuuShRLTWb4FuAELhzV++mA75DbzTWgVBk/ApvScWTrcMddtG6gsiR9YknkLTPz9Y3tSCYV191grhoEr8DP9te/vqO/d2NNMBV9UyuzyCjh2xui653KIrZF5+luRrYc6vL8S5r3Vm8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0HZplCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0HZplCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E28C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732275353;
	bh=tmJxVjJhtDWXq4uiORRMMFuiUs9qO3BlxUTgtDT+5OY=;
	h=To:Subject:From:Date:From;
	b=W0HZplCdhAwvMa7nI9QowzPWblIHEdqXwgKaUiOooJKIIx7uJt9KWOCDBE8oISKbG
	 UBBp7EKNkMreJsv236/HUtL+M2crk624xXS2kYJx8O3ZyZz24RkndEqle9Q/j2UEYl
	 GxV5A5mpaqsgEOI2gretNbLocena27s8GzhjiTQB49FzLRwGzG6x1zB1d5n1LfKkAf
	 6q6mdHNKh2lKOPZdOwdhcdwEmv3e+mspOaGvqNX43HWAakS3JrtoT1VSgYtzupUzH+
	 +5m0ucPPeLTvnaHP+yoct5Q1Sh78Onu+3/A1dmtW2R1Z8sZNs+dnvGVktXn6XCHwYk
	 4d0yiQGCc9l9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D89D75E2A
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227535358.16306.1647100708385320010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c27a087fb4b2656ffa934105202c5bead87966e8688e74e23e2ff5d87f8e38c
Date: Fri, 22 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732275353
