Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCC42528ED
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739197554; cv=none; b=scyv8+rBNsm9mHwphyI21hHkKWcrZoR1pDuOlOwrwfsbrmn8tiWg6EQXPYbaT2F2axKOwEGiobyFQ/2RGPaTzrMrE3UQ0ZQzoz/1QMksf1elhUDD9HR1Si6Ihx5PLzDYX0FkaB15/sjGXN4MNoM1p/ESmFzaSj92DnOuC7ci5lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739197554; c=relaxed/simple;
	bh=Xa+gEqXrzDbQK4S1ekRQzbRtv0R8jDH/9YF7nnYCGi4=;
	h=To:Subject:From:Message-Id:Date; b=hvvsAwCssKPCY5muqhfUFKj/paQCy0uyOpuUfyNVOyT8uqqtzxMllhau4LUtpJcGR1tjelWn9nxRsWA8UqxYb3Vn2mCAZfo2JbAZhi1gBSfG3AeCIbi1PLS1kenpXVm1JmlMd7rWb9dF5BgFYB8If7uI9O9yKq1XbQPcg3cx4ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2j/65Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2j/65Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F77C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739197553;
	bh=Xa+gEqXrzDbQK4S1ekRQzbRtv0R8jDH/9YF7nnYCGi4=;
	h=To:Subject:From:Date:From;
	b=m2j/65UwxnU5UBNKRvjELWDZtq9bhKixve+xFybceSsPdQs+g8r4n//YI5Iw9UjCs
	 kzvvVCwaTjB5Xf9WMCZlKRC9lhq+GaYF8nrglcPsQb5CMrHIq0i/cwi+OKBjkqDrc6
	 UtDT5Q1rH7ElFXQZx6TbWfiSaT/1GIEdrR7NWH98Kc7NWY5IIce0k3DnH6EmKwmw19
	 VenqDixBYkQ2iqVSAjtCM/2JQBHKjWlYWnArrB1h9NEhKXP8hmmtxB1cQ62Yv46F+G
	 7uNvJmNLPolJxq7BGnGtNvPyRv0XEPPetwijhADUsA6CUmIOMKRf58FlhoYIN2HUj8
	 yrvXpSERG1JYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C649C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919755362.25407.4767449412970823111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3250a6e8213639d2abc7cecd1b90169c619a78518e041b53fcdedd44c373c40
Date: Mon, 10 Feb 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739197553
