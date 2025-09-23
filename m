Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7930C10E
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758661794; cv=none; b=kuwmRrnK1l9uK90cJiDonEk8au1tqZO9QOTZQO18zEEtN+3l3OhNE1On2no5HoK3j6zt+jA8tjKLm6aYuLEk+MAID0vtQDZPpKPwywuRmQ707ITYQfl5fqUq3dFLwphr9hBr6el7R3wznSxM1IYiqZmvo/xS9h15Hyoz2LBQpDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758661794; c=relaxed/simple;
	bh=WhY/NohLFpXRPifsABY3m5kjbLs1+ndDcaOHib91uWQ=;
	h=To:Subject:From:Message-Id:Date; b=eAYqaZ4QY3atZDg53Ve++J5bFpNwLOz+Vnh74Gk/IA/+DGl+sCa52nCKfGU1pslBRDZ4HhiGKCJHC/3ZtnAkDFAyV6o6MqzC1+62ET1+iyaROnwE4avpkkz8lMkE9kGiTPn2E9Zep9HKF5F+MGtPdJWVnONNliD3cqFKneiNkdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZt+E8+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZt+E8+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F064C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758661793;
	bh=WhY/NohLFpXRPifsABY3m5kjbLs1+ndDcaOHib91uWQ=;
	h=To:Subject:From:Date:From;
	b=FZt+E8+P5AnKIyabylBrOFiugjVkxQxlVNm6geM8Pk4UbYxiDyZG9EQiNnodaIBuV
	 SpHuKoGIrBmrCMx7qRALFYjSfZe1bWjEeLFAAo0b8SoVGn62kCyr0vmMj+rK1MAiQB
	 vHdV6c2vS0UgGWlxOpMcqUgyTLQ/z1j96LK6/ONIOZ/j0G3hisBnzfkc847PWgscBT
	 /r6GBFx+DC2SymP2MNC0GE8WaP/iHcGpCYH7FlMsUuZhimSAgoMPPS5MEhMsDE6/F2
	 +RaPmxD5hOU1LLIDsswQHpexVdm2j5HQ8rE6XyK+GcVFEmLnctBOWRsCLqDFSnaC95
	 s3Q4hQ5p7HqSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB39CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866179357.32448.17889166975856910560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a6cca04f373cbacb0ffb48a357e11dff6009e132d786735fe4780bb3c54f03
Date: Tue, 23 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758661793
