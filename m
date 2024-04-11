Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC6F18628
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 20:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712866163; cv=none; b=NRAt7vfRKq1oZ13k/WVzRPgszbmol79qxlcBZSRHKcy8Po5ieh67SO2ig5NDCA+J4MXBgGTNE3RLrZlxkH21NjNQUy6us821InlsN9xw0Oa+FL0/TLO1KVv/AKEg+f5MZaXfRP9luWzy09C0cTKat3cfuaQMBl4G1E1yIl+j3ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712866163; c=relaxed/simple;
	bh=HkkhK5a6tEoFDO0ZrHRA69U2Mg0Pnw7+3JyjVFhkZZg=;
	h=To:Subject:From:Message-Id:Date; b=TfDhwx/4EHPg6eu8NIV3it6ofVHFPo/NdxrKspHWmlvYvdxl11p0mZIEVDtyCND+nCBf5ZKqVe+0OgT37S6WF8+gVbtzqXw0v9IyXW+Y1ZV1A9FRRmcXMeduLNKEEL5gb/8jtQnx3v7qcAdy5sV47JShTWyOpmbaknEDFuRCDk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ful7DBuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ful7DBuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA114C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712866162;
	bh=HkkhK5a6tEoFDO0ZrHRA69U2Mg0Pnw7+3JyjVFhkZZg=;
	h=To:Subject:From:Date:From;
	b=ful7DBuMpMehXsmcKXySIYCDx5bfuBnYxsA0PTj3bkOSKgTizNvpOid+PhQw2fAeX
	 /H1k2vJysJzsNiF9tk+HBEi+V38K8FFaP14zKIxETop5DKJ0NPam/WRDZmCSIxNNpQ
	 rZgjh70Ew1NYHKxZEhpifnS1pwxPRQS16CZACjtwFzPeuMAeCty5MWkeM+qEng5QId
	 eHZL9D0vQh1x1DTjRASR/D4Pvkp4DsHWQ6iq7LBvMIoY7kVdhBBKhRsKvidnD5NpY4
	 jqtLkUPiJJjuVCp5wKB6CQnGrCr9c6cpgB8FcUJcU9L7U7caKTMJca+Ukfb6EcrbIi
	 bt63j8L3tFmPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB354C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 20:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286616275.4840.5072099707052004674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c467e52c3b2013f28c8b18107f226c933a42c6e170c13e21f8d14d262ee7c9
Date: Thu, 11 Apr 2024 20:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712866162
