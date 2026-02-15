Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D8121257E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771115694; cv=none; b=IGA19RAeWF3TDzq7XYjG0xPeD63RNYMyA3rPlfCKOWtQMTmnWCdaSa162QgXCOr69VGKC17qm5KRGaVow4/ieMd7i+ZCwvD+f68YnJ5sgpvfOaMS1AVkMvgV2GK0/I2SQRAVtOdbzIaajBq2uUREtPY/qoogUJzEf80Q4mNDfaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771115694; c=relaxed/simple;
	bh=QCd74Ej4DhGn94DYzhhgvmuFgHOVvT77N1Mxuz0ylJw=;
	h=To:Subject:From:Message-Id:Date; b=vEsbaSQmF1bP9Z1CVP8sbOk/bORVXx/aEvi/eRoWqQRBoRKjYJ8nzZ02NnIVmwzKwtk0/rIHU8HNs/GAtVdLu080p7ZoQ4ngiCQyJYYIZE2JgnXZSCZTm0yxKpU5Lj7VwqL6oxCFSc7+z0sdQ2kTqVSwGX0k0OyDrUjJw88HUWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUzVUUMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUzVUUMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5E3C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771115693;
	bh=QCd74Ej4DhGn94DYzhhgvmuFgHOVvT77N1Mxuz0ylJw=;
	h=To:Subject:From:Date:From;
	b=DUzVUUMtKvuTL1fwiKaDUW0qtymy0HMw8PexnqDETIsMNb4PSZr16CpArxyaM9EVf
	 hMzvZ3u3+gyA0VV8tw92p1Cuz5s9/MJOnn2I7tGef2ODoJi22dLZOL9k/DAc0wWKpm
	 LWSam1AaoWnNpIho0y6X6Fas9slKUtpBQqOo11Nsw/h6UDa7C1TLFEq5S1f7WAiIzp
	 MdQBy4gX1gFN/2A6+hjYuWjcIbBsyg2fcjkKK65h/hTuvMkPPC9R9IPCurF94SAFfw
	 xrMcZR25R6LzJW9VR8fcOBkDgu+0q8trI00u5hZa8lDEtugBSPcg+8WluPM5Tz43R0
	 T6piQWJUwOaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC6EF584D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111569364.32256.4998375755016345751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31a2479855a35a37bad74854d2759f9197bc9212a4f600d21117f248b169dcb
Date: Sun, 15 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771115693
