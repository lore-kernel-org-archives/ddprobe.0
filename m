Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C08917AE11
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777122454; cv=none; b=r8pERftvsw6BHnJpbDY3bHE3ygZnxXLe/ilQBCN8tkAbq848WORCHoLoSUWsbKgzk64tJc/QuCBy6QwlEvxCuULW+q+ffz5dl6i15Sb+/YrWyJe/JQNmshpf086QYK9YhuTZ3RI+mU6Y1gK+FZtEuroW66Ibn1NSZxxGHVSggBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777122454; c=relaxed/simple;
	bh=KxS2UBS9IECNrLnhIFfjwB7oiYLxICfAxDTQDK1HjaQ=;
	h=To:Subject:From:Message-Id:Date; b=B1dutkEeygbhUC2CauLKbJCNO9Xc7y6jZ1YJFCnBzXDfhZmTg4W/KKuPU4BzvOJgqswMGBBgj8VOmMTFbvodQ3Bld/NOZCd5ybMr+fibTY7dSiJuCL3E2os7+7sFxYljcXcKpNT+I7U0WsufxXdTzxbmDKm14t/NBIoXfndSF6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0RaIdQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0RaIdQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC646C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777122453;
	bh=KxS2UBS9IECNrLnhIFfjwB7oiYLxICfAxDTQDK1HjaQ=;
	h=To:Subject:From:Date:From;
	b=b0RaIdQqJmaE9dyjDDtNRX1Ym0sBCBUwMwKj2Wh8mpBil0BMtdA5IgeUZgWhmDjf2
	 8DXR9yYUAq5ni6IP8id2KeWHMvFCQ7ulg33wjkqr02zItZTcxugfHIc1/TYYG8VSJP
	 No+vyLOv20sI39rHZdo7wqLdUQx+Y69Wi9cAm+rnlakxFQEtJ7WOScuqSa/7ALwfKL
	 LVfd/Z1A0lTsUwD0OFMYbg1IYMs6CISBpDy+gNqXNL1NWQTworYHNS3lxo+n2jokdw
	 94XMl+EYPlx1oeRzKThsqAcqqu3I/ITJAHLWd5h+pLkI1JrEAWO9J69I02PnvV0MsU
	 F80vhoKKl4snA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF46FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712245368.24729.10883241145505715007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94978637e4c1ce807e888ac969de1b13fe7a7d177e946e53d22c0ce87fd4cb2a
Date: Sat, 25 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777122453
