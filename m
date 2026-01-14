Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEC12F3608
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768391634; cv=none; b=eU1hEDWYe62vBXULELTAOcl8A1TNAdaQFyhg8lb5FmX0MEYkLSzZb6HFVHZm+c2iCH8kOgwkqRffzqtaQCuUtuPIdAO2Xu2B/j3MDcfDjrijR3ALg1cywXeRFFD4Cum1cgjkFLl+jAVfgZbds6H+QRM1ofJxgTN/QJi/QZrBkaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768391634; c=relaxed/simple;
	bh=IYxepbEWi/PaiAM39MwTgN0z34hHJ0IJFRIgaMDPHrQ=;
	h=To:Subject:From:Message-Id:Date; b=jYFZ2giCpNG+RFfv2SwKwVF94Q7IyxkvUP/y8DduUPDpwYRfMKPR5vSfwn4uHSEnFgFhcYzKpZFgqWip8ny0k331462cLdLeoK30z+LKuW4egJOkv9UgN0H4rNWUNTGD2IoAEMQcT+5zFSvh4eZShJGJKF8nZ6ytF7+yl1hXwac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCNBYbct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCNBYbct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFEAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768391633;
	bh=IYxepbEWi/PaiAM39MwTgN0z34hHJ0IJFRIgaMDPHrQ=;
	h=To:Subject:From:Date:From;
	b=XCNBYbcthV9b9X9PuVwvTkObW8pObtFZ42T5npIVm8xWOQpW0hpokGAk2hDIIlFf4
	 aRvI8XfdcRaHE9XDm5Cbl4s2pleXvRjwpDu2PSBHZ9aISJwbPzauxC3pbkVtsxWPtq
	 fd8Nl7m7lv7aFEoiV4b6noAL+FmMA5G8IXQNXfpFkrU9NQduh4y/3wWIpJ3Cz20bgj
	 i6mg67fbWjMhMaSPF/jEulBPX6y9OpRPTSGZC32HtOc7AGT6xT/i/GUHG6Rp44DFFV
	 nQO003AC8D3YRoKC6LxSm3BcrJPM67+ogHCuOQgt6wW3QjFbnCa4I+vi8Ys1+KQUv8
	 U7ttDr81YNi/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C8D29FF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839163357.4051.304073453037496212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28516a0165e79d36091f21c3f64d4488b04e28a6ac4200cdf8b41f038d4a9a35
Date: Wed, 14 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768391633
