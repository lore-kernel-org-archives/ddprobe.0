Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26042184551
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728345354; cv=none; b=AZ2QnCdqg+DmNmARTJM+BDBZyzrDH5AQTWbbQikAboQxSfbI0h2vdTk3b+T+4w1fhXyOrx2LSCjlvzp08vrua3hnA3kyYW1KaWUWgq8uFZRfsXTtMsmIZdCtVRcg5sjktDGbvHfCvWG16T3EGPFcQQCwH1Y/Q+60mDC9Hhw54TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728345354; c=relaxed/simple;
	bh=CqBbrY5wKfr3DTaQ2gLVGYuKHt/YiCCRFmx531H79og=;
	h=To:Subject:From:Message-Id:Date; b=Brtp4Iy6ykFDP/v4ZjxF8ysNwI9xkAH6PooLhMkkG+CVuDiRmWS8cZSo9RkAjvha4gnwS3x3DqIk0UgM+r4qpUXzfFQHOkSa/vby5l+f9fxohOhKPncMKLX9YBTbOVrFQFp5R9E40tD3NhDV74Q4vNJCd3LNzS2e/VgpGYH2wjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzZ1w6KX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzZ1w6KX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE42EC4CECD
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728345353;
	bh=CqBbrY5wKfr3DTaQ2gLVGYuKHt/YiCCRFmx531H79og=;
	h=To:Subject:From:Date:From;
	b=NzZ1w6KXwViZb+KADkDltAPquh+WT7mE7THh4dr0MGgMVrH1w5KLJC8UjIIetCE7F
	 oSRFinmIfJgB52Xk+L8PN01TFiFjcCXFtPmuWZEmPk61H/leeBXa7VVmBfQ0RDdRTy
	 7cTqdo/+1FBBKKKWKPRfPN+ZF6aMowuVjXSqYoCy39eeIEygZrPtm0i/t8gVnPGM8i
	 41n7aPoAYYP1v/75qyCvS7rcPTHoscq4cy3MGvJBIqJiGgtF8skDKj+BpOx4QqUh/g
	 JUih2R+IloTyKXYr7w29mqDE2NGOTvIWjZJ2hexbj1KUm/qUbWHo6b+hW7FG324eYK
	 R4eiy2YfYcpMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAEECED24C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834535361.17642.4808529932140209027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e50ce804529ba2f49d2abc1844ea764036604cd3d6893c5ea3e4208c2e32ec4
Date: Mon, 07 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728345353
