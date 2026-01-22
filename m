Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0BF332EDE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769064834; cv=none; b=Lv4gRfmf6UNAOtFZXunXCSuzYM0so6olXI4wjTKra0nJHRfAJmHmrEI3KAZq5p4WIppajrV7v7t+hFFHzHXS5kH85Ue5rHIiMvJHZ5exMhRyZUDn3eHr8S/Kppvph9VJ5fmpBxc1W71jCyTclDn2sFRkcLBZb2tMhcQgrbplklI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769064834; c=relaxed/simple;
	bh=iF4HmpN9cShPDRcjMx+oDQm6hVGCuoSYwHmDQsT+8gM=;
	h=To:Subject:From:Message-Id:Date; b=BHTeqQB2Uq3uUSEERTopHeCoK0/wBLVmQ6ara6d2z7HjvlS2jeK40zi2SVsWsp5pobj11Hgy0t343MhOCkszWcgYEoCAspu3yhj8KyrC/j7n0fqTqj7frvNdKNaBiQTT4t0WsNt6skFAH9JJQHGd5DAc/WOPOWC3ArVq7lORkKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOHiTHc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOHiTHc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75AFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769064833;
	bh=iF4HmpN9cShPDRcjMx+oDQm6hVGCuoSYwHmDQsT+8gM=;
	h=To:Subject:From:Date:From;
	b=sOHiTHc03Z7gJUGWFutjBvhfzabpEPAi8v0DxUKtuSEt0rrk3D9w730Md2atnjFbP
	 eZIqgestyf2pZRjApqMNtRqd+pizmZkH3FT6fR4HPQ1u4NF1+7tWOhhmP2e2kKehfo
	 RVGTxeohdP++PzePL88CEpPxxy2Z0YOBy5kMTaX7zuSK+eJJmVlO8MtQfeec5N326+
	 dcRU6+ji0JTbNR1fD9R66SuC3fNoE2QztUYPOFcjuFVwO3usvlM96gtdwaz7u18GnT
	 fN4QxrSGyVdqE0YlzfBzXboLLGZdtO9q+Ng1D80gMDTrSK2W9CCNFJrPkxOYRLhJOQ
	 rz3d5fxeDBULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96523C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906483358.13809.2727024787127985818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1312858e1c85c5b51569d0d2cdb5aa4472135df7553a96b4817b0c32c54b0c41
Date: Thu, 22 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769064833
