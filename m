Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE356FBF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759538394; cv=none; b=ZE8ctPtgB+z5WR/79AnINrrA0V7XHOwsWrv12fw6gZOg2OA2xxBW1HFUwKsyXRZOT1qe8I1APWm0dPNmOwJ+aqqlN5PkrsCEoKIdDjAFYonj+/Q0HMHMvhE5tnCwcoD1lNnmXHG7zl1vdUHMqD6C3NHlZsLUh1xUdNQT+k9ErSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759538394; c=relaxed/simple;
	bh=7iW3eDU5TrKebEEXbc2vTV17a8uxSSbFX+C13YmsdEQ=;
	h=To:Subject:From:Message-Id:Date; b=m5jOIvSy8SN92+611VCVjZ8jvSh0pjzOPIwYFb/gASb7/rGRcN8Orta9CbSjDOPiT3ev4DzlNyEUnxqdwO6tqae7K4S00bcjwsqx/j1WnnUmHHWfKlFwTcagwV3yXTqZ/k1lOPajCLtUeVmyTKT7gUy6laYs5G6Z58Hh5kv/kKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkgzOyER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkgzOyER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759538393;
	bh=7iW3eDU5TrKebEEXbc2vTV17a8uxSSbFX+C13YmsdEQ=;
	h=To:Subject:From:Date:From;
	b=PkgzOyER+ugx8zxRQUtzb4WQq0WFbxfaXAba3s9NqDkLvRpeVy1WrBPBqR39GhxyZ
	 rwepv/ArJu80qEzISc9ysBwn2d4sHeee/EtfMyH+DODX83gO/iIzXk/ZQ7oQzelzeA
	 7OuzmCmhp1TkmZHm5Ka//PcRI6MMYHk/G4DBvzgz7FnawM/2K/R7JwckFxSCdd89Yk
	 a4zj1UG30fDVUQP4ztbc6d1274W/NXGU/Oaqi8A4uDxmLHdfpdBRoOXNFIU1L7usBw
	 Ytcdecs+7yKTngLCxeRlHL11UVs7zsbW/d4E7gA8hpaDhMakKIBwfEpcAObEyy7LFn
	 dmZcCaTO2/xJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F652CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953839357.6118.17860976006278476815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb836eb23b0524a517ac40bb71670a3ddb3cc2e08fed064d4349492dbf89b9d
Date: Sat, 04 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759538393
