Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1221A38FF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720079723; cv=none; b=C0RT29Ro4FjoSLOSSP1nXBxNDpoK05nkq2KkUwu//Y4xtrOSxMTNzOgonLJyxvOGXrG4u2uxQ67gt90InhJzgOEo9rtLY31uJyYO6ygsD92zyUcb8hd5QN9BlDUHHFipculQJFbDv2DYHK8ykOB9pgj1OTS9MH96pEqTiwV6JHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720079723; c=relaxed/simple;
	bh=qMsEN0elE2rd0+KjNO2XF1MimvdpSN75sq98lB/hGUA=;
	h=To:Subject:From:Message-Id:Date; b=TZHte86PfnF8u4VT0IMzpbuUbWHH58PCxHJ3NCeciF3CAuBL78gIJLh796DC+W3S5UTGGHfZSnHbWJgj0iBuzwj/yFH9nPFvz7mNlu2+LMwRyHbJLuVE15tSedeEXgD7Q70TNyeX2ykAOj4WX47d6Xe555GshAXS3Xo2c1EnkIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqo14Xld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqo14Xld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFFCC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720079722;
	bh=qMsEN0elE2rd0+KjNO2XF1MimvdpSN75sq98lB/hGUA=;
	h=To:Subject:From:Date:From;
	b=Vqo14Xld6vpejm/IvlRep4M6TpjVttaxTAfOVCPaXwodlS5qU48Fr965eTbM0qjhU
	 r845nExjx8HbStNV9RfnzX/b7o0cWHjqRas2gO18YBYyTzuzMIn706EXTj+LhnMCpo
	 yaYlwPV8PHI6rbcBXymDYJCLdUwyE8qAD9ybC1qB/wRhzslE/KRZEOExyLpgpgPka/
	 I4kcasMS6OfU+dMBwuWciQbOsIt4nFyhaUsJK/5uPScDYBR/Tc263ZXycHkq0mT5P6
	 CcBLztDoKRr/xif0m+7RRgXpxtoBjTb8hXsacbUUk5w0uIGyekSTvxtAoxeoFctOWn
	 yxwbiu9hF74Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05EBC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007972278.2245.7462547442852388904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fb724788e441b5c5d0fdf0afded8700f1e2287d29fb7d68682f74281ff7bf2
Date: Thu, 04 Jul 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720079722
