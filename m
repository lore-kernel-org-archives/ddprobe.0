Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391FC19DF9A
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753751394; cv=none; b=L4DG5WkL7Tje2cXuWBa1aII35xAIeQ6G25XIC/23jMaJeUvQe7OxMoWHWrPgftv4XzhufKRJsW26VGFH4n/uUjqvner7lSIzB/NDaL9dJ1dtUZBC2JP0UtyKRm5RAYIu4VelpiK/fxwQDdaAJJRg0GQWFTDOgwS6DVLsDsbofpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753751394; c=relaxed/simple;
	bh=o0QFzSiHQBK3uL15R71AwxBX79BAt7icSW0Aj+6099M=;
	h=To:Subject:From:Message-Id:Date; b=IouafGR6gmT7zk8FJnSR08UOuoMhsP/RIEkg6C7m83hGmtMXqMEgTVoLQiwJIrvMgkwByHpvusr/jR/ArF79QPvL4pjD41YVG2+ClrG5u0vHzWEPIZ3j+CgU/2m9Mw9pVpr8+t4kV466QzEhoDNFl0wDZFAVOYvpaO++i7P2h+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf1AZ6sX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf1AZ6sX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753751393;
	bh=o0QFzSiHQBK3uL15R71AwxBX79BAt7icSW0Aj+6099M=;
	h=To:Subject:From:Date:From;
	b=Uf1AZ6sXamjartwnCZw6MmwOvOuIN+MWZxwzGjDF4DEQ2nmdSmhWqTjJuxqEUw5ZT
	 fBt0937nL+DOJR85K6JDDiPqNRpnF5p0dAAFNkIeh5/OMNL9WW7EgBenonsZ2pDWWp
	 /EHjz5vmQ/cDIs5+Dq2qzUDRXsv1EdE4HvNK/1xuqUtBW/V87oNlTHJnN5ToCWWj3k
	 bvoVDuYHMDzLd2z/ts4lJYmzntd0VQyFHJn8hbsjM+v9nVuYmncCAS1B75e6QNzGuR
	 8i502fp2hqWt3wU+jpJ2FWZfExzMbTwygNV8w4L08wMIsCyzlREM/UhQnAFk0vJ/m1
	 QmWm5t87ZtfbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE6FC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375139357.30353.10373228975802539432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ea92eba6327578cf7941f7fcf38366e23cccae9f628b61b7cada59bebfded4
Date: Tue, 29 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753751393
