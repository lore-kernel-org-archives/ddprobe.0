Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBEC1DD88D
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728987954; cv=none; b=BL48lI8UWX6kQypD+imnECgTaRCDzQYfCS/Jw2Pvn8c7ZC4uMfpKmYcho1G7W9sz5JoL5IciJknVhOjD/nG7bmBh5tADhaagQ7YrlNc2Wgs/u3S+YSN7oOIaxvujugZLqadZmALBEKR36qDWt3fsudpXdemMnI448QejmJjAheU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728987954; c=relaxed/simple;
	bh=EozZY5fr/JJycY1l6Y/iBCDA9izw+Pu+J3Ar+FkI2gI=;
	h=To:Subject:From:Message-Id:Date; b=NYjBa+mxnyZdTHIqVCgnaipYuDHnaLajKWJO8rolo7NNMoPq3xKvBAGygpyf8b7KzMPpd96KpBkAGBxLzP/buarFGgpSqn9fMs8i5pQwofuaVo5G51zPTzFOb4zb6OSliCbID520/tXfLqeFbZ3bUK8cxrLUS1xghJbeM8GSE2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHhlCOIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHhlCOIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F68C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728987953;
	bh=EozZY5fr/JJycY1l6Y/iBCDA9izw+Pu+J3Ar+FkI2gI=;
	h=To:Subject:From:Date:From;
	b=tHhlCOIkhKEjsSFg6xkq+/m2iIDSMpkUuY0+eWPKj8ss62j8NJfL/7Dk/HcJeTtgY
	 R3Sx68Z0kHIpQJyWQ+xy/tCc539A3WnyGUkLdfDVJpj2NrzgzrrkIXy/SWdm3hQL+S
	 ATs/X9NTh/kBvDpzwSI4mZoAQPIV1CXgPOoRVHC8hvnewKdiPTpB+7AREWno6/XVzg
	 4XW/qWNxgqmU9o/O3zFBbNFYnnOY3JQcm38fBn/ceqDZMpILTB/ChT8wAysboJitc6
	 qy070VHf8N8q54qIRarxem4X7Kfmmk74kBTLpqyhLv0+DAYvV+AuLJoPjuUdtarBbP
	 0tDmciaUWadLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF19CFC286
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898795362.24364.9719397773543105384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295f885c043c4f8f06425be8adfdd3fb10f268b5d9f3a326c704018ca3501c96
Date: Tue, 15 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728987953
