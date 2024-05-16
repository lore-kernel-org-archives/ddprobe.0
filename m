Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E15171AF
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715898743; cv=none; b=ZVRFag9iOdWfA4kiMlvGjgdO1fXFWYuNJck29PPqzafQ8IjlhFp+xIfTgxKyVAqfRIUjPSTxVQGYiI5V7lJYJLC27A+Lh4kS9ZWzlPFsGA8WN8umr2mf6IuvABDk3+TjXp5hXyfGA5kGJDk4x6RxxZKa7lNRVua9DNgEd6R6arE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715898743; c=relaxed/simple;
	bh=x6hRFAjhbqLSENqIB9mowHkAn2RXuLGa3iMkmJY/pc8=;
	h=To:Subject:From:Message-Id:Date; b=cXXsx7OtnLXSu4mpn2yE/HtaaT+p88ExvaLVfQpcizMyv/qYnfyQFmejSQzuWH7V5tgCOu1g/ptQe0R6XBG2ggyfD6+QJJBbL3obyGhftQ5qOjghDTfqLvIrdycsUoaxy6yBBJxqw/v0mvqGtssOLSPXLcjVWvuX09gpC9ZJhYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QY2dvJoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QY2dvJoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3539C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715898742;
	bh=x6hRFAjhbqLSENqIB9mowHkAn2RXuLGa3iMkmJY/pc8=;
	h=To:Subject:From:Date:From;
	b=QY2dvJohGu8OstYBmVTRXkXlY6+gtX5V3dhm85FKEoJwIRsbRyW7oigo4nzExffv1
	 kpOYXFJfMpqg6A3CDLPm9LNbIKgYB7eCKqEFt9cAEPzjteHE7Q0viKTdc4iS9dSb6p
	 ZizsRPEfY1jFJfQ3pJ9rUKk4M9RWXsfr8Rpg5p+9pUoIFsCgxMwgCQ/nQgzqMoN9A9
	 GccS6QPKbn9L11eO+IvjA1Kl+xt0SdW6mGIt3Eb/BONlEGXcfZkfsaijfHFmXp9Cl1
	 2kbXC4ttEhyhF9Zitar6zk93UDFEluH9PF0hzcP6oGa2QYTRSGQvY0SC5tQout+sWp
	 Q1DLYkBO7E4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B4CC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589874277.7096.7795743127110026168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bdc822645a7484f5778aac79a153375f029df883a6ccb1ce81a8758cc6b7cc
Date: Thu, 16 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715898742
