Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B81D67B8
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726228554; cv=none; b=djYSOwPojdz4F1Vpos+Pkv5Y8YarQ7pNH0caMR4jAxILkojC97mM0yhHoX5L7LHPjLP3DS3qrVTfNfMz22mnOw7UQGLXbQ6RQONSZPWsLelvuShbh6QoDdJyWxPBJWNbAOA8AXBXaHdvAyINkHQLUWbyJt/eUz4SHpNBac9lIqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726228554; c=relaxed/simple;
	bh=KanyXITVTM2kYyC3+GHEoydf8FbQdqIwpfvH283pD10=;
	h=To:Subject:From:Message-Id:Date; b=SUWgMeCzoZt/v/5Tca5Bc5FQSspABgTvCExwbzDWI4ACUHTupugF6T9oHOrVavDbgGvmL6lPTvU+XuK6i3bcclFdu0mVpFLnXSkrkDyzpIJaPFAdDcfm4nGuG485j2vaoRLR8QLipUMX+0hgFbDSdsmjBXj70fFTGHGA5c428zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHM6D7+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHM6D7+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1851C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726228553;
	bh=KanyXITVTM2kYyC3+GHEoydf8FbQdqIwpfvH283pD10=;
	h=To:Subject:From:Date:From;
	b=gHM6D7+b34PvIsspFFcqF4MokVODooP07RiqeBQMKAmFdXcbfwymFHLO1iP58tqho
	 +iG+HH8/iL4XjCk8dldfxU9WrRoKYLr2E5o9gbkcaC9RMVwZCRgfgojXqTAMhhc6tM
	 XyRU4+xA/tbevz8WcdT1oc35x5I9iy44hz4Km4wQ26TS07n2IsPeXdJnxk4cWb1p7P
	 nVD6mzrrOlMxi0ztlBbNjcwExNv3fT6qJYG7f+4MQxTyebQaiSBgZet5DdS0XKZrqw
	 cBZ8sSIvqgs+H0x9G+PXZJ1YBVNEW+f7cFO+RUGINB2irUmsh5YkyGKgE65f2zsMWk
	 g26Njb7tzUbMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE7FA3748
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622855359.4331.12985716200071536286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ba3eb0f082923f564d385d891178d477df29dcfdab53730bd0f6c44e10656d
Date: Fri, 13 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726228553
