Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6C5199EAD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768175633; cv=none; b=nbKzyfCLGoRSSV43Qx2S0LRfhLjzMn5EBCtMRCUndwPNi2GwjfcFc5wzrGOLhX/pjN5/tE3o+tiVQnHhpLnF+MEpnIVmN8tX61Gxm4mPthIs2oRcbTlxDzLHbBGiKEpKgA+la+CYh7eSssgV7LBliG8avvzU3QdeBMfqjTc/Jwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768175633; c=relaxed/simple;
	bh=7a63VNLnaexgu5l7qAh8yBLUzkAsFQhuHIHiLUmCVY8=;
	h=To:Subject:From:Message-Id:Date; b=NgC3lmQ4Kfk2yg17K9TIiYieKcXXqbCmMM8HDudDHgVtoC3u8eQG0LZ3d+FdIta2bUMtc4cW2534TPSTVkLGd9wW/4VrLP0mfjY6BggfYb19b+xSVRD2SrWJzH4UeDWDUpAPoiJqJ4MVRfCrl2Ov1K1rXP/0yNt/mDjr0DLwagM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbYw2pjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbYw2pjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A688CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768175633;
	bh=7a63VNLnaexgu5l7qAh8yBLUzkAsFQhuHIHiLUmCVY8=;
	h=To:Subject:From:Date:From;
	b=lbYw2pjVsBfgsDXuXO5qFLy4QFMybmGFgmfJGnjtF/Y+JowYfwQ40PQs0fFxz481H
	 jLAMvB7yVmOCfqLXfoLbLvAxu8g1h8ougge06ALQgUhzhqlYTnaVS+B/+RCRf9bwGw
	 uzbJqAtnypdXZoIdHngKa8j57CDr0p+3ciyHFytF5i43j0cUeST1XI62P7uNWqcJgY
	 msjcz62Krpng1pliVF5pDS7REU+GYhN+o3kNWWh+bJ4VRzcYDzeQm7Hp7l0U3a+4og
	 iyz1eIb9/6r2dNLCF8MATP7zUx28h8t+bpbdiAAO0g1990LI2yC1PU/MIEoCgo40/j
	 zosCO1izji03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970BFD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817563358.31174.15878653171724260198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2739865e0a0e954aae616492dd1dd025da9ca90296270faffe4422b1d2ef8a7a
Date: Sun, 11 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768175633
