Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443AB2BE7AF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761382194; cv=none; b=B84DagDMZGANy+DDon2XZzhWYq64fZEo78nxbRRh73rjxNNw46mUtT3ngc9/zYg0EHRGrhhMqDSHMI6+xZnt0vtZcaBoT9l+4BMhb8/rWDB3jeLx/4lRtFczgBYz9ep4m+tVlJfGS1VbcfddVkQm+XhDBdD/38tr/A1rLz3t4bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761382194; c=relaxed/simple;
	bh=h56XOtR4+SJFo5lfrA004wSqIiiqNq4JpIJU6xJFIVs=;
	h=To:Subject:From:Message-Id:Date; b=mBmXpkttMYDrUJ0EJ+5k7/0RD+2GgHoJQ4yxDgq6diqQ1pxVAEbOqyCFvF737yixlYeS7h6gjrU/Myyk+/FXiEGFgUoAG/bSCbjTCAEiuCVUbGava+RFs8fM8bhtid//5ObhtVMt3XCsBBaeFmWPb9hlrbN3YriISJfdK1N4ins=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmRUpesZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmRUpesZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEAEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761382193;
	bh=h56XOtR4+SJFo5lfrA004wSqIiiqNq4JpIJU6xJFIVs=;
	h=To:Subject:From:Date:From;
	b=ZmRUpesZN83kv6AmwujgkU4Ixs78JDcLDE7OfHd2zixC04VUs+X7S9uJeE0RI6aIz
	 v1nBZItJXSLqEVHpFac4GZP9jgacLCvE0jlEd2cb1we/20xYth+Y97Rv1X5tX1XxnE
	 wmvkq+YabtkXtYQi4l/Mnzzyc+KSBscibpmX4DSGsAnEtVd7vHd9dYkact1ZrrQjmI
	 trTArrzYfsu7azwgRC/cY3BhbzgzcSzNolZsYkbkDcQQzpVhkF6ssKIUEWnyxz4tjx
	 A69exiQVuGjuQSzmHBQP2lUzsXM7GgmELMTXr8XOYfdvWRYWb864Alo0iXpoXycYH2
	 tVl9vVptmweUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9762FCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138219358.4263.12316721910916363416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8475d9c9f57cb19757a6d9541720fa5e1667de883e1b9bb7439aea1b380840
Date: Sat, 25 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761382193
