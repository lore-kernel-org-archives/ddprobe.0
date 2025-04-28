Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362BA1FC8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745798994; cv=none; b=UAoCbtFff4/B29mM0jktT0nt8L3aPFbaPNnKmelZX+F/vJyJ6x///m/skqKIRj6rG579BRHKI7rhNNhB8k2Mj2gKLtaCNEAzJ8AE1z6Ymey8ivVmd+li26W37gFMsl4UehZ8TQCgkoPXDxS8bmvaoLAgJpMD1QK6j2XSZRwK4xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745798994; c=relaxed/simple;
	bh=hL135xpMl8qY9wICDKaLxxMc9ZPfbyAqBnGLijmB5FU=;
	h=To:Subject:From:Message-Id:Date; b=t2RFPgsbZlvcC3aKvlGlMQH7U9bKaoqRypITvlynoyxhiJtvNTtYifrWXRcXv1B1b3DP5LBlsj0un3os43uJS2Rs8Qtxk/H0hwTUrLQMdcRp5YfDAlwfotCF3Efy65g01uA5tdszqLamhmRLEIwhpF6wGrd76N2nBLvtE2a7NT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POQJHl1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POQJHl1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8E1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745798993;
	bh=hL135xpMl8qY9wICDKaLxxMc9ZPfbyAqBnGLijmB5FU=;
	h=To:Subject:From:Date:From;
	b=POQJHl1uI+GQ3RX0lrFog9EaCvCCDazuBvnHac2rL2dRGl6bqdhWePwErnLTdNx+P
	 a0c6mvyAZ2tHbfSucz2+65Q5BzmGNvG0VJZpZutRG0LpBVXxW7fz/Aig20HE0P3mFK
	 w1qCTtTA2Kq3zF2/JMeQJH+61YV11iBdDsqizyaR1/LTjDaPK02pAUWQJYHhbFoizd
	 WEF/afJbFEeVakyQAR8+jBTZTh8Auin8LoiJqGcJO/yyka6koV7NDC/cXguN9I57/G
	 R/tJZc/+W1d072Qex2zrqcYzjsTGhkECnunBEK1Hcm5H7JMDUW60W3mxyG5jB19U6O
	 o+h9H4qST33Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01B7C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579899357.20475.11495150908339178802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895924c6d951cf05e145618e35737441bb1325e009a7e81502777563a78654d5
Date: Mon, 28 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745798993
