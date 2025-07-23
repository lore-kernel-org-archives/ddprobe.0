Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3442A246760
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753241994; cv=none; b=ImhY+DZ5SbV7vQDAowIKJYvFJt+mWm56e1t8jPcA7+IjWq14fFATX7teS1nVliyTcOtZYmVQiAr6hkdxElVq9Uiw1fP8j4lF0LKvIfw9tKDMpt5GR18DiiLPQepHMs269qM+6mkBF2rCJaD9mJC9uoJS0psqJNynyr4n3b6EE8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753241994; c=relaxed/simple;
	bh=UQl7ErlnaPFWn55IKcprS4F/oWwmCQ7X82vISRszsUM=;
	h=To:Subject:From:Message-Id:Date; b=gLvhePwcLhrS2yR5VGS0fFAcFi4LU0WF+p5RgVupjYDogx2XyqIEZTElVOL2V5uHLkLvJRv5nSUZPqUFmtbOTUYUfZXVEW3lDDnfE1YrsZ+jdtmvdChWTcDP5dUfUhCotEtMkcHQRno1KkHsdo9WHdXhcwaZfnJ/3BFjqzvHxiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtE8X03Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtE8X03Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753241993;
	bh=UQl7ErlnaPFWn55IKcprS4F/oWwmCQ7X82vISRszsUM=;
	h=To:Subject:From:Date:From;
	b=BtE8X03YCQIEoB/fqwulD3lYOFxXXh+q4TocDSp9mzDsvMvGP2o1kIhEQqYL3cBEX
	 oLz/eN+xryIUcIc8NeFjdecmy44kXHN2Wc/zLyis8DqFgMZr3O3HakIHJXFSndmROV
	 Dh8FRHq0CsG+OfUCR+9YqDRF3hmDN0iKrdFy5c5klit8hbtx0vyN+sENREEOoF35C5
	 cj9GmzxsglAQ2a6fCVq1LU6n2zycnn79s7P8G/I9sODS392GFpkC+DFpLQpDQHrest
	 8gsIyVhxeRoPNpTY1LlbRO3h7JzdfmQkgReuQw7qBJJgEiC168TGEk2rBiv+O1ofNu
	 9lwgZtRalzacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E6C83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324199357.22771.10527485803203876212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ba02f6c53dfd161211f1a6da4f60fa73a331cc954328b3cc448a1c6e2de34c
Date: Wed, 23 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753241993
