Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B8154BE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734068754; cv=none; b=gMqDDk+HQFZWVv/maUri3iOfUdy6nmniIFh1eRxeQW7jro4+h5jERK4F17jE7RduAAVwsFW31gOJ3NjqvB4ZwkM2jC1LyJU0CqEJ7MELWFaw5Cc2V8W/kc8ftJDg+bowjoOXz+QFHSoYGfJgezHe3tLRjD/ZE8UgTuYmCCBKLbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734068754; c=relaxed/simple;
	bh=H0a1DvBYz/0U2WZe6G1Dz5I7bv46/37ZwnHCcFsYXB4=;
	h=To:Subject:From:Message-Id:Date; b=bURJtNtmBW+eXNl3UsPD0PuKL98z1SzGIpdd6l4rDJvw4XXIVB5ZQflP+uX83ME82eL+0sxJ8UcI9fSwPBFJJN4TXkvVImTpbo4WAnhKvFuu0Ug/dHJ56XcqrcBGeRkKyZO19208NWdj/f/gMCjPKDyl25fLewAoT791ocVJh40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECtLOlqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECtLOlqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB643C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734068753;
	bh=H0a1DvBYz/0U2WZe6G1Dz5I7bv46/37ZwnHCcFsYXB4=;
	h=To:Subject:From:Date:From;
	b=ECtLOlqnHjd3M9f2jiI6ehcwndwe0oYeo07uXbII41TxfUbVdyuAF3j+K3FLk38fS
	 1DyAnXR98zSS/w/7QoGz7LXbz4q+iJ3d2n2AVWvdKIvnUuAS+WTgrd49Uuc4D0cVxl
	 3xTDxs5DbFTnsWewy79TjdoBirxE0daHCS+dUYAeyDn7y100VYxQVKYDCtsusXlevQ
	 9XMXYsd6DAVDxIgpxaqAVPg2iWhTBJ6f+H/C3iS0OVlZHiPB06phyZdKtMK6+AKvy5
	 xSUj5q94uXhnCC9n9F62JRNhkaE8+ZbPpxSTYFJDeHJZExgcIYwq3pV/U8Dyd4f8Pf
	 Mt2l+EF4oKy3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E01E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406875358.32079.17534865500034356659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ddf3a2df300b5569b2d9a519c23d5b8ad1c8f9de41327bc73726eb767ea615
Date: Fri, 13 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734068753
