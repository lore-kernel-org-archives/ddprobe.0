Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3754B2652B7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758859194; cv=none; b=gSQrtC9ZjHQ+81zkTCKsUQ8b72et7yOzjJtN7v1DBbX5Ej1MTbDj7lql+GBG1F7W0GzmylYx6tFpvFDh1ZVaPX8gpvONFgKswhOuA/TOWixzka/C/NFtQDs7tFaOtS41eZeQMcmrSu1YSSCqGDoNH774IGAnql4tpmgz+Sfp+kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758859194; c=relaxed/simple;
	bh=3+SZ1ueOEct1EPGvEGJ01Eip7rrgKJq3P7jKNvRTo5g=;
	h=To:Subject:From:Message-Id:Date; b=XVucB2R6Mv+nu5R7xW2eMU8oq4DXitUMPWTUVztPxURjWkJS070AlBh61spJeGvj9oDHGYGryyog3DS3CmUF6oovvBF0ex7qSiW+TyiMTD+ZZiXhfVR7P7OTKGEUMPujx2fgoe0iIHJmODXxPO4r0CwQYPkFjKjlo7eHohkT3dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9KuHExb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9KuHExb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACDC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758859193;
	bh=3+SZ1ueOEct1EPGvEGJ01Eip7rrgKJq3P7jKNvRTo5g=;
	h=To:Subject:From:Date:From;
	b=l9KuHExbYBJqeDfaITN/1ZStlFK+76xR9lI+sStM18r1iL23t3PgR8zffAI7Lg4vR
	 eI/yXMbOQ6velOR9xk3ItXc7mMqiio5as0cCgLOtm+AoccLm++/5qHsWdg3dgp5DoQ
	 H/cMxOTCraqazuwwi0wzQ2tWd3jCSb/I3UkRKGra1OEi9S5sVJitCJ/UGujSM1Gxsw
	 DcPoek1HRE9PRTzwtNf2aHw8Ui9ztiX0UdOZlXT+L/8Vl0Nqlz5h5+6P2oSQ8hsjb9
	 poyQElC9c652nQ3sGzT8Vjj4rgiimxVGFl7D6JzasaAGUqhavm4Mb66/xerkzlz8tx
	 oa/8yiX8N9qGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92195CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885919357.10155.7690685361108693462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c5ed00dc349bb89781651eeacecc67bb1e85f775215ae81b56373125c9c700
Date: Fri, 26 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758859193
