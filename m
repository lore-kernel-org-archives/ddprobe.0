Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A7EEEA8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786795834; cv=none; b=VCrlybFmfCGEP/W8kaM4mGP7CiCZI6DoIdkeTdAJhFWl1TfcEkAY9kXPq5Mn/86DPb69nfb0fZxNa41b48Y2bL743MXkP4S0ebv65NRAVaRWC9TNtu0Co6iob6qpbSenn+A3E+4HmaG+7f1Xip4PJQtevMcI2agfzxf990oxMx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786795834; c=relaxed/simple;
	bh=Ct62Le6krNbKMQsPDWv/aaOv93LLu2dsA8ORWKcFJUo=;
	h=To:Subject:From:Message-Id:Date; b=N07KpQGRyYnt/qFFXcX3y95R/TRafkSg4vet/svonXZIkZ3F2M68VTJZUAC2MrHPfQbEr6SbR6iWXeCQiUE2aUYJVWtH06uJgoFnmuaMDL4WNXkqBLiKqvJYHR5c/CutHPjfzVmfybmmSogT7Wbso5y7qPP/54kjGShDyJEUXKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDRQVbB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDRQVbB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41BEC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786795833;
	bh=Ct62Le6krNbKMQsPDWv/aaOv93LLu2dsA8ORWKcFJUo=;
	h=To:Subject:From:Date:From;
	b=hDRQVbB0nd5GIqNwD3qN9PPT6NZjc6c8xrt9t5gQpTEz5mPXfL8IPOpTaT6QtdKvW
	 kAVya9LV81/BO0MLZVTRGO6p9FwYDuHGnXfbLCornmgpY3whYlr0Kqudv4c7EruvQd
	 hfmiXBhvOBXv9nUJzbvzIcskRFQVxpi9ejcNvOLc0S/RupTTTNkUjj1IlsPaZOa/cq
	 L3V39NwD2x9GYuy4wV0hsASNVSOER7J3b0PVUofqR7PIwODxBsnZoX71KZU7AfFtxf
	 iXAZf+HMxWYVtLMVCIYIr+ye3/n8iEff5XhoQ28G3tZ3G8NSu3sXd0oHZoNRZgIbTK
	 Tlv3/OjWHLcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B752AC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679583374.20818.1510594786453542917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42268ff3c6da0301503f587ba6ab8f31729c96d5ce9f1deeb5d1bddf42f58f3
Date: Sat, 15 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786795833
