Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE882BEC26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753882194; cv=none; b=sBNRFmCzbhy/hcvGP+iK6lFRlk9HIEMP7KJhnFaMXSEFjusn3rkeR63TBoreMKclKilxsYn89Hsx+64r6xWlkifOpxq4iPZ2kbPki0RhZEF96ZsEzZFVEvi6IYatDEPevL0BtlM3mTWl2V0BDS4Kwh9HbhS03hwj5azNLPKTH40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753882194; c=relaxed/simple;
	bh=Fg+8944tGDd+gV0BxvTl6BAq+uN5hamZjbhp5yz7Xb0=;
	h=To:Subject:From:Message-Id:Date; b=pbyx6jWtwYvyHP2pldCfNIgboO9S1/WibBWZG2XemrCAVIgYKCAgYcPzdIUtfIA/WhiI0aVOWpLK9agZKFM5tacAHnngAvTMRXYtJ0h9Tyvuv2pddHuI83jdX2dpDqhgOPlrbnGli+AGRRH9lK6haq+VZns2STwI2Pzn1yGgqsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHFgQ1mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHFgQ1mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07AEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753882193;
	bh=Fg+8944tGDd+gV0BxvTl6BAq+uN5hamZjbhp5yz7Xb0=;
	h=To:Subject:From:Date:From;
	b=pHFgQ1mO9yttODeBowlhZUwgVvd3FWKVXoOjgouWOdX9bvo0jniHSJ/RlOggTgUFC
	 5iidxHqTU4Y21LhyJAxFlnaTZ+GSA6DVZIdtW6CloBtXS6aiLXLyrWP+cADpZWug68
	 dJDg/QjxQPP4VJp2qhcMkkq0Q0Nhwkaioqavm98xac2dFZs77toc7kZizw3gi/LmxE
	 fFZMQ6pNCssPimLwQv1pC1GbKFI2Jd42z4pjswEA6/ptoQAb7H2IgmxUfgOsWR297z
	 Z9ejRQVy9bRSTcrsfbAW4kajbYfN/hgcg3m8hoI4IA/5P0tWz1HKV8FBPGzE6eEUyt
	 ROacTHqU+NSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38CC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388219357.18510.5893287135020163239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1cbe6aa6fb95acd201bcbf9bcd0c34c9c3b3a643407d7eb9e01a677b9e73b0
Date: Wed, 30 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753882193
