Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278FE7D098
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760923194; cv=none; b=L1tgykUh/F/Cytye9XpjYayLqFRDh15lBrhU0Q7PE0Z34rddR1sxlItn7Jp7OpbUhWkfXLeFeD9SiSTBoeVduCMN8PTUhBzDgLd3GsRAiIh3bnY72qA9eAijhFMphc9ey2WjdOcmi9pZptK+LxWSRsTNM5ZLKWqYKwBvQVNR0ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760923194; c=relaxed/simple;
	bh=nBgmO+WptZWthHNpw0Bijt81BTeLywFsSaElo8BsigU=;
	h=To:Subject:From:Message-Id:Date; b=NeqrHf+OZtKBVsRlSd1zx3Zf42Qcb7sYPC08KRwIN+ioV/tMfqHne7T0xAemlsxeGx2mhAeIyIZOA3Fp1VwecwBeyoc/u3gqunaoiYQ7ObNT5Sat2z/4LWan8i5RgaR55UTQ0EA4Zv1/3c7n2aKWPECKieJF2GGOFZtgQDh2leg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmkHVBNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmkHVBNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98FFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760923193;
	bh=nBgmO+WptZWthHNpw0Bijt81BTeLywFsSaElo8BsigU=;
	h=To:Subject:From:Date:From;
	b=kmkHVBNJqgr+dyRwbujfwXQnNnfHs2bmLDL4KynYyZWR6akhlE8CFwKihJO3ksqgJ
	 W1oeePbAMv+grITEyRXMNL1DrGN0bPQw7L6E92kH5fMCR4Oho3TmXVgTB7aRcfO2sT
	 pNK3d/uQ0GJnJfO9XzqH5i42VAgp1S6KdESj2y6NMA6udDDWptSQxeGUoBN6OX8hya
	 kfR7rbrMy47ym4v1YdZTesqLizQRs6zuHRRkhJa0iKjay5auP61efY6lENPamyDsoL
	 yRIdpdy9gvmqobYb/x89RLdHt9OtSe7zp/HQNx1zaMn3/lQWEyZ7d4Ztst6BNTK2iD
	 QrhwUfx0M4bJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982C0CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092319359.2424.426748423135531656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65f9c6f9252c9ca189c563c8c36929d9b032bf2f484a54e88c93fb48370f15e
Date: Mon, 20 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760923193
