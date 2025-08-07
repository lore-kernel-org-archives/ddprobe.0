Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376FC1D47B4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754559594; cv=none; b=MUIlRrDXJBVr6w459OYWBMujkvDBkfp89DZ1S1GE9pnMgdc0/lei34I1D8yU++MeuX+7/NTBxRi2l2rKxR8OGGnMfau7zXwqfspKuCw/vckeX7J3oLYn9aT3SrWMSrsU89b7WWHdBYGKU7wUSmN/aiQxEPcgLOSkHSuiqQgWWa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754559594; c=relaxed/simple;
	bh=SHgsvP+a9kDyU9pYwIdiVJq+D+2r+L6juRyJ75ROTaw=;
	h=To:Subject:From:Message-Id:Date; b=UY8h0wyelmfmP2DKRJp9sXOv2EI9b97+wqv+yfR87P055WrZWjzEJ4ZrzBK15tRxzMaDpUOUuIvH8Dhiev5OV+P+n7+j8C9qtWg6f9APxWsZaMRu84XS5nw1hPQnn/CSYvuVnumSKYFZmBKFRT+M2xgpmzsVK22xk9cyx3d/jj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdNtoSW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdNtoSW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754559593;
	bh=SHgsvP+a9kDyU9pYwIdiVJq+D+2r+L6juRyJ75ROTaw=;
	h=To:Subject:From:Date:From;
	b=cdNtoSW4ChndltJFlBCRMJNJHbW69CIkX68mEFcenmWOxVAZYdkgUbL+dt+D48d5E
	 oe3xG9uVg4BqeVWAE8oDoLylVzXF0XnpnIem6giaeC4+Pyq9pvOGpl+e6hy/gtDT/7
	 hIXEvBbp0TgyS6weFqHKGLvimEWDykL/94JTGsPTC7LpwrJGSUFKc4Gg4PxTWqjyMB
	 NowbxqmWWS4+4YAo7kheVHGfAxTrT2qRfeuTiHWUo2nKpSe/iOcxUqnzxcOV/+73+e
	 ChKJ1cn46wKPbhV2oNwv/DnYRNxT3Sy4WCjcwfnVrxp5zzBeiiPnUjErAN8LuEmkwb
	 r4X6q9Lcpws9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91009C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175455959358.12378.10823444116137050651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b35695b3c997ff3f8a571d969e17106bf695f66a253b67e8054dc20ab676a9
Date: Thu, 07 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754559593
