Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2732C14A60F
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762925994; cv=none; b=dnA18rPrbVI/mRJMVdy9qlkLgflXVXGP+Acq8BlFV52HAz9AinzHqxNtTUOki8QsYV8QgQW5vcDKIedelyYbt45AzJZy+R7laBrs5bkEW9KRBYi9Q5GH4iPvyHTkD7sucSudXSW7kzuYCmM8v0yrUPprf8kR71mEMonLMyWW6xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762925994; c=relaxed/simple;
	bh=KNrgwNnW8rIXn7WDjCgSc8AHOofbIwKzMK3f+umUnPM=;
	h=To:Subject:From:Message-Id:Date; b=pjfBDnRnd78w5VLDyOY48dFt6dO0HrjIgbdtsP3FBZ0mkvrrpxE47yMmcah1W3gS8au/nJkRrlvV2uShycPV3bptHPmL2GBqewxloNjDrGW9pVl9bZyz67t+dNhS107d6KlEAqBNxbU388/yUAUbAmIiSnRHfQ8e9HcQ8SiQ1aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMpJ2FbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMpJ2FbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAEAC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762925993;
	bh=KNrgwNnW8rIXn7WDjCgSc8AHOofbIwKzMK3f+umUnPM=;
	h=To:Subject:From:Date:From;
	b=UMpJ2FbUmVYjrBqOotk8hjK4uxUR/UwqlTpRFSrrBqmuD7sk58u9PrVw4ZODfRbPI
	 O6IHphsYOE3/nV58epa1vX8MN2smndTexxM7bg2IQ/F4Q5o+k3RdsX3p+6VA3DmX+Z
	 C7NFuZNtza9yr/QyjriDlWPuK0pvAcgza8IsN1UBSB/hc3xR7hAze8ysXBZg5QWbkx
	 FDWKjWXSBZTfOPVmB4d2QHofo/Of3l0X4airQgHEvsb064XPiT3nb8a0Dg2boOmK3p
	 Sb5eqjIZwQ4bNS5yJ+xzFCWFjOgGWnjHPBxG4bNv4xD42bcUa2AeBe1avvpDKPViG2
	 Np3pTl7umaGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9295BCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292599359.5062.1321713393262947699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376711dfe76e33de70f65b3ff66b000e7f7e22aa79b31d82828b7b979f5079cd
Date: Wed, 12 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762925993
