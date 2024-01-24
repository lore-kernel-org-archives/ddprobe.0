Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04200DDAF
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706074697; cv=none; b=Y+y8VRAOX4qeWOXg7+SwLLkkNgJzvEhkApLnXNOkspwLZE7eTAlkebTyoBNv9M/LBbiuwF5IOb/NtAXRDM6e0dYTsjmgUQHba9Opa/AOPKzJTIdai2Tj5grfWpiAXGvHMVVO0Hv8YGFqCJPpnki1IFASGT5TNYdpg+iac1V5Uj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706074697; c=relaxed/simple;
	bh=b6g69reSSvJIqPF6SuS6MaWcMpcPWGowqGcu1y0+1a4=;
	h=To:Subject:From:Message-Id:Date; b=GO0QZv6C+pLjiDu/vf+nx7h9cOE/E7jbNqpoIZkZHc5ge7B9cNHipm83CeBvS+aalORt8TpuPQZPNisAl2A+z9OVbtWgpPWDRKJalRY7RtUfTHXaO/L+HoXiJdslszPdvAk7Cob3aISaiGJAlYAyLiduwfGWRHu18VwBC+wDx6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgsCZLNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgsCZLNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72675C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706074696;
	bh=b6g69reSSvJIqPF6SuS6MaWcMpcPWGowqGcu1y0+1a4=;
	h=To:Subject:From:Date:From;
	b=bgsCZLNVtCf+dEnkXbOlBKO9/Coaevit9Bplj8aK/8yfa5jBhiV6USOrXoVwxvxaB
	 N6IEQhxmPhiouXsfgZnVBZ7QYw0kfFrbTi3sQSzlrtTIHEbvB2xAl+mQyDgcnxI0Te
	 uo1qJomMIMFvzNLD+05rRSHrM7bZwR4oBBnV9Ik2kQy0/+mEHxUW5FneIfZKGQOn0K
	 +JQW4v+71b8+RM5AcLMqRNbT+qO3GY1fK6juNE/tYn9gotuntoxGQrSP5xAHnOvlVr
	 0uOhdeMT/4LsLpa3q5cch+XCSTc88ajpZWB8OQCOe3i8h2eFfA0MR/uIhaSM7XCy5y
	 M8JLzJW7KAuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAEAC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607469636.10496.6252226330682564104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a8bcbbe24316b2401b330a739d2665d67d2b11c76b1f1488a8ad759d570697
Date: Wed, 24 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706074696
