Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334F55223
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757208594; cv=none; b=Usv0By6uLcxj/tn28ar8WdCpXhG4DgApMUMwtpEdIx9cvPGKwibNN+L2wkqsIVmMWeFXgIJW75WRwZgo4vdmK5J3fyPmquBloGWB5wHmqS882dDSUv/0GVhZbOH68sdOIYoIwvzSpzHJBNaHS2wlQuPxYm4fgLb7jkmJhgvS0tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757208594; c=relaxed/simple;
	bh=0w3dej4nT+za7CADCW/qmB2wpkSXEiMsLVi+L6uSGTw=;
	h=To:Subject:From:Message-Id:Date; b=n4VDXhQPbetZHGu+oc1vIU1tETqXQmxoQlgUcsOzg70/7VIHsMZvT+5IM99G+8m35tRVHX1KOBBJa6LGz5QQdrd1pa0Fq6VUC9YBd0vO8L0199BJSgb86Eqe9g70S9uMv7X/tmUL6bFe29pl68AOEgZN25yQ2VTuxd4XtNyOpSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZThLOouZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZThLOouZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D0EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757208593;
	bh=0w3dej4nT+za7CADCW/qmB2wpkSXEiMsLVi+L6uSGTw=;
	h=To:Subject:From:Date:From;
	b=ZThLOouZGs9L1ccXXmjRPrqL3JAICQygf17vxqANYGUuaCR0vEuHEmW1b/TGn99Gu
	 HoW9ZYdxqrHKXrElkYKcE9zjKNLyORYUPK6zuC7btR1i52owH2xgRnH69TngsU3uy/
	 ALx9/nBL7VwjIkwJ9kfP6HuTmMFwFcqERWHH4DH3hstlJwHFP+UrvZhsm5g+ASLWzA
	 NNyUaVqBKTKQUKMVQULKByes9R0wNaDV7BpFKWxqJykEUaRcNmcL/Xz4gDgMPYnW0z
	 Agvf2oYV99MqUw+Hm3wJKH323BBVSCwp0IhyDR3HCp2oDg5Sja+iccP2tBG2bdrmvH
	 1Nq21EWHC2UYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAABCA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720859357.20909.16747944005667884279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90e62f6afedc46e34dceec49076a7d34f89d33ad09ceb1e6571f5fd312ba382
Date: Sun, 07 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757208593
