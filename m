Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654F222565
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754606394; cv=none; b=eVIxqQV7hQDddqBmpyIp3/w6Wzn7plgYczxWDc1QiT8AYkJoDobTUAFwsJsQ7kx57v/TMJjDUhA8grQnNDI2AXAiIkX8of2Gxb58OOwcZM4zK0sTVsJ0rt58or9cBC3BgUmU2FxaO2Rt06werQfElR14XXVTj0dHxSYbjZtfekw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754606394; c=relaxed/simple;
	bh=+yz+0IXP66EU97lEKKPCFj7eNtxDHp4pBmSCkXA7s/k=;
	h=To:Subject:From:Message-Id:Date; b=lfsIBVM6JhZRF7JS+QchgU+eIau84c2Qib4W2ucivrZh0ARcmN3B8typBpTLO7WNKasHy/UuVHEJDPHJ4Sd0tQTh6OPFLuavH/qrIqRLvZrWPOkROsEsD1ELxVfN3yMUJx29/k0SoMZ27AksPJ62yn7ou/5sONtMWXOWLetGAgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fI1MtkI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fI1MtkI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6126C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754606393;
	bh=+yz+0IXP66EU97lEKKPCFj7eNtxDHp4pBmSCkXA7s/k=;
	h=To:Subject:From:Date:From;
	b=fI1MtkI1sEAcARTPUIQMllw8jkVkvIg388sVFQjrtMUYvdUKMZlnFlOUk8Vg+1AKR
	 X62YEqH9xzWRHplOXzLUMb48/j/KY1pL6b2099Y9O96s4mshySa453BE0Rth8Sye1L
	 4CP5PXMdOnGCFP+Jlf6ILQ5KdSTnSVmDg17HCcRa6RXz/j/BLILNnfH/TiG7clD6dm
	 sbNowJAfSdDMko45Rfssn/Zbqy664tRQQgDf0WuFN055FVn9aNjIY99+iphqdeWH4v
	 kJTK2XaBnHdfprgSK3ULUzYPTejzPPrMfGrkza3COQHebtEB8TtYW/PM4b/UyqDo+S
	 Dog9aHYsRXbNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95006C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460639357.11368.2168860650450652039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d436c93a57ec4be54ee9bddfa229a2964b01b3b25f1b0fc637fcf92bd2ac5678
Date: Thu, 07 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754606393
