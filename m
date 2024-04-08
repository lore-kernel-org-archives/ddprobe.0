Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A4B7462
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712542697; cv=none; b=KWhCjEckjve4v3DaaScbxY7cHD5lGRg7H6zB5/F43ZmIKEyNr7ckyWu8tqPzohPtgVMMG4/66U1zWoO7j1oQG3YeTX2Njz24hVIRhwaPBFDkeQ/JK9KI0dMHYnoiv9J26IwvXYwE5awHqysijbky8dyLJ1kNBgrtLWiE7X1B9S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712542697; c=relaxed/simple;
	bh=uTYHj3jgv9Vf1OWsNLUMCb4V9W3nxT5Re1g2+uAIY/E=;
	h=To:Subject:From:Message-Id:Date; b=Zfd8Di22Lh6If2mNgCXS6lZNv1Z//OnRf+295qMSrrvOAIS7XaDEkUaouDbwPTizeoFUDllnq/KaNcBUOzNX9+Rvul/ADGVZc55UlDCkfOj3Z274hHTxlFMWBLz8zmvMqhJGVhENn/0yFMF4N4DgxdKAA9JCxbu0S/kGnMqve2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZY4uagx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZY4uagx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7428DC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712542696;
	bh=uTYHj3jgv9Vf1OWsNLUMCb4V9W3nxT5Re1g2+uAIY/E=;
	h=To:Subject:From:Date:From;
	b=AZY4uagxlEZagMDijEvTff52fY3y3XOXp1KG5JYRv4KwpDaLf9ar9t725C3wqghWr
	 b14OkOr1s+iwVd96h9HFX0J/Zzr7mwX2KwE+EonkbNA9Y8fwTzk1tEtUAhNS+TjyaO
	 WNzmCoNU+W0I9mXLaCCpKjosXblkm3UkzbvpBeZtUswzW0D3gaAjPs25pILLm2++f0
	 diTUOSaptXhMA01BBk7M3AF5amLoVQxv2pr3LB/6O74WGLbWcarW09EZzc3rIK7XVE
	 uRca5+Z3y/RxcFovDVrh6VEPyGxBBTMLNL4MWWROTBxOeCiZ+yTxBCrRKGBf2dfYC5
	 GL/vRa5b8/VZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F36CD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254269639.10850.13245147826572903495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfb127f319f1f044b4b33d919167298af882a39e62860e4cd566a1fd97d324e
Date: Mon, 08 Apr 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712542696
