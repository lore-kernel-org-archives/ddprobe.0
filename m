Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3781F3093DB
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784177314; cv=none; b=lWAoRQPSouUlz/u6r3RNUjAvJlHacMbZsjdU58xdtSLUDtJjcsZB4x5pF5Dgm6fUr3rMqGQ+Yl+a+SoFA1BNKPleJq6cny8T7TqpTrImUyjDlBb8GQhXAob8sM2vGwAD/kHcCeqevq+C+mNblfORkDGb9jK8xjYZ72oRIMfuDG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784177314; c=relaxed/simple;
	bh=AbcVJlaEraiMSDW0cOE8gXxVMhWBc86+PPqJ27gR3uQ=;
	h=To:Subject:From:Message-Id:Date; b=SFn5fLx6Ur764TFZkvbTHwdBfD7prMsLeffDjTlJxKRfen0mvQ4ELHVSPZaAmN2tJAL4GYEeaZSHkm5wXBdQRdWzHPcmfnjyYV2kZB4fXWQFkopv83lODo/xpzPYm3lsMTa7B5Iynuzd356TU0B5WD/xez6vxnFy0c0dFX7r204=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfKTu6Vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfKTu6Vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD613C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784177313;
	bh=AbcVJlaEraiMSDW0cOE8gXxVMhWBc86+PPqJ27gR3uQ=;
	h=To:Subject:From:Date:From;
	b=UfKTu6VqogjThsj13HEKcQGNRMqvOFAa86mtr5nQ75PZV2vcxWBis+XuFSNVvIi++
	 7LehxrwuGcfw3v7/ijLFj73lch+zUdMrGhAET6rrDxAJ71GmoLT7mXLpgtMUrP/WYa
	 FmODgkIcTXNk8UDfs4XyCGvMpUk64ORTeuqGfvdxBaQJ+07SxRY9GZThsM9CXJ4UZU
	 OV7r4Ul0rvmSGy5cEGuK8JsZrzINB1HYsmT5IpXUOPu8wmVgr/IzlSAWQN8GHx9Y4N
	 u9p9IGegp8XaU9A82ewDKEzYrsPOhpQxT7fVtowK6lD5PrsbZoKLAESQ9nGN0dU5f1
	 qQjIr6mZjICag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9388C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417731368.3729.530225134112752247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961c735cb2dcf719f1e82141bd2de48b8712c5d0a3d5a3581fdbfbf09bb637db
Date: Thu, 16 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784177313
