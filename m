Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FA933D6D7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772873094; cv=none; b=RKIy73IAs5t7D84C1rX+isDO4hbufCurOwL9nxh2xDrQb0tCGaON8BD2Qoi+GNlTcSJu5mgf+Zvor3xk47l6Qov1OVh/9qwLJR3jTa/dLRLBk89Zim0Ut9ebhr/S5BQaOINqzaI5PexbunE0brs6gKrCLbnZ+TzVvFwoYozqk6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772873094; c=relaxed/simple;
	bh=lDPVxzw9NHrPWlZL1lz4uNNZ2hWuUVN1yExGdIim0zg=;
	h=To:Subject:From:Message-Id:Date; b=eekSK/8mJ9dPXY67HHXGUaievVo/gSCXbfXmOLdsdrsMiJCHm9wbqp1tjWBW/sLznbMq9+53lFdq2MsWY1iIDvU/AYSP24hM2PFT12uYejntNJerdU6x2LMGbLxYn+1+aDmNCO7sQve8NiBHtdmP0UOozr0M94SPTNZVFFSXfYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDXHYXAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDXHYXAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF37C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772873093;
	bh=lDPVxzw9NHrPWlZL1lz4uNNZ2hWuUVN1yExGdIim0zg=;
	h=To:Subject:From:Date:From;
	b=eDXHYXACLsq++FaYaTAZi08tJkiYSfFChxSCDHVp9KlUA3uLGNFe1fEv7QTsjwrTc
	 c1CC1+nREK2G9FtTnz3wps8RQW7Rz1kyjIp5g+VJadKUcJdTUsyQxuOfifjogw7Ocu
	 p/tgE6F3dmwdu7ZJwqZLwr1Cgck1gPEZcApi2SUqMrjS3fTyib+GFLJyqg1GQWIDNT
	 B6o8XZQxCJ4GKE/n0AxBM8rqe8WTQpDan7Mluf28VhGDE7fdDVinD8iBgWhTA+JCDe
	 jy6Vctl4zOLQWZamfgz7et33K40BSb7RVVF0ytx5lAmUCldMCvs3hACn2dkvh/IMM6
	 Lxn50qX0LjqYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9838FFC9ED9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287309359.27809.2167117323416033533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7033e566cf2b90d25c87146e8f114756bf3dbe36faa0ad5b8047de1763dca3b
Date: Sat, 07 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772873093
