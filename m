Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C77347C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777065454; cv=none; b=AvOgtfhva31IogDNI1nBtk4k3yx7WRUi6NqZduyQTzy4rf1vjvQh/nayP9lJIKEZXLEJODfyTMdf75Onww1jXVE5X5NGGyQ52cKsY91NTM8ImkmO8lTrupqynuW3nAhPzO2ghIxKlolqXx86MyxTgw8mweBZNlzLghByCSEJ1TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777065454; c=relaxed/simple;
	bh=8g1BpqDF7EZFPG9ELqZOumj2VsdEqtUiY5LKV2SeUjg=;
	h=To:Subject:From:Message-Id:Date; b=h9MFcSTbAe2oyB8366DXYL3JIuhH3UOhVBkLB6nkVf1bs+X7MI4B7wkgqPfjgG8dvi//y6MMiSSCA0PYZSghz+FF4x3Al5WJ8vROpglgCmgTf5TZsOKNuo9StnJ/eDwdmsdsRaNpHECdMzzbhBz9EpAm0hk7EIAEkBsWcIX6EtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK1n6hIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK1n6hIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82EBC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777065453;
	bh=8g1BpqDF7EZFPG9ELqZOumj2VsdEqtUiY5LKV2SeUjg=;
	h=To:Subject:From:Date:From;
	b=gK1n6hIaX2D0Hsgo9TDZBlKG9YGygFpALu6PSFwbojvszJ3ht+CHOj32z4L4yR6mq
	 sW+kWuvpzwxfmA/EKN07L0PAmhrcoYpEOoCNCMj5EWLJu8Yc/YxOa2vxutFhGx00UV
	 RVnkuiVeS0do7k1FASymFkS1g1387X+wri2AD1s81N2gp/49XuEBJLiOGBHX0JfoyH
	 6EUaDLJc2PNHfKZ7GCvicEGxKgyOe9pFbaJBla04y/kq5Pie7OUn0O4EtyTB2SuY5a
	 J/euxZQIE8vGFadIkbUXz/lMrYKEkGCJxbfxjivxVi1nOGLenW/zoBaryF1DyMG7Jf
	 1upw9TzvUXGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8BFF8855
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706545368.13333.3698730295815598802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03d19d46d5c1e1db705d0e772df33fda237f4e6f4e2c279f0054d77c249b816
Date: Fri, 24 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777065453
