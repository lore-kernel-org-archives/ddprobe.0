Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E557348C74
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779997354; cv=none; b=fK0i/iHYSmlXKvv4peH69TMX+oq8p0OUJUW30HpJnvfiJYn3QVe+ImJ5axGcgRtECR4My65SGZ/ugrfxeW4zz71wxXuLdRxBBeaMG/GI0sR15ycJIoQI4S+u8OsMpEnPrdYLf/Xm6r84yhVFgYeRQlWpk242EG7tFmAv9vhFFzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779997354; c=relaxed/simple;
	bh=2EaGJut9Ahsf4uejeWHqsiA/PviXa0wu7BZFO1vdouc=;
	h=To:Subject:From:Message-Id:Date; b=TbRmAqsbpKO3RY7oY9/FenY20oeM/RYh+Cg+KET642MuBwBe3PK3vB12+W6wqgZniRqxGr6wL9YUWOZaAmD40HFYYHtLqTmcA8U7EWtXLFGbBO2SPdDWFdRF6KSftNm5UOuXDeyofhkbxABqPe/r5bKldrMZGTF6hw3dfDf3LX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCIBbWhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCIBbWhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3069C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779997353;
	bh=2EaGJut9Ahsf4uejeWHqsiA/PviXa0wu7BZFO1vdouc=;
	h=To:Subject:From:Date:From;
	b=PCIBbWhJcup6ARefVoM1i5JphVTIos/K6fmwvWt0SPgfPWaeaTf5m5q21p1B1dn2j
	 ZyYbz5NMzwlDwMsn+u8OqLsXlLTf4eqQbOf3hNaj/FVB3DQiTJQ2+aPmKM3u3xsEEt
	 GOI98t3OVvjn0/fH+m0L9EqQp9zZbSGElfBUIT8RNtijKyPDooPvW6l7x5rh9mDfrt
	 D0eBUDeybJA+plqjX1uwYmRXdWv3L/Lv37zieuTByGLbI9kQtR1geHWVCCPbr4M1E4
	 wUT6WuX+RbdGikNFl3rOzxAUp1ycp+NIqTw3P7fpq0JNUT8GPnxTsBqz/QYPChnzJJ
	 N9tyVkquCXeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F20CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999735368.17617.8483751048279073496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84310caa53c1dd8eafc447a20dea792bb3d58a1082eda58bee1118d18de67ba6
Date: Thu, 28 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779997353
