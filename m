Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAF31E50F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719930923; cv=none; b=po1Q6yPSzVR974JAm7quRUY19Wx5sEsA0UCFrdRKevPUox/oPu9e1ulmCD2WbVc/8WZILkuyS6Va+Qy/wjgxGIRbPFGFKCUSbtjY99ekwUIMjQRftPsJ/EYe1/dDGyGtnB+a4xq4AkHXyftHYN6FY5UKES0oVglWxhz5BucTbWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719930923; c=relaxed/simple;
	bh=MPxj9YZjvkBZkoDD1O1C2UQciBY4KVi/7BjX5HGVPTI=;
	h=To:Subject:From:Message-Id:Date; b=hMM0WG7BPgHDvmRA5JY16xV3J0H4gVcvBjn0H2kg8Ke0emhxt5nlukGqi/4qOcHmgyhQ4JRM3fao6OM/TchIqSXBmyoc7JXBwPUNg4CSxVCHiYSjRy5filQt6ALRHs8lRkRhYcDkfr67GyX8E3zd71HA/wV0QKSguw5jD9I8TBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0mOtk4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0mOtk4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEDCC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719930922;
	bh=MPxj9YZjvkBZkoDD1O1C2UQciBY4KVi/7BjX5HGVPTI=;
	h=To:Subject:From:Date:From;
	b=L0mOtk4STwI2DX3SqOpK5uwJyrSUs1dVKFKsDZO9DE0+EeWCz1X51N9u3tuDA6aKb
	 03f3pKwfZvUn5g8US7iEuArX730yNdw7JUSVGpsaSNqi2InGxr14H0V9Fd9Ev6XvmC
	 CHxT7c3Li6t5lQL9xoacTWAbjbBoOqScFTBhbPIDk8TpX2KkcRBCumcq6x2etqi+On
	 z8qxKWS8uXTDHtCRWVsjYNm3/VooQAOIUFURdKdHi90Gs3S+1AEY2p2FT97qDBzr0A
	 SWD6rn/WO7B32C8BBbEqMVicdj+96YpJQgwEb/k+Vvk6YBUFe6CTq9j5USn19cg6Vi
	 QKRrD6iNdkB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD810C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993092276.28872.9896621430786358530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98d64935c43d8b5a3fab0a1e860df563d3451b39916bde89ec0f38852c795d3
Date: Tue, 02 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719930922
