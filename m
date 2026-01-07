Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1603F217705
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767785634; cv=none; b=KXHpyHnKXzmJnKYtd5VgeH9qGFXjvA48cpwIv7JzyK/8n1R250f71RVpdX2ijUKfh6ywLkshGV2QJCRcCsi8G6sZz35VAii0uNqKYa3nc9mjMz3wo2RhOEDKX0y81c61pKvOvp4d396/4Vgr0xx3kDjE8H1+gdV9zyOuABQuUFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767785634; c=relaxed/simple;
	bh=Yghr8POGcGj7lRdfyzEGYvAxnNcni39wLb4AoSMUPzI=;
	h=To:Subject:From:Message-Id:Date; b=XKllhhouN7Pgw+I/5S2brUXzc3hkNJi1thNZcujsrSO2yeM3fdjPi5pb6/UydD3DIq9IYkcX0yUxOlaJ8PMjjN0LI61abpPWvZz+e8D2TAFNFbxs3k58C8y+20NkTlSXPfgkaKmFiQvTmIGzHTvAnlTw/Rkh22ljqUP0VJNA7Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y15tDtLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y15tDtLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9764AC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767785633;
	bh=Yghr8POGcGj7lRdfyzEGYvAxnNcni39wLb4AoSMUPzI=;
	h=To:Subject:From:Date:From;
	b=Y15tDtLYZzl1vuo7UxwtDXAWEADDWiIGXQVk3MbF20s5+PT2pRxHEld0kAhi0Opn9
	 RuJGtFlobSuuGDK9pLH2DKnyDeOsuIigxPDWU4p4/14rncHxiWr1iZmXR0RP5puNqj
	 efC3yT1Nl81rdHBfvJjMeTbHPnBzZM9tdWy5F6FJXGChJF0CTvcYjG1Pz4NdoES9z3
	 azdvhLhIJ3/V0HK0WeGUO+CAHXaTZM1eVia2zdUVbeNJhjSnRMnQsq2gcoRgU3hmg/
	 TT6his88KzG12lvJdYk0DPKRYsfokHRpPeFFbVNAavL5UUmXiQTBtTAG8Hu+LhePQV
	 Hx5hdiDWvqSZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE87CD585A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778563357.30408.2318858876532099989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6a6683a62bc972d5c9ac6c57cc77ae640b65ebeded478acdf03b7cd405986b
Date: Wed, 07 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767785633
