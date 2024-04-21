Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC7B3D6C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713674423; cv=none; b=cSOXcWIM7iKcl7HM+vUfj2W4J4BMJhd3x+aPKotanBGNHgyKpftvenqSmsm0tlUuaFsR1y9a+/w4yQT6ZlyUFOwfd0uVjYgOvjfGsDT1pxBKkhI7C3scc5LZ/7Cg8qBC2QAfrrXJEJgG9ScfqkDm1PcjTKB08GXgYWoGdIbPXdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713674423; c=relaxed/simple;
	bh=pxnOxn/Oh63NNQfZ0qr65G420JeCvAV1frhkyUvf6TE=;
	h=To:Subject:From:Message-Id:Date; b=RE1zp6YpKkTPKN26DLWh44lFwFV/Rk78lanHujR5q0BkgJNQgTDv9NaYoD7N237aPqJRbDiEWIo21798f8SPo7bh+rNrrjSNfop1RnTB1Nlo5lmrJhIwHGIO7JfQWuFujdNS7pKRhzWeECCEv5SjeS5L/l3O4xoYnQreZUIrkNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbCJO1Sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbCJO1Sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA767C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713674423;
	bh=pxnOxn/Oh63NNQfZ0qr65G420JeCvAV1frhkyUvf6TE=;
	h=To:Subject:From:Date:From;
	b=FbCJO1SvpWj05PL7YjlRNtnCDQ/cbSv4eeAb9Koc5As9BoL6dqMqpXEZH+HLIdEOP
	 RM4XlPjyCSw+t45sqfE3omi3fzktOco2YhLqNuFv2NmboayMvZuettgB+bgMHQOvGB
	 xRxKYNHqYjAEx3wbIEmpjUxurZjUL1DdVHVt2taJYad2Qw2okkeeXqD2+XwSTHNOYE
	 xJSPdDivaJqNqFiluZrjZxipA1qiiVz8H/54FA6+b2zDX3POlxS8r7cE8lR8k7w0ys
	 fpE0ybOrN+zu7cF2tspiWIZckqqfajCrSuk4V5Qz3C9Y4Mdku0BlgBjWsfz+s0wsDo
	 sEbYcYBfJSBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77E7C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 04:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171367442275.17352.5821870206908841689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e73a0a86768cec02325a1659924f3a0b079a206bd6023f8dde030a77391ad2a
Date: Sun, 21 Apr 2024 04:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713674422
