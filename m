Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA820D4FC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744273195; cv=none; b=E6EuuduWU8GJ8mrc4FCuokS5R7yC83pEjt318bQZJESYGUUFpPcDtDqQJGHG4FYsAfdUKN/YPApdQ3OldKqVQMx/dM076dyXxxtiFVujz74/AKhRydh3g2jusQx/SpSiE4YGoLAod0V6JPQUFPW1ANbDc1RepoZE0Ao2/H3w1dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744273195; c=relaxed/simple;
	bh=wEaFAquyv927Gv/Vo45wa1goN2ovtnoZDbU/ZFig9ok=;
	h=To:Subject:From:Message-Id:Date; b=Php9b7+uiAvPgdDO/cHc4EvyE5A6MZUQJse15c5U248ZmQnGhys2t0IbfDZikw/CvxqghPVDHJuSxT+wySqkqNu1AcuL+qFRjRvayxo0v/htq0FwfhnGI7LUS1lW3/6Fog1wMAymwUWqg1pMgnnC3gVhM7QiXRUJRakGLOGv3jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdM4jpmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdM4jpmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9DAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744273193;
	bh=wEaFAquyv927Gv/Vo45wa1goN2ovtnoZDbU/ZFig9ok=;
	h=To:Subject:From:Date:From;
	b=CdM4jpmXNuaWia1t0uSJw9ND9k6onS6xQMUnEQLvIpK4VZqBcngNvG61h3vWs5uoh
	 t85uDsynaGCV5Y444IU5A+zFnilDjteM04BtyNqRcbMSTbgAMMCIjkkPALyZokGitG
	 pAz3ye/Klzpj11eryDs7S1+TSZFVPgciITy/uTF47/B6A9GM4/38ZrRhnrLjoC6Ba0
	 A9nPBAJCTV3tkojkWr/D1FMyAAD55tz4PjuhjmyJBGXKmr20Kbmh6qofSIfAsza6wu
	 D35ICNjo6VB81tToIRYcPCfTUFVtTAEcBoXv2lXZ/oljLgyEuC7SxQezVI7mbqF4jQ
	 NZNp3R8lDSciw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8F0C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427319363.16255.5581999979991927986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba27a589b7c27e43b0a40a65a1bc07143a35156a1e6b1f8649a20ecf73c9cc09
Date: Thu, 10 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744273193
