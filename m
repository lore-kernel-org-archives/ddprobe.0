Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FD823F417
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767105234; cv=none; b=VZPkEvdgwTVjSIH+Npfv89DFLpO0ocYB2wJ+72XVGA8nFiXHHwvtxglqjVX8wXSrDMfOPsJx+WbIJVOxjrpRoukIIw29ykKmcyXhtfDSOWoLVQlZDh6g43UDkXGBOnzDNe1QuBFZY7AmTLtVWlAhtVmcoZMpWGD3p5g+Tuclu9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767105234; c=relaxed/simple;
	bh=PVegJ9tqRxqgkFwEsXqSg7Ioa+yqorIAoNxSC4ATiik=;
	h=To:Subject:From:Message-Id:Date; b=ineAZODx4O1eDGwzk3f+VufFtnhQ6iDfDXfV1+BgNb9i9gUxCD5OSrPFffb2Ty9vguMOg24OhvtE2lsmKdfMgHa++Gn8L0hrIOn+G1Ej01PxjKOHOurzSTjII2LGQQWLu7rs9BGVvhdBBUM53RmYrTTwvpUMt40mwhY7l1tqTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPaHcquQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPaHcquQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F4C116D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767105233;
	bh=PVegJ9tqRxqgkFwEsXqSg7Ioa+yqorIAoNxSC4ATiik=;
	h=To:Subject:From:Date:From;
	b=sPaHcquQbNE5xaZxAVfHeIoKMPM/skTfZ0Pwialik7Om25nQpKqz3u4YEWEdjU6PN
	 9PYd0Hqflevdw37pD7rdCpz1f6U6YRrmrexusTV5F/64mHebVLjWsJBGOZz3XKhlFV
	 MYEin7Pr/HSvZa81H0nPrgPDolbTcAA0YdjXuuKHr9i0FLMU1x/3JL95Sv0EUdn+3M
	 fOtbGZIfUS1N0dyQ4ESuXhJLZiQgq730Lh6kgLgMLaL1cvj06o4CwuTG/oRCsRy6Ld
	 76Y4xGv7SEhzEJtLZiUVcfhzra7HQovvd2YaoYfdgd/9FWp7CvvCMCGKx2Ke1h2Ime
	 PFrlMUXOxhu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA9EE0203
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710523358.3688.13900978130465269560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ffbf9159a2ec2213f9b71f287f33d9503926ee925427569434bf474ae9236a
Date: Tue, 30 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767105233
