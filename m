Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404EE472523
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791196834; cv=none; b=BZxF/Y1NOPFVeEcIkbEWxyObrPbx/ljQpK+RacMRX8AAimwIldMBd1SiefN32bxHH9CVl78ILpY7cejPn9OnZloZvHHDU5PYcOpsD/FRq6iKMuPAemSGS3Ylp20bx6leqLNMxb1ZK6I8voqDyZAMlnujANZy/OuyK9i7G4qCREo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791196834; c=relaxed/simple;
	bh=JAJx4WuPZOVw1zQydnwj20fFsplkEeOgp6s9jj4C43Y=;
	h=To:Subject:From:Message-Id:Date; b=jBoYY9qdsdBR4ZuhY6A3pk/rNz3XTAaWhRppLm6auu6Xp2lwyuzhNAojwohzQ3kmW9p4+7T0eq9karnqlcqryl3uWYAes+3WTs7cm5yY2gZiKteuXIXJJc6+TB2zNc1uembgoOgRy/4g1H5k3WZctXYBYZO/i6PmalNmRlj67+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNDoxZbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNDoxZbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDCCC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791196833;
	bh=JAJx4WuPZOVw1zQydnwj20fFsplkEeOgp6s9jj4C43Y=;
	h=To:Subject:From:Date:From;
	b=iNDoxZbVt0cO3J3M+7y7IZlO/den6IW0sw592SZ5aSbY8oJlFfJr6U/WTsAfTS35T
	 mmI/VfiKDlyZRPd2P9X5Z39UZXN1UyA+Ntb/X86AxTx2dVLCQ6bMT8lnRQUiL/8chT
	 QvV7q7yALjqs0ulCET3WQFOZNZeng8bXkl1eTVmYFBcKrFf2sRArhW0N8GfqwqH2Gd
	 yND43ftWT/GQX/+7KT5mSKUNTkJ7YklRJLkSt64mD0UiIs+9xt3+csw5HJCOrM0Nt1
	 PajZrslVzNmNydm6pdKF0vh4KMltIBmjcCCDtwJpjVH9pSkF99UvQmzgtA7JQPVKHv
	 h1P1tDNMQwtfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB363CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119683369.31704.6385817129394937706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e771375bfc4f30a8ca80e29e4b9fcd31181ea8b341b073f7cf18b6972ab0268
Date: Mon, 05 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791196833
