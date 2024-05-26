Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584877F9
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716695663; cv=none; b=AywhrLZi31pc7D8sYRYRoSd3guUuNHulF54FicLTV1Hy1HCw7x+L9iFz3n84++xzTQPJoue62h+Xmlz+opS+o0Dy+CcVzFWXUtDDmCFL1uZlveAxIjSANkMIwCbduKiOCr2u9hbtGEMnUOINQfiKKXVhXJc5nG2M2ZxCSRaMHKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716695663; c=relaxed/simple;
	bh=bs7cfyc2JlyW86LtH3G2s/Q4y8RiLB/rvhF8UUkSt3Y=;
	h=To:Subject:From:Message-Id:Date; b=VhuMZpFcFe3MDdSlBM2LkL8Gt6QtGffmYyzin/5RndayetzcKAs35agf4XASqUAmv7vpt/wSFr0eA/+uyQXlzDiaRrqbhzPoE5IiAcBuYVcc1AE4uxyDE9CVpRgg0AyasFYnb/D8GAyBLD2ewyfkA6KhMp3Ksy5SjLF0NjOKzzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BICo+MRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BICo+MRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2819C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716695662;
	bh=bs7cfyc2JlyW86LtH3G2s/Q4y8RiLB/rvhF8UUkSt3Y=;
	h=To:Subject:From:Date:From;
	b=BICo+MRpbbvtPCR4SxY+ykRT3qFuNXNyZHleybp78/us0szB3Y4SM6yjKtWaFsCHf
	 2QvMchG3aPJcRkkjtIBip4F02vw9UUC4fcE70H4mbJxKOAFTcvgWRaZGw0+2fmHL2R
	 ngSSiuJ978ZJMR0ykT5xo7k3GSHIfs+O0lulkFPii9hte6dwNFRfNp3tZ6v9qYX3Bu
	 Ar/7lSfhyDq/DE8EBoDQ1bT9P4VICuZds8A4LCjHgq6IECbawFuwdubsbkCqWuK0Nu
	 kY7vl9/oYe+pI3CDsrRzo5c2XnoRP5WD0GFT8bTwXaNOzZaiAcYRyEYVVxWMFb2SfB
	 VgRzMksBYCHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51BDC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669566277.3263.12150265907812142826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd092efd6031fa4a5cadf1ab96a03350927980b1301a4395a0992c4fe6e91fe0
Date: Sun, 26 May 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716695662
