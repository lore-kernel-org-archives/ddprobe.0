Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A31C5D5E
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791693034; cv=none; b=CP15ZC2/1HF5rTFrLaMXqr7gML/+xf8xhwiuEnfLz27MWXGs7zamUE9bM0BzcIqSKL7rpnr4y3ORn8VEKdBgvBEM7HTn9CRoLcWDZ4puYMlndsFcPMFBFyzopYmJ7HpngltDTljYuKwS1vClCqMZbmtoyDJBYsW6Z44CqTZKWSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791693034; c=relaxed/simple;
	bh=m5fJUUZhB8m+UmlWr42tGkf+RqVwbqzhyQojUDmQlNo=;
	h=To:Subject:From:Message-Id:Date; b=JV0g2EZytlZUZrnG6eyflkAee7gQauezbmAcumrRSngdmLnnfuVTmBxMFAydEQBrEajDOIbBabUV404oIH9J1QH1SEf2/cOBr1pV1Zr5+kTjoOIrG/ZreCuFS6li4buPpWFZrnY3E3iOOCA7itRSKsgjsaiZrCmR5WiCwwbSNTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6oRVCHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6oRVCHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2280C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791693033;
	bh=m5fJUUZhB8m+UmlWr42tGkf+RqVwbqzhyQojUDmQlNo=;
	h=To:Subject:From:Date:From;
	b=p6oRVCHHCr53dw1l9XG/lF1uw6aB5mD+yYK6c29t8fKz5Hstu+Z0mp64LrGU0vd1Q
	 1o8qma5uPSjeuppu+xzdZ9ZhTdvpDKxhSldEDArk2GW/vq6qFmIH380iKkSLL3DObU
	 04/E+KyhR012KNDfr9y4pbIrkywaKlpaiDtxPHS3LxdDQD1XWXgCYgW35a7l0G9LH7
	 SXBe/aayl3qalXqv3nkBuZUW5BLHNcjjGRcfcj7QZpItOcGRMkb6TaP2dhJVo7kQTq
	 +cMP7w5a7MKScUt9oqGUvU8MWK2HTKEApnGDUamKNFjJUhN+Tfs+k9NfGRCLssGh63
	 gfX+MRwuCB7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88ECA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169303368.14174.11924814530708648060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9260ff551a689eccfb57496ff2bbbf2937bd2467244b4fc7e35631b2095040
Date: Sun, 11 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791693033
