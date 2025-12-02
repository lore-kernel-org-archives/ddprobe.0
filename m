Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3041B204583
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764671574; cv=none; b=KKYkMombGdWnfbx1Mfnj5Ec8s/J0G1gO2leb1FK+tdFpWxDktsDxc7vz0rHeg6rXU7gXBIV+fg2Lxw2i6RuuY61lmMX24UO4fpWHxtvGrB3b25Pslo+yRpEB2JVia953OCG3m0gHUWn5cJTojC/SSKxsfFzDmnf7EZ/Og11ncPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764671574; c=relaxed/simple;
	bh=Bm2S7nyfmJ7LOHkGuwxYr/BtvNqMk3YPUThj75bEzZA=;
	h=To:Subject:From:Message-Id:Date; b=dkPSVRpCA97brFzRgX81qiIZJZlkgLuoFtfL71SORd3fduNBiwMuAdJypuwp0vE8Pv9JOdNvBOsv3xbGLkT5awO7MwGy7lYFWdf9C1UOVotkdHAjTu/qWpFUhGxjhwABIkK6CADsco4N8d5B7MViLL5c7a/iSsG2Td+j65xclrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml80Ud+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml80Ud+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764671573;
	bh=Bm2S7nyfmJ7LOHkGuwxYr/BtvNqMk3YPUThj75bEzZA=;
	h=To:Subject:From:Date:From;
	b=ml80Ud+Qk/lQVXAPdqJYLnyMuDmCzgtItEBCTwyxk3fEgg1oYTJ836C2Hbp0qu7Ro
	 shR0csxyn7EN1u8l6EXK6A8YHLDSQuK8VZkp5uuJWYCbly8mAJoNIYovG01f3T5ps7
	 4MoIiF7HkhgoufnSyS6mgfLzn4ZgCGZa86y/fKGH654+25iMD46fTtFcxK2iPY0oN5
	 maLCENHpQp27ULovNs7XuVv2AGALI3sf5IhQab1R/UX3MNA0RnZI5JOBi9RnzP9r+B
	 vnc7J/ahPU+93Zq29EHmuRJ7qxehbTxvn+BzUWOUU8UVOb/7Rrs4x4ZLRypGi0sovL
	 g/EpB+WdgBAYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CECFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467157358.18194.8465798517256768866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b8e019e30f934948e26c00d60ac64dba71a414c7d7fa19f408e69cc33c1f15
Date: Tue, 02 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764671573
