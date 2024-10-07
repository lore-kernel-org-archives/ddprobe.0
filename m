Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AB8165F08
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728291954; cv=none; b=hMEAXVUw/UbSpudHkHe3UyPvow6YEntCny02beDnm2IZEeDao7qZZ03+BTYVDwQAE7ILUVlw8hPSSuQfX7H791WsXCNq8S6iFsL2PKhW5pHVH7uYWGsK3RQSgynuwKjiL7CPcVWxRS7aP1la2sjZEoLbCAsFidU6+TrqayU15PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728291954; c=relaxed/simple;
	bh=+iaZZ1j7j0cEd30uDGVbeHSYT62KLajzoyjr+4Zr034=;
	h=To:Subject:From:Message-Id:Date; b=li2LvCzs+kexWv46T3GtCYacoFodhuy1U0xUC0OfFbvawJtWHLhQ3HNVl2pHadmf0XzD4L47CkfEb2NBmY7aT4Qf6JnU6Xh7ClnC2Bu167kbGEeRWnPEc+t0K3LBv7wdyIsaPCaQAXzzHHMgy1rXaf1SqfwJDlE7INQ8LazhysM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz75HDYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz75HDYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4083C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728291953;
	bh=+iaZZ1j7j0cEd30uDGVbeHSYT62KLajzoyjr+4Zr034=;
	h=To:Subject:From:Date:From;
	b=pz75HDYdSByF6r+mPl3rhVp0ZA1+oc4FMhMb9iNs8FDrF7Nc6qpqKn2CXTx5f1O03
	 icyOfx/YxkI3EqvFSQedMTraqLE7KOm5UGhYrElYjfdsokYC0e2kISSB/TZ3r8WHR1
	 3BDj2zAOU+GCOaV8YhTRk25wUvcmrrAKYigzbvmGG97OKN6h5HM6TsZFRCV1j3aWuS
	 G6nprw75LdPXvWPiD5wqqrv93d61b+gyJIcYKgU6r7F6Aiv9vnkWeZmN91MwMGAO60
	 GI/rdUop3NGc5UEkKy8sIknXygOgcL3WrD/bn52zvqS6PUBnqDjwpxKJcedby01KxW
	 PeeNUVV3wA0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F6CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829195359.15870.10062850462420087986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c453e127d4bb6a7077fe39cf2d6e9cf5ac1f4aa7a45580837038f23abf2a676
Date: Mon, 07 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728291953
