Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FD644AB80
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787232034; cv=none; b=DE0oDj+1bbJef8dAV6pKoPWUHEtm6ZIQYJjizNJAAcq+id6XtjKX+61Tk2sFrWN76lBANA5xfwwfKEW3Nm9+M21mfxZlTOd2BQQIAceljUvRbS7TPojn1bimZtUUIYMlvFws+oKXn9igo7qfCl6ntly+PIsHdELQh1NQeb3JBj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787232034; c=relaxed/simple;
	bh=1pIiWDOWo3tqJb49oKJioqtGOnR0kNjbV+7OOsV4h2s=;
	h=To:Subject:From:Message-Id:Date; b=J662vYr85fZ5oXs9KfssEQtlZyF+7bxLjLojyQW5k3IBhfcSXD/mLNYYheDfn8N6j+RRloGP5o95BDc5RPxskntizYl1nKdsfyETNXI75n0ePLjtbsAlYhu/hGPSEa21xKrqRrJUhao3+4P8EAHlHP7OFWP3LNkPUEd6wAjmRRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j48J4Mqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j48J4Mqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4E5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787232033;
	bh=1pIiWDOWo3tqJb49oKJioqtGOnR0kNjbV+7OOsV4h2s=;
	h=To:Subject:From:Date:From;
	b=j48J4MqrPt/J7qfQbVBrPaFxwt6Kobf7YZluoiRGI0W5QaEKhLLymhqdtkz3443BD
	 kW8ftHFYILtnro95iPvV+jgFBUnifSTt/QUW7+ybPfKSiQm5BUBihRpTJZ9vGuUiCa
	 8CiegsX2QhHt8T0x5DNhdNzUnf0sOLWtFxTBInqs1sust5FY+nSSR2/MZGGWpEgD9K
	 fwrP7bZSF1uRN9ehIissi1NgsE5SGBo+vDE6gENVE73FvDNTRXBOZLNNFofoviKVlU
	 fPElia/Nwi82Axve29FdbK97qchpbHaKr2QMmPnI5x16QzRli8CwnKqi9aBlRBKU7a
	 e/mqfxM3PJEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA861C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723203368.27257.15533818159300108744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e978948210e286658b1f9a2e063fdd651c1daf18cfa13cc9be808fc1f2e565a
Date: Thu, 20 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787232033
