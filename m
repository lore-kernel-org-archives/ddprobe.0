Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB013C914
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731415554; cv=none; b=eItCGhL6hIWGDaCTK0yK7lZh/nCxtot7VUEMZkI2y0ZOPq9FsjpzOjLgLCKVv1R+uC7w02k5MI1hiXQqW+0biqOLq/FeEoBmAMpPHU7JLANXBoWyJ4+tm9ox9XNQMUyO/VUbPE0zYKn+iHA8pvaU2enu1ywkmecpqcGgi9gBxgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731415554; c=relaxed/simple;
	bh=GVvJgvwGOhhv5iKhIrjYnkxi834Yb5nHxnw/cTPIOBc=;
	h=To:Subject:From:Message-Id:Date; b=uVxEn6B0bAAdZEU0Cgk025c5cCJdu7j2xay83nbBecRDwyAZx8E7RkV7MvWAkEDMK1qR9sSCagGAAQSIj4pM0cucMPFUPE94PyUBayeHRWxsx2ys+dqse4olEK3g2J9ZFkmpMdFCASc5YhQS8sdAHxD1b9RAh9Mj3dOZNRP2k+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7ojmSgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7ojmSgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF501C4CED5
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731415553;
	bh=GVvJgvwGOhhv5iKhIrjYnkxi834Yb5nHxnw/cTPIOBc=;
	h=To:Subject:From:Date:From;
	b=N7ojmSgFYXlE1Y4VQNmXUeRgiUJjMnM5NLK/n/3GQhhBxHCY0mqebEUriehetXewH
	 1D+/jEitgFKHKBWVIRt7+LTHfeJhuAaQqVcTh7eSFZzJ/iqHG3gQsAt6755PzNF+05
	 wP2M3U++Tvweu2vLdnFjDD6hR3ZJ63aay8tkca4RNiJl/fM3dW3k7FycvqgoS0/I5f
	 HneN8r9smleJWnuELpouvhsDkTWspzfWqgdnV0KQOGqevO6J3LTSouDLkBwcTc1e4a
	 BmdHMcU2GXBHEKld/vZyqDCVlBZ6tiQ7Nu0TepWZMpwr5jFAkynXYhFHq3wp9gz6wU
	 NOn2gbJIRDk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988BDD32D9A
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173141555360.18766.16519575174499231555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae9b9bc3c7525d3e871513a4e38ff7e108b2129c5b61b9f7625653064b0aee0
Date: Tue, 12 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731415553
