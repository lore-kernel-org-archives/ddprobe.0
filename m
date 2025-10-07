Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D010198A11
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759807794; cv=none; b=nyPvuDM4q7qe9aYsI94WipQqe7NP6wwI7H17quvHRorwKu9KR/0ffCRuXzEqYVsypz5np+F4pKo8a0MMXCH4+LwXAU4OVyQ9rU8rNNX4k2dgtKVNLwLVLGdrIhpw74n+oeuWOfxDuiz6xi5tfNZEC8JQl7MF/eK4gfIA0i1j8ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759807794; c=relaxed/simple;
	bh=hjm1OjMCjZ4qX8sy+R1k3xK84/9H4Ri84Pgw0g3k+rM=;
	h=To:Subject:From:Message-Id:Date; b=oEQnTm6yiUWr+SbyGgJgfU7wrqEguKyruMGSSN8qvcGM+s1Ni4BuMjbHlmQLrnSch3Jd638w7bK9KsxN60Rs+Z2eQyfcvSJ3EH3TsAO8iUAJIiicPv7rz16zLDzhOCGuLeKLvBn/vS2/sUdgtgcy/JcT517neRW1H5UlwFr8M6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz27+Vkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz27+Vkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEF2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759807793;
	bh=hjm1OjMCjZ4qX8sy+R1k3xK84/9H4Ri84Pgw0g3k+rM=;
	h=To:Subject:From:Date:From;
	b=Uz27+Vkdno6Sg1COjoL/12AodU5vkzJ13BYjwrFOuqOUnVCavnwRz9AWqNf4JNzP3
	 OBaVCRLMc3t0hCqljv4d6LL1+R5rPWMKK5ksjgYw69CwZBcL535L3fmmgCAg5iNhtt
	 HYOjZB/QKHEJTz2exngL6beX9XEzL0PFrMYanBghYtkVhN6GHgXDz75NVsxgtsEkD/
	 IgGiy8qrromAor6Hu12qc7erO6mbpMJgwIf41nrR5kUxzUvvFeXpgRBq05AdCc15zA
	 is3m0GphKW51n3j/gbsizHQkbmLv3lCfU5VG7EBtkBDirTz/mou/8CDMd9P8p+tfAH
	 AaPVlQOrPyIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC45CCA471
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980779357.7497.10377651439382884157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c5770d92c6a03c8d3338bedb7f4280b537aa7fd3823c79c28aedcefade7de4
Date: Tue, 07 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759807793
