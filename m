Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5744E15958E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720655243; cv=none; b=qUdxFpGIpx/tR12SqoxpORM2JLDZjQMVjCxfeSXes9GwbGfiVWb+CGA6/ukflP21N+e1vPZh5SN3/NlUUDIT7e3AZ77fSWMna+4dpVox4uOw0Bwh93Vx4D2J8ftj83SwPCJdugpnM6FiasDtvsGSuyFrQCQ2lpXYO5CXE8Xv19k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720655243; c=relaxed/simple;
	bh=vFQ3KQgcFFrRWeYIpWYVzsHsG25jrPPV/ALbOvpx6Yc=;
	h=To:Subject:From:Message-Id:Date; b=CPIMIotv3RHeut0AYCtOeIyiFp9JE1FefN3liP/d4r/edMp7TCKU7h0FQHQoQOq6OG+9GK3Qd4IPjqeqisA+TJT/CQfwWI/eS35SECe4THbUdgLboDoghsbO2Hr2ftNPdZ3M28yvR+gsHbjgwFvOrDxm+TBB1CkOaj4HIc1bL5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD+yJtg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD+yJtg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E631AC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720655242;
	bh=vFQ3KQgcFFrRWeYIpWYVzsHsG25jrPPV/ALbOvpx6Yc=;
	h=To:Subject:From:Date:From;
	b=oD+yJtg2Lj6mwCIavUE4W9iXIHYlZFPJvHQy+4wsATY1s3DwC/30CTcYsZxynM7hF
	 iWuDrepdAzWkz3Q29RtPA+sD6rxyWHdi6chFW20j+l7B6nucC/S+TDPJ6+sQATnQUH
	 DYicMjf5ekENED3jTqKWiGAwh7xrMZ1iQlS8IQ9wv/ZYz+N2cVOLXSLrk1ZDhX5ONR
	 AnTfsabFNz7RlRMrlL/iM3y+GIMZQw0gVEy3KRy57tvnqeyNFBwChWGL9+iTb/11t+
	 ZkI7fBCXpHg7O2VMCwZWwDJwIJ8yRMr4bs28sB0pmXg8XxF1BkS6XaXB0tHMjPOcYq
	 e2XtoNtniV5fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4934C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065524285.30326.12894716696213143184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0eccf513b766760ea9c4171090fe472f4cfad34757e9010b88694431c9e875d
Date: Wed, 10 Jul 2024 23:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720655242
