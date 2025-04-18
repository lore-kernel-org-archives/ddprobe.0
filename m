Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C13158545
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744945794; cv=none; b=GN9v/dpuPOiPXkGm8jFmug8KRMeJdsOUmKUQv1yt4Ye/p0YroecCOIDRvgzgU+np29i38ICamDl7LHytDPBHECj4py2HQoxut8Kpeameeggma0Nw3NjO4MTJMEQzFxNHMQ6vaUn3qk0fQw8Bp7kj5pmXuxSc8emeV2OFVYtUZKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744945794; c=relaxed/simple;
	bh=VpNgQgZuG/gbHPxwCwvcFo+giWQqImZT1AJ5B8T6ggA=;
	h=To:Subject:From:Message-Id:Date; b=mSG0GOb4AfoYBp5W6fqMVmiDV7F+tmn/ntA28yblXhXnGgrZG3Be4WjyXomjz2VrhCfnY2X7W3PJkfOzkFOsu/qbm6/C4cVV/o2W3E9sO/f4QjK8oo2roFtLCD/DxQGAd71QVlY7ZJXv3lQbP/dmPCtbcLGrGmc+PDo9BDOB52c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krjkfdSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krjkfdSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60DDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744945793;
	bh=VpNgQgZuG/gbHPxwCwvcFo+giWQqImZT1AJ5B8T6ggA=;
	h=To:Subject:From:Date:From;
	b=krjkfdSjiW3jRvjJHSmOaaGXNqrqw5nMWffzairJrS/MZxD0WbbxdSzY+JG5+WVmj
	 sSHAYBrMQpGuLO03MovGPLXRptVJ4tFAaPqcjFvS/Yi/BXXJKZABIwcbX7TSRZBwvC
	 ClTyRedxut/2o706D8MCr5lYtVwco8Aom7we09YIep6cVVijf5QekBAS2ksDqBSjEd
	 O+plxP5YttO0UuIgyot1J3cHp+I0lKtUWz1aLz1FZAcwu/uHC6becf33IndcXL6J2h
	 pPm5U8o/D4lAWVymlcwLv+OYokya9CfolKyJv/EaWH0CeCARoTf7ygx9+nJ+CnrfaK
	 mcomycVTYkNvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE7C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494579358.10401.18416456788463790871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d30eae542f88dc665f7a653ce7c8c732895f9abfe9684c5bc3ed91850a7c23
Date: Fri, 18 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744945793
