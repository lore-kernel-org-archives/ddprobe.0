Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD74205ADA
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742476195; cv=none; b=muDxl8wrv6K4dPMNrw9WYhpDA2F0/q17eV5/LrJ3FMu0AcnK70wOkHML5iHFgSUXL1zIF64onRAZhAEwzMg0oGo+kNaYsRWvD/YACUSYnSPTHrqGSDpxPiv91Yary0BJh52zHpmwTevaNkIDy8bWFtCEeNybKeQZaj7Z9LciwSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742476195; c=relaxed/simple;
	bh=bDQY7DVz4U3n08KBc2YUFAZcH2VJinhIYUgKS2pLeWg=;
	h=To:Subject:From:Message-Id:Date; b=Atj0BQZ1eyq7aY9Am3hBm5X8j2/0DrIYQYs/zT5clbz8mP+G5krdAwx0Ue2oZKS3f7FNRTbFeTiibZ/Mudj8cC95NGjs3RDpJeCZapBWZnvuUqtDBvU5sX9sloW1DRQRjl8dzJP5pdfXfBOtXbvTsRJPYXZsmm9eof4OTWHsHyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvRX/46+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvRX/46+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF85DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742476193;
	bh=bDQY7DVz4U3n08KBc2YUFAZcH2VJinhIYUgKS2pLeWg=;
	h=To:Subject:From:Date:From;
	b=NvRX/46+dcvlYM2MvEgDK6n4uPvoGCU3TjTkjFdsomahr1pOwoGpTRuV4I9SAEykY
	 hNJzGHheUVCcih7ul9CPiUT3uE1atJ4CyoMIyrDQRc+zC4swF5HChx5F8HZrFyxSu0
	 LyBsFVl/Q5ynwhbB1HC/y1ESPV+hyNuR81btF7HZAc4rcKdUldK5oAHQlrFzZKChSP
	 XopJDbuAolr3rRTVibSiCvzW0NCoZxDhlkBR/z1Eswr3XNtLKc90y6ehnXJfS8czC2
	 q9IQ6JP/iSB26c8OeJbeJDjQ5IvZg9mmmxtINxzziGI4pzWmAAQ4MEoNPaJj4LxkV1
	 LBRGDwc2gztGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79DCC36000
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247619367.15574.15041430611458448893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721549bd9f64f6d314fea95133dbc060541dd69d8e89e4400112191098ccc74a
Date: Thu, 20 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742476193
