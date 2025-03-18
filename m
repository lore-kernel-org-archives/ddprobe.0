Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D71AC892
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742273994; cv=none; b=lBb3wiDeBq7CFfT8Vqgt4yP1mChCpHsuB4+pFiUq/XTz/qDbZszigjVyVaxuVYhjvUQepckBIhdtG2meYkz/Fy2gSJYhSVFo2ys/YQ3fc2OpALfoReCyQ2L6eMyN8vL8HJzqG6fQ5degZbHEfR8b36Ffip0yTtRmyhT4/H0Uses=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742273994; c=relaxed/simple;
	bh=CYVFIoVvzfv8dJJvuVXkWRezrCyIuVao0Sk8qVfej/8=;
	h=To:Subject:From:Message-Id:Date; b=M4S8q1O9tnmiInV7ONtecTFX9Xk962qnnSauWF4TirDd3QZ6NReSGZ4KoFZq83Enl/tGdPlJLrxew9L1Ge81kXfJ7L5kTB/DsPu2ZHak4fdKV+k+uVDVQrTr7MBsAIJq1cDCWZzfSa/JICu2WsI6LpRNzZMDeIDiC8BKHOd72vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBQrNXDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBQrNXDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742273993;
	bh=CYVFIoVvzfv8dJJvuVXkWRezrCyIuVao0Sk8qVfej/8=;
	h=To:Subject:From:Date:From;
	b=ZBQrNXDviWfyKUc67ViSIm5zUGoUpy6v4udWya74UXHXUpqmHRC3mO8cMs1HlEqKX
	 7eYhq2DzjKU4+AzbgGpKd3pEWYE41jWPooCixuzBQSuCXQCIBR0Vz3lI5xEssj5zw6
	 RqVltowdY/GvIDGvDs4Kh9pd7uCIxL2q3916cNbXIbhMv4qYIyHTPi4nEXdXzB3CO3
	 QBgy+SE4tHueV4qMeaSV/AJYgpt/2E7F/HUttiOOywnD14Rfk440WQeE4GqnOMqQQk
	 MUTUz1l8MBVvOomoBrlUOKQ9Gph6jRhB5njRtrUyP2nBGxY18DG4wsOeW6wWVzdljQ
	 w7Z0CuoIc48eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9DDC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227399361.6204.10012057645909742070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c00488fbf15122b45b8d6ceaccacca925fe50b7ba442585994724c2e97bc3b8
Date: Tue, 18 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742273993
