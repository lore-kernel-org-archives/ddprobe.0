Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DFC1F4634
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764494574; cv=none; b=FmYc9R3FHsBT0F49TUlb4rap8n7HyQlIw4rTE0G09qRodyYPiSIknoWiniLnsHc6YsORr6JQf0iLBvuxyY2t8DXd4oxPp9CHhzVFibi5W9t1iTK0i8EBq9Nh88T95enVLVDu5fxaaBi+QAADxA0DkEQ4RokBWdeu24k02GorN84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764494574; c=relaxed/simple;
	bh=LDPIFd7MlY9+WNB7+wXk+RESQXdZxKJO/i2WhFCN0Bc=;
	h=To:Subject:From:Message-Id:Date; b=j4qbzzJ+j+PWXLu7h/6xJg5728mefbYVV+QVN1BRTjb3Kn2PWXts5WikqGMhVmTNUESGU2EUYOym0Znk8QetTAKyyf+FcBeQ4MWfhy0qlJXtZ8ISDLm/iQtwJA2dP0w5p2fYaLbwcneImq2z9UNK7xrBLVg9SD3wi7e/Iqhci6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcsBj8cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcsBj8cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3405C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764494573;
	bh=LDPIFd7MlY9+WNB7+wXk+RESQXdZxKJO/i2WhFCN0Bc=;
	h=To:Subject:From:Date:From;
	b=qcsBj8cXM63djct5s7MnkyiEnj2o4h0vPPFtWcSC3YbMP7F0NL19XaEjm7g+d/MIq
	 Pg9lwpktXlB7EZobbnIHbaCUVXVrvkvDtlrslkVxgvsHabuZPv+EzT7/OSQXhyqQPT
	 58L4OTn4E1oTtoek46CA+ehOwso0RSi2gdsq2P5CiOhnZL9Nnpn/sGGO0j953JIbDw
	 6AqjgDr4jR9PMJzEbg+YL559cdpGsxGFRQY80AZfQFFHSgIV9Y1tk3iXwOgozeIh+d
	 g23sGm7AKkLxt27L+MDw7abkqKqRrXjZpsstoFjS0VlqzAlBPrvIWLX/oo32rWhT28
	 +XMugasO5n7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91992D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449457358.10845.17440887842583540522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e32ec463cfe186592ca3b8056fa86274933a73b973f0ff946f45dd0cb31b89e
Date: Sun, 30 Nov 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764494573
