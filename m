Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522CA1AED30
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718904623; cv=none; b=H7Isg4LjxkVruPYxlddyvqUPwGRi8IIC9DQXRAzHONK3ombZlq1zLXgdYXPcD8Fh+CT8YjU3ZvJ3IdXHCqL57awqAhar4Tc32DT8/I8wyDDLYbH7BqL0KdwdVJcSudK3G7vkKhnvyDmM1c3lrnaCB2JVnNjazNmqlm+J97mJ8vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718904623; c=relaxed/simple;
	bh=I9S24Fq6FbvFM2/604kwyNBGmxLmUMAyIrtE2VJB8R8=;
	h=To:Subject:From:Message-Id:Date; b=d2x+PFG9dTFxPjX2udFOCWzr3sllBMjzIO+077DniP/pEbuJpqx1vbmfs900ZHkiJGipoVOQtLJ+GqJ2RH+B7pBh6ZthSx4HkntarNEfFbHxatCzOmyAOq1mNnPmriKnNsvnKpyZtRaR11ldYKjOMqEtETiIvbk+M2R7tfglTAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wjh/PODI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wjh/PODI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9EAC32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718904622;
	bh=I9S24Fq6FbvFM2/604kwyNBGmxLmUMAyIrtE2VJB8R8=;
	h=To:Subject:From:Date:From;
	b=Wjh/PODIpTrUw3O/WgsToRPBYH/YmPJPab4Mi06JgyNaHfKNlYMDy82ayBEAtS0g2
	 QEnOQ2MT9rjIgmTbw03Xo7qv5+nK76nkjJTDkMtCtMzCpe8+2cJ5wUSF5b/mNNoPwr
	 0iUi/vxiYCfNYmn/Rsnzu1BgPkTq/f9lHFw9Jhg1l/UF+1MdUIb3+WrjNQBiMJEq9H
	 qnc1RGcpWZknrh65ug0Moh+BQL/X6iHaaKKzmlAOFDI6EDFnwXfx9lmOPmrfMuM3Y8
	 MdiIIkXBDPJtwYZkGVNxKvJZ3fM0dnyLCIfl5t4g2I6TZ+VQ40QT3aw6qlpi38Xi9h
	 Wl1j5aoDumAtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DDAC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 17:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890462280.31715.13550863882580151193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f22fd1c1bf56ef095d2d12004bba9d235765c64aaa2e0a513dbdcb999fb94cb
Date: Thu, 20 Jun 2024 17:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718904622
