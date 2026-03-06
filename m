Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA1323A98D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772800493; cv=none; b=OBqQLduz1sG2qFZ8s7xJzWzAfylW6ypXeDsTib9bd1yPRW7Qo2Fn060vT5m6klfIWJ/InAo4feMSZU5ksFcTLhw9QdW5tWU13GddhRqgBszELAdkH6Rzk+Fpp7+mgDVq0vkCLvnBFTUyFAvC4K1LrO0cn+sXE5u6pjxTwdaClrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772800493; c=relaxed/simple;
	bh=OEz1NalIF9GYN578mSeiWU+911idZNRGnY/0VuWjx4Y=;
	h=To:Subject:From:Message-Id:Date; b=lnpxqOehilsaFE4J4KVCUiez6cKD0wYUfSykqGxN8sikbsHBHNA53RH2u4G4QDFdQoPjvdnwqINJIk+dKgl4vDCW+rMSFaUKMNns28qv02zqZ0LcB1a58y5jomrBN51LM5IhWpdtrhdXa9ksHELCy/i6NmcIAcdLiXT37scXSzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUvldfMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUvldfMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD4EC2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772800493;
	bh=OEz1NalIF9GYN578mSeiWU+911idZNRGnY/0VuWjx4Y=;
	h=To:Subject:From:Date:From;
	b=JUvldfMQqEDvOU4ZQSp9B5Hsmy2DSjpigmBdSH6+ZJEXiEMLX5310ae8PecA4C/gS
	 lBjbEcEbTz2aFjcjKFhqL4+cHMY9HMm11Cq/AKwGowZoEN88xMSCyJDvGtzj9AIHW4
	 zzkbpvmegofDvhZtuKhOc+oXfwTNIjWutVXWW5FPW9qn5E56GBl5Jb1LLbPrtatuIc
	 ZKpYDNC4Xdxe9HBjMacY7nWSvpRFSIi4LGdv09xSL8tUOyzv1Yzktoywg8smd9UMPT
	 oK9/kmmi32KUbXa9poq4NdJBBnBHIfRSS5YV4swUkwpIInBfYl0Ml1eMDOB2Ay5BRv
	 tvP6xujRxiQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ED6F0182F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280049360.9912.13863011100703727783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144ddf68a2fbb0b93ab76b51818cec30f1872d2363f837ab7ab1d81c3f7c752d
Date: Fri, 06 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772800493
