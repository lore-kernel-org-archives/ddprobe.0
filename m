Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5B322626
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717918043; cv=none; b=bPo+1pMCB7hA+jGmh86Ncfwo2mz9KQVFOXQkwPU+EZXapD/MThB+6swZgs0u78AqbSy+653s9STfPhu2z8LZrXr4/8v0uIG10avi99sGTb7ktLGQqbtlBhlpDG4ACRdyBiRyksAwrY7E6do5/Kvaxezeni1aM4wZaq+NkeU4YKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717918043; c=relaxed/simple;
	bh=qk69s2eyyhUKJ2E09lNDeBSQ7fGz6tZn82BD2Q54POo=;
	h=To:Subject:From:Message-Id:Date; b=jvsPEsiwqxv59wMRw8pCZ0j1MwS+L43zYQMOiCd4CRaft5tI6JSKF5PouhUuRcs9S9dP86g5QzljXQj6x7WPZZhYz27VkXq6qDSNmrF2bF+7n6GRySlC8soxSLXQkNWIm1f+1NsEZx9/u9Dwlu1/CY36v3Q92d7WWmZr6PVQ3Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZHoKm0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZHoKm0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF016C4AF50
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717918042;
	bh=qk69s2eyyhUKJ2E09lNDeBSQ7fGz6tZn82BD2Q54POo=;
	h=To:Subject:From:Date:From;
	b=jZHoKm0xrOvUHKBU0Af45jJV1UuS9ccqH5HSfUqCNfUlEggAj5mbPZ9HSoxe7CnFE
	 QywRoutMw4uugtl62YISfi7YBW31Oi4I7P9KYN+ZxwVsAXwCtFGWnr1lg0XXIk1z3h
	 P7LsZFJOcbm2S1pjgC0jK5Utg7fzDsvw6beUMjuNZrOoEJESXLhUnp0uV89CEan7bh
	 Q4zgqCljb8hidH9+/T0qpAKtnTcAHPoutnK0LyTHrJcxJ01Uzg+llJG10KbzE1bSqz
	 p4EPUjehXHG1Mn3GZ5NKl4E9eBYyYno9PSI30hd14yaEUAbOIJHOLXU8MJOCHK49TX
	 r5ffR3AyLj5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C568AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791804277.6182.1157453500236238197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07bc5786d3528ffe893d62f3c2f5a3ebb8accfdaa6e27695e12fa00787d9bbe
Date: Sun, 09 Jun 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717918042
