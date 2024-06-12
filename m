Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1E626AD5
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718216303; cv=none; b=jJAeaTGwe/ZKYQdIY/E8znVXw4OqmEqHryPXIocJlJe5k9m/DqX7YcMN4MYMDsvIzIii0UwcF6Pt2NPTUJpsJ9s6RZ01A/wx4e7Svqh246aLHAddS7M3+Rb/gOR6JZiWI1XA4MOvLaFzRyEyOpaU8QjOUd7SVKgr3U1kvdfJTFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718216303; c=relaxed/simple;
	bh=4UX55VSz62ds0diutjFNGiY5PSb1v7rYEDkGRq9QlHU=;
	h=To:Subject:From:Message-Id:Date; b=mJPPJ6yh375J8WUKpNqp/apkxr67gLpvCyYrlH6wKaF1IedPxAT6dalvfb/MmwrB0OMqyGoF7LmAoqxK/ACS/k7P2c2oXFgo0yzXj81nUGkQhzI855UU3Zt3+wx8+YwX8TZ+HV09nv4AdbykljNgdhenYcEyE6/ZmLDxtT3hI4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqK4K4FD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqK4K4FD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B95C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718216302;
	bh=4UX55VSz62ds0diutjFNGiY5PSb1v7rYEDkGRq9QlHU=;
	h=To:Subject:From:Date:From;
	b=RqK4K4FDL4kHS/vso/DaxUfP3EVjmOymks+Bw9ujhYYdsgeUGGo+A8GyHCnT1HQA3
	 ConIyNN4IOIIa35OMEPHhVYBgFQ3MmN/XK618DWWtrbAhW26BaqfDktlrJOfIsGozV
	 1RI1hJyudd4K+OHivsWDkr2OWW/89UuoGfYgZPyfYyfVgKq0VFaCh+JrDsfkHKZ6IU
	 CbX4P7jlANSSOuiRIMlFFuOzK34GcaHZp8y//Uw9sPoZS3YImQLpbebny2MRxUNu93
	 Vk41YPWx0zyLO+h9tC7gqjUcdy5F8jq+tmtJEEXkVS/tSBYiuwlvzte8OSGvBa1C2x
	 BoHb+nYnb0bxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C197BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 18:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821630278.2340.1271686866863177635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff0cbb6f4a6924ddd800a6e656f5a1be24c6ff81bccb3150055002ff818d54e
Date: Wed, 12 Jun 2024 18:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718216302
