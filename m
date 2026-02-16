Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2948E2F6573
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771276494; cv=none; b=LcisPxUzREUNIjCl/NVw5Q5IDy9Kd2ncW2/5Zd9gnn30vPoMFjgGmUOBmeYo8dLWtqxPeBtzLFTEd9eRXx7bblqxL3ZNv3XXRmF4lQpiw0GFc7vrRbmgq2lPmlzugToNGQ/1xhJYewMd9/U4TcwxvtDJcuH8kz/Dk/42fFcZNyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771276494; c=relaxed/simple;
	bh=VkEGJrFM+LpWtmyzWSQkqB2YD8JP49Ih3nhzddYGKkk=;
	h=To:Subject:From:Message-Id:Date; b=E3ox9Duvmu47mEI5gsrWXTV2iG8ZrPmQIKrcSiAlEc0y/ofMN3DRMNDCFSDJUbbkrfDPztpXH0XzLt+0Sa2yYTx9E4WAMKnaejm2YyTpqMwO7Ms+t1KmWKm3lSJNpBlI3nT7O4XvuMbatEKv4IpBvgRtgeVEB8ygnbip6zDoA24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYPzwLuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYPzwLuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE26C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771276493;
	bh=VkEGJrFM+LpWtmyzWSQkqB2YD8JP49Ih3nhzddYGKkk=;
	h=To:Subject:From:Date:From;
	b=BYPzwLuyLqHMP7CZWEdHUq5SwA+zD7NmXClcD8LwcT2HIkPWv1yNL2BPG+65Lstbs
	 XTno9/Qf85pdFSTrpCqHLBxzyQV8CH9aEkHNjGzywMVMsUjRmfxLJA7p2OhD8oHmB0
	 QiFKvavnmO5rlgf7r6hoJwv85ZWMZ3ZxM6MSONuOVAsFNjkpv68pyt03F4Wu2q3Jho
	 rYiPw/3qglmi/nrb7AMiAXZ/XvtBEe8O1azDYx5IZCX8EgCSDJVv35YEkZqUX5MNna
	 FLWSG2k7pJWzHBxJXGInmbZx9VCQzsmbp+DeUB3jRnQ0hxn9wg9lKWv4G1ugPFaLys
	 8w/L/T5yBOC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987E9E83838
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127649361.1765.7881172175350211342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa3f730719d47c1b38b9ca9f05f522872d7db317547c27fc398d679b9068cee
Date: Mon, 16 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771276493
