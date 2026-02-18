Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D08C2FF172
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771415694; cv=none; b=SgXLvlx3QES7uOeIlHAK98e0u4v9KDYSXRA8YgPiKt1V5uyfTnVMGdiNB1YlmHeZ5p4yFFUKZmawZMLMqWwvXknjS/YsJYGx+StisUHyO4a2qssSkvc3DhHILRM9OMeze6lJNt4pD26Uf1BcYbFCpXGv1Ej/78RAzIfNcF6SBJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771415694; c=relaxed/simple;
	bh=+ghJWojsamDvrjNZg8rS0RoDyAWYiszeKjVMXWRBfLU=;
	h=To:Subject:From:Message-Id:Date; b=iJsivAXoi/gni8ic2M/YJGYpkxB9TQZVRGoYC5If9hvDI04bwAUaBHXmUR9GBpWMYs4mJtkf9qX9uO1/fuxgONE3+805UhbWhvDR/7UbrsGVPptljApFHWXHnc+JxcRdICwDlCJAyMAFPpjSSmpG/lIvZeKEpdHWas5eJ4vO0bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQhsMlAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQhsMlAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A62C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771415693;
	bh=+ghJWojsamDvrjNZg8rS0RoDyAWYiszeKjVMXWRBfLU=;
	h=To:Subject:From:Date:From;
	b=QQhsMlAqjL2pBEgaY/Uv5fAl3/ijoGFEePX1A5fZx2JO3D6tb8PLzUoSxO2ZFCLIo
	 uDsGp9z0dgG9mTXHXqbFlPwoiia0YBBHm7EeQzeWOppoz4Gw8+i0ccWGCReBiIgY1/
	 eGN/sOu5XOq/xJzjfuNiRpjtBI1XvYAsSb5QwwIGM2OXFsiTBgp85VCtQTDODOHqPE
	 /yN77YqUKJhaGTdHlVtOY1Skpl48VVcSuUL65NrH2YmHO0XCWqiF9r18bseOPRCv5V
	 ymeFQ8/FptQK4jZlv/rCunStL8IweXcOc0ebYVo2pDXX8oCepegesPlAqI/C14V2Rv
	 l116vti9CTRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B4E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141569359.21277.11685976679862803350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279e59b4a840c5a6aff44a3cce2d8160db0bd0042367a1d92deefac31ec34f6b
Date: Wed, 18 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771415693
