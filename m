Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268E61F16B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736620554; cv=none; b=GUMqdcyI+EIKpKcs2v/ybvEB/XHKPuKHnSMBevx6cTbkTS9yyUN3eVGo3QBAvXQ6VWgJB41GY0T1XM4vLBhzpYf9lWfN8Yz8PimZyj30zM7IRvrmXBc+3mcloab+BCVweSYV3xzlp87GTvkBXvgLSj/rbx1SxY75zE857Apn+qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736620554; c=relaxed/simple;
	bh=9DTz+DLERIi0lgVBppiNYVYWqcLvSm8v+U61FDf7t4k=;
	h=To:Subject:From:Message-Id:Date; b=VNyzklFRrodAJ9oQ8DF6ATS5VmZy6C5YVOJGZs7fYn6VpADiKbuwSunt2m5I91dReaao+tO9xu2a2lGjLvuzrUrflZWiLKrjGrnlyujI3Acw4nC88uQmZITOLbZT7lCQcOv6scAO4eMLFKJ4fRaEDvUkBRFQRSpOKVtzRcYPfMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itWZmITk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itWZmITk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F4C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736620553;
	bh=9DTz+DLERIi0lgVBppiNYVYWqcLvSm8v+U61FDf7t4k=;
	h=To:Subject:From:Date:From;
	b=itWZmITkd+jYkyueJhHJ+Aqq4vn6t1GyRR7XqlVxyk0k+tN3Gbmm0XajO7x3MP1cC
	 qvJQ0CmdEszqbo/BJAexyY7jV1pFw/wGblPWuDETxuYWW1dKFKAp2aWvrcFFvLiewO
	 AkQ4ce/3OvrsqLDN1tEImYYGleFPigocQekUtr5TG/x8tkf2N7OE8opKTXuTr0dVxq
	 QsbCIEDM6p7zOStp5KsZ1ZHBNVHN7/1hQl+UKvHTFjAqVxNPLZLDIDEY4sYygJlPJ/
	 jnb1DJpHVtoMPwju5AYcF5aG7ApD6MicqaRqVSXrEadFDZVLS8ELL1DJb4SUMy6g8C
	 ZzbgPOKNccDLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB1E7719C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662055358.7856.14409779417769918478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65447b31ffc72671d458b7a584f8a59e6e5cbdb726e22cd78ade615e05b314e
Date: Sat, 11 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736620553
