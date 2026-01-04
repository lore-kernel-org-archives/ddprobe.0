Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595B18C332
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767533634; cv=none; b=X5cfFnrCm/tM2J3/lA8m7ULvWBdo0bYlfgwnH1zp+v56OwrGPyZp0plbeK+LAiuutqCVaqoQFIx8fUIw3FPJNZ+7WWLBSjlg/76QoP3Ar9DmehVua3AEUpcd4RA/p9iBpGwNqwrs05k6POh4aLTsze0F6BuuBGM/m14Vdk5XF+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767533634; c=relaxed/simple;
	bh=UNrVaEJFmO/oQ9/Yf6A32f2WCzu0zfb8BSVTU489dN0=;
	h=To:Subject:From:Message-Id:Date; b=Dwm1736bhQRpxxp0Lm+71Nw6Ne9bfzRvBIxjCjiK6/Olo/W7/vgNkZxa9x788+Y1Rvve6lfNGjjKutOrEIvz3MoLVkhxHvrE+F9DRj7hnt42tgri0/njxrkfHQbWEFX0rR1W5lD06V/9S3RrbdPVPWXYYZfIylSGqM3eD8XLHtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC3Qm0Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC3Qm0Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F318C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767533633;
	bh=UNrVaEJFmO/oQ9/Yf6A32f2WCzu0zfb8BSVTU489dN0=;
	h=To:Subject:From:Date:From;
	b=FC3Qm0WolPIdlcKotcqbKr/TViCA6qFL1hDVZlRBZdRbJ6uLQzY6zddCIOx+bQzGD
	 in+8PHDv49paqeGT5Mng+iVZOhCQ/MtQkdNGzpJAH2KPyz/WsoVh7yvl3VB7ndVyZd
	 qb8C2b94XVYuyXyaRRcithmXKVIMXCil+GGprmm3FeAOP+Wb+WUXlqgeUrgYqoTKSf
	 REZ7toEsc8H5IeJwVAejuJhwM6iIbgVjAH9zE36HFyf9q62wR2WpsQZIWznLSClAyh
	 nyQ7t81C6btXHkMexmECRnbxbLc5mmdR1B/vOkPjdaumngyPcoloBrkBthB1asrJmA
	 XzwT7aY0S8C6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231BC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753363357.31673.6796247021820882374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2ede7a1d1234b6a039bc4f20e4b64a5f76693373f903a3fc5eb348ae225014
Date: Sun, 04 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767533633
