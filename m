Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71D74DD3C6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789647036; cv=none; b=SndHnRZJlwH/VpO7wnYV6b48+DSutdtnT7ir6mdgMsc+GAxqiME09bD0e0vU92fCWV4g3IhNKPBisNNMkRghY8y3poaA1+3fqG4CnEKFrFqThihRo3agGUmtauMohH+U/JgB9S2stc8O0JvZ7hYMdKKMgVMenf0fcIIqgolZzfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789647036; c=relaxed/simple;
	bh=/0aPgTQ+wQ1fMzBuo+lXNATH273bSemVzqVkknHWbGo=;
	h=To:Subject:From:Message-Id:Date; b=kBN6zwwkvc1lYFU19sPFJqEgSMBsd6F57G7JPl9oNPryIkxpSNJmB4cg4eATtTw5ZMFLr0VWkXjlcf53SpD6qkbPuTbdopw5pHKmISXeooI5LBsQ9QAC33ejqnbwSNrQVT1p8J5psTWhLM7gQIYyeexfoVo6g3IxiFfNjBDxHqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owbc0YZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owbc0YZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC99EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789647034;
	bh=/0aPgTQ+wQ1fMzBuo+lXNATH273bSemVzqVkknHWbGo=;
	h=To:Subject:From:Date:From;
	b=owbc0YZyDj8o6Bx658GXXdKF3ihwJdhveX6Qt2lEbb4rb/5azKyXsy87AKKb428+O
	 9oLU14nPCxhm+VHdIlgthSly9CkUyw5V9eKwoSaahI31fOgtgrAnx+yi2jqaUMGEGg
	 1jVaFMSU+o6WhXEPVIVHt4l63Cx7WIz12Zzd+FDTzyUm/K4soVAmOqEWe+KQ1YsGae
	 lxrnbjjIMe6/UcAk84nhC+Ytig6nOZAtwtA4w0+SytATKY0FX1V1eazJ6vxkJj5wzT
	 L5c48hYR8jLvbQyMM1CZJ4Rk8dWaQBzIBujkRqKjM8xWs/y+DjO++SsiVzsl2zCHpC
	 5f7Le0ZXKtw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED2FC982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964703376.20076.14831060390636773093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b76009cc93c443a5e180118d9347b5db35d0361ef12a2ea978e0aff90590c9b
Date: Thu, 17 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789647033
