Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAD63EA64
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719733463; cv=none; b=D3EScblFbF9EhzZzEUXFjN/iGoM/2btP6mCSZpGRFYoLKagVE6Z0saO6jI3JeV2T1kWK+tCD4M/dZ1w/F5hTbl8KofuwUe+3VbU1Vr0wjL6apBaH5flNICvblGj2Bb2h5gfxnWsnApvChQH9aOZlmlWtNyJYHHm8Rdp8TD/uCXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719733463; c=relaxed/simple;
	bh=B2bkrCxxZk6hqulfZGBA7MmxVe6h7WoYIGcHSsMxkiA=;
	h=To:Subject:From:Message-Id:Date; b=NX2tilPwkxQKH4Qj9EiRZMlc4dAm7NfJ0WJ/Dv1qoZiD94gCuxGwYpMQq3HwYMuex+z5tUY/uXdNAsuGb7hceQ1FNN7TsqhzTE8Ai/Lj+sprLxELaCh4XAsOntckCwYgvX9iCB8IyHzZOWewVN08WEpNTen/NP8/xQdtzBe1RD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZpxcDiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZpxcDiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77CAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719733462;
	bh=B2bkrCxxZk6hqulfZGBA7MmxVe6h7WoYIGcHSsMxkiA=;
	h=To:Subject:From:Date:From;
	b=gZpxcDiw0QP4QXcdbPSLALkHeHUkGKn99hUrt7PQszH8klt031lrT06wgcttcTZ2+
	 knaSDvnCbnMGeAjzzvkuYYdUCwxiw9unnvfhyfwNFbScZ+vyozB/FTfS1WvvspHUeO
	 aGu0VLQ+HrHlwZu5pFq3KwFut9NBXu2wiQO9kBaqHV+rAha5gOGUd+ehb12puQQCzW
	 dunatoZNQmf6G78J6bavoI9JqrR+XtHbi6l2a29EYKOdIMKIqDsQ00qx9cxGXGpzMY
	 lKJGw/b1ChXrQpjCceI7Eu3AdRQfpD14GznQXqcBYQ+RiT9ih8TgG5qGGdm8gKRwSb
	 zEKkBa2GvqfsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E3AC30659
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973346278.14173.10791074783232945750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2833bf5f2afc40dfbfb27ef811614665e14f75f3b125302b203477d733c920b
Date: Sun, 30 Jun 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719733462
