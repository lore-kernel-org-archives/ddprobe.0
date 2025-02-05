Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123E91DF993
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738766754; cv=none; b=nuhb96XPHtgZFuotbZXRZUE8or4uH5LCHNCVDKr0fBvegsdh9C9X7YodFc4y4sOn9WDb5FCUES9Q+I/u92tw9C+uqm778KdVGzcFL6XDV7VlvlQ5IBpbEedz72F+Gv+x8tQeWNzNGvOztr7OTKYiWNoOMJYvQEK3KkuCrpMOyp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738766754; c=relaxed/simple;
	bh=QQmW4/7ydBcLNOriTbS2bneFfxd32WxmcGmahw6tRpg=;
	h=To:Subject:From:Message-Id:Date; b=NSvYFigBNzoI49ZkKyhU2fLgaS+OiaqkWBvA0LDxlZagmiXQwZgP2EGFzJp6Vv9K1mFfv/HOtkY4EceMhKB8/2DvAqWC/Cl4WTGugx7401fY23TvNxTrrd7mX3AfIJNRKkaT/lG/gjWB8Lr7iPrP7Wky3/kPkVNeTX7iufxQ0NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9g3sanL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9g3sanL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE73C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738766753;
	bh=QQmW4/7ydBcLNOriTbS2bneFfxd32WxmcGmahw6tRpg=;
	h=To:Subject:From:Date:From;
	b=q9g3sanLb9Lb7wjIJRbaTLt/sL/3KUmkmFtSFFpudOVMs55UgICV77oK9DkBTuV57
	 TuvsgENmvo5ZRUlfaU1kOwcS/jJ4kA6lDSRoIeerH/FS7HG/JOxrKkL3yxK7Fiyosj
	 FyQGNfZhlirnx6ogf7GYF3SMuoZXCBi2+784SHH1n99nHTlAOSYOUIkuE3zSyQdhX+
	 ZltGbPA2TYGj+Qguzn5CPzkvCO94jCFIdYMVQPqolZDAeGSRiK9bnWRIJWsoeE6sOR
	 s1D3sGRAaMXutmU0nmMmlOzsaswyjwkClVXMWu0BZssIRLSkasOwICVwOYjmWRNoxw
	 wQoiMQxHFG7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB88C02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876675369.20125.11467481230941285269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8f7c6e54fa348513e5227f8583cb2c806305bd4d2da480407e87e52c3cf8ee
Date: Wed, 05 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738766753
