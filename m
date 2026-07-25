Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5D12DCF74
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784978434; cv=none; b=uDuw4CUp7bPACEYjNKHqD/W7x4Mv8QBrVk2vl7qyh9IIG/BfAgejfKJTQUZwJWdvU6G1oSQacszOjo/OtlE2wEtonAneTcLGGWlJZwA89UK9/HP8yfJ6kC9+lcw+qxmlDAnbzBRcklUQZ+RnLWnwS5HdfFuyRr6zW5fMUl1qrGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784978434; c=relaxed/simple;
	bh=Tvbp3CemyhOpB+VyANiHDUJ6CeLf/WfZ7PIiuWnLCEc=;
	h=To:Subject:From:Message-Id:Date; b=CoQUTIm8SqqNs91Y/s/XD5SWdMWZLod7BEm0DKEtNE6ISH3gSVNHtY+y8lmEOaWMXhN6F8WZ5B4EAxpRWxC66ytKL1PXb6C3KdwyCdA9uh5xCvVCcimQH39Kekc1KzLiIEkea4fAy7INTqvhBhHYZZlCtkWf0BtKTxdhaR8MXfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVaTLmyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVaTLmyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8D9C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784978433;
	bh=Tvbp3CemyhOpB+VyANiHDUJ6CeLf/WfZ7PIiuWnLCEc=;
	h=To:Subject:From:Date:From;
	b=qVaTLmyNb89569L5xwsKbhlvQHG/6P7WLSma31XORpF1doDsf9hPrxA83RH/3WJrB
	 hXmY21kzMuhRDxlEICv+8jIDiToJcfMIz6z2FF0Opqyzao1ByRUVMzp4Vbb0LFs/ro
	 ekKTA33hfCop0/nabu7HGWHCxh4ThqJr1uvLbamKhkX/vz6xfz1eQTnUXgJZqES/zE
	 EWrUh5H1mbt9JGhpL0DA6Fle1TbayXXyt+pSULdNUqeAXYQYZR05jSEMdv//pYBovF
	 5Nw6vad+fz9GUHN7MP5BcT4RQlC9ObpWzWKS+Aonc7mIAF6p3XboflYf2gdWHrY8QA
	 uoCBsliki4fIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8AAC53209
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497843369.20678.5641024026980278190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7734188c9ddc1300eda27c01f1f3874bfef372cab372fd6685ac359bd09c8ad6
Date: Sat, 25 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784978433
