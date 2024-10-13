Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3795813CA9C
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728860754; cv=none; b=hb4p8hZ1mVwVh6EFErU3f2w78EPFRHoSXTV7oN18GeeXV2KL+7FtnZm7it98lO0sjfGTgrpbFUkeJhlMbfNemmLK08BCfDwyXquZhtvrDZ1Xv9XxFuR2JUwnqxFAhAd8yZB4dLEusQ8SDkPNEGhjZ/G7ZCAUwAmubF16pVTpMdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728860754; c=relaxed/simple;
	bh=wh7VVddvz4A54xVN/jjwT0F7t5v/fTSe4p0bdG7oT3g=;
	h=To:Subject:From:Message-Id:Date; b=IOFKyFcdPhlh7CdGxEaHq3WmkEQbFRGy+SL7plcspBUtnEdq9T05dCVPyljDMuPjEYCjUclzdwWetRkFvXMCnnt8Qdr+f72RYeA5rkpGKCXZmGXANK+ZX+2tD028Dv8KreQoYNfPS2iy46ljknaoC1vUSni35QhhSXPCIiVL0JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7ijhbD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7ijhbD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FBFC4CEC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728860753;
	bh=wh7VVddvz4A54xVN/jjwT0F7t5v/fTSe4p0bdG7oT3g=;
	h=To:Subject:From:Date:From;
	b=j7ijhbD7PEFH+yPAqaOvhT8Oqs0edz08Sm0AJxsPh3Bnu5tkaUgSpBYjw+Bki6RiQ
	 SkEzyfd0Iy1sSu29ZkJeeQ6gwnHJIyqF5B7x9Yczws56lGKtH0tWR8XgUgswwx6YVh
	 E7O72DyvDEEsZMNFwWwzoY2O1RHgSLZ2yiVdN74PwE1tk+L4ON5ymXudZaqZpNfmte
	 V9vmS7kY4rFHqFkiyxUGZWKAzjtFfa901RCmMszrE9kzyrGg4JqFq0Ec7p8LU/yEcz
	 uksLqWPU8Ki8QKMTAg5EgvDCxvVYhexVrXSjYPJlPHQwq/bMFLvc5WAmdNAMOKiwd7
	 IyKVl6hXIXMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C872CF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886075361.8674.1819114658624379787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86803477f1f794060ad894e726e6616c7d48189c6570c2d01d3c9baf4ee72a9b
Date: Sun, 13 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728860753
