Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A16D272E7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766950434; cv=none; b=Hf+ux9BcXGwrGImfdFUir2Oi6qy66ymIDZA4jrtfR9tAqirpXRzoeD1L+szrBdGrykLkF0nEtKobYtlhAU80MWj1tt/pqu1xDh57ZvpeyUcOmhS+MS7KoUo9Uwdh4fESoSwUn3KAD0887RE4gIXRDKwEi3FOoH035iS3ZoOpKTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766950434; c=relaxed/simple;
	bh=gRyS6x64c6fV21sJedBesIMFp9+CAY5J7BpnbRHdqoQ=;
	h=To:Subject:From:Message-Id:Date; b=MhzxllVIEy5a1ZlObXmZJvpyTLmBHmbGGOOKy3Mij/o1wFob8WzE8ukVw3avtB7EFzrXzzOM62hDlaYZIU6d2Q5Fg9hzPmwB32jUFupai4qtPk2NLKDWbsZMBTWsLFGcDIo5qpbw3NeIIvldamN493s8QulleLP2kVTX158fgTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVCHMtWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVCHMtWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E32C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766950433;
	bh=gRyS6x64c6fV21sJedBesIMFp9+CAY5J7BpnbRHdqoQ=;
	h=To:Subject:From:Date:From;
	b=TVCHMtWl7LH2l0BvBe3o3uHD7nisEtoQz35sLDn0Qmfa44MLs49TW9DUSWxOnKNTS
	 uS3Vic0kgicV+vAtsqa8SqobZSpq0UVD1U9qrNgOmbyCRAljxJ5lBfqRQoc7MDTGW8
	 hf6a8MZPe2wZLf1q/tutOfWUvPIgGb+J3gMt7qE32rtySEqHITf6lNWmQCskWpUJnW
	 LH3yIseES8a6BC5ZEc4z6TeCZ7IVWqSOVwUsJS6UwBCHvQV8PSjpMXyvgQmYmtLZc2
	 Q7BdGz6hzd5d7EPA/PYCh4WXdwc7ZKn9TR/6sDNPwtpCl0FAkRNjUF09Q5z727kJRD
	 rmTBwseu8bt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8341D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695043366.7048.4391442028148465341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be4d9b36a4420bc80f4084425eab0cb4bd2cb8ed1a44d574bb891af6a224f6a
Date: Sun, 28 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766950433
