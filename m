Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB801799F
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791424234; cv=none; b=Q9B/6CzR+StE68+r9ZeWIfawAIi+ZsDhmuhMWHVc9j6FCJ5LJnv1rNo27kSIW2YkpHxIbznTNU39ikrt8LZJOH7q0asRnlFiChkpiRw8m8JPKAaJ874XSB+cwoMa1WXKP/itV8Vmt5/xH4Hp/uBvpo+QTow3FLYmWWSK4ctGFZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791424234; c=relaxed/simple;
	bh=GHm7qD7d2C4LfMkTHCDCVrU5QdLlFIvBhhaFSqmDLdM=;
	h=To:Subject:From:Message-Id:Date; b=X3DuN/tDej0bajS21pN3QUPKM6fNyEAU90bdrd3yFPbBIR6rmHQIdbAW/CyPZ74vqptRrPcyZP46sQ4HOy2VryBhVLc85MWGmncY7y2efgUR2qH1rtXY9BfbOT4A0rTptM75UDdyTY026MyptCBqGwmv93dA+U3eqy70moKdFic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGYwqI/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGYwqI/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4301C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791424233;
	bh=GHm7qD7d2C4LfMkTHCDCVrU5QdLlFIvBhhaFSqmDLdM=;
	h=To:Subject:From:Date:From;
	b=QGYwqI/g9OU3xpciWWaMYZaWHSTf7LC0qe5EXv7Y9OiBMmfpv7UYM6lFLJWi5OVaU
	 eJO77JOf3IbE6YZU89UBCe5F0ciyqb8gjWi5IAbharN1h41laGUaogt/lIxT7ANqWf
	 GvbqM23GXBOSo5iD+gvjdVL4ZJKRWcWEOhqZ0C2xSq/Th2h2zsPY9zkynreM1QsHS3
	 RfUIA54e/nPctQGTBnNMnYw7G0ZFH7iNjtZHDZwpRW/QuKq8VPsWxcjZ1c+peWSzZx
	 /EBHYYCIhbeCHu7BxYVo+n1/JLmm/Es1HTcJ38uR1lAG77VQaed5+UvcG1C3TWwRkN
	 uOGtdXeT2wEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15ACA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142423368.21929.16744123135185170184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112f6e476471006bfe75ba6441a179809279dfffe3649aa85733d3aeb0f862ad
Date: Thu, 08 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791424233
