Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136FF41745
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706109497; cv=none; b=Op52GZn9irNnDOkysUUbR8Ksfox2kNylkgsqn3ppvBXbFC7AMCqBn014t6ulgi/WWnpxTGzoAIh2KwtGRXCMiDGu2Kg8jKNG9T0ff53VlIL4r10ZwuGdspSAzw/MNVMWDcQan+yUGkuiln+xVbekq4KEBYMTCEcgAP7Bm2m5HGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706109497; c=relaxed/simple;
	bh=mMxIVmx++1QN+cDLUz+KeZ2QCVKAPoovPNJGjMPQeW4=;
	h=To:Subject:From:Message-Id:Date; b=ktzkBpeQhi0sms6PwVebYaG1Pb2l0U2K8gq63nYJ/l1gaFyJF3jOWShMz9DbWch51z++Dwhgta4JHNc8g6/tNA6Pv5ImUBuoqN9cas4jlrmlA4XcgTPRRPDfHQzLIyvM7fEP78QcuARCnaenVIomanzJAOhZhWRQP2b4D9ZFNxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sl+fiyke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sl+fiyke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78401C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706109496;
	bh=mMxIVmx++1QN+cDLUz+KeZ2QCVKAPoovPNJGjMPQeW4=;
	h=To:Subject:From:Date:From;
	b=Sl+fiykeGyjLV5BnjMmpwjCfY6U4wCaC0AHzmMyZsnrd4ZK8bBckaCmMAazsMtg5G
	 IYAFHEvreGkLgjEh47QrAGxpH+GreGC+uwnW4I0WAoxRFqXWXDRxLJ7xJOJBrL35zN
	 65GD7uHmg2TggLkHUQ6UlfmpnEw5lHusX58DpRuZUXRQrMFzSm/Nfd9taL3IQzbvl9
	 JrT7cmiwEbCpuc85mMwrxENo7SeIu/sFwzE8n1BhYv61UlSLdNX5S+uPdJolnArmeE
	 /uG/SI+f2FIFEQwC9t0QhKKi61CTAqvHv3gJ49IEnKUd4YCgwp31MiYVfABvmdS+D4
	 2Gyea2p+BMqwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBFDC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170610949636.25762.6063070693101812296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a347fd1582b9ba59577793eddbccea53ff8dc331303c8bba128668cce95ba4
Date: Wed, 24 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706109496
