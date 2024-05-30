Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775AB7F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717028063; cv=none; b=FWBI2LTGiI21cgT+ie/RBm1GDzgfujmjoO0+jGvE4dLwPMAx6Ph0yYBDXy/zV0v8w2EoZJ6/h3kIWg5uxaLfEqIsQgcip5nIhW+fq4kptl4rup2JLZG55IFzJIsuv8ytRjMgKnEzhvQhyQAL+36832fH1OYp/VY+nZM2IXST61I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717028063; c=relaxed/simple;
	bh=fx1b57Kbae7+xmcGz7Ibu8lhafklAMjqdcOJQb+Xwss=;
	h=To:Subject:From:Message-Id:Date; b=g9MmY2DfBm0Idlz5tj5k6Aia8UKH6Y0NJwgr/UWWJDwhqqjWQvPiSUVnRM4VLaPtO38P7XCkMlb0+tc7LQvXORjkepLVfyLE3mrQdkfJQ+V+8Wj3G7M8sOJLjMP915gg0h80XrQSKwF7pRub+7FCYsOAr7IUwjLIhW72YazrBNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUID19Av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUID19Av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10D4C113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717028062;
	bh=fx1b57Kbae7+xmcGz7Ibu8lhafklAMjqdcOJQb+Xwss=;
	h=To:Subject:From:Date:From;
	b=uUID19AvB3esm6QbKnaCBeVoYmX6IdiF0ZXAOuPgBbYoa0zTzm9sPt4yerTzVap5o
	 YM1pfAzHSHDwujUATwYrC6IUeud7HS6XhHPxqnLiuNLyZO1hr8S2PGAjWt9Kr0b8wE
	 cSiuB3HySLNa7/J0c0/bJjfekHmq/xCZwx+2UgaljubQez4U4wE8ILTuUyDM84TZkR
	 NdmGybxSzpSnEL4+s30VSLpq85gY65zK/C0bL/eqwZB5BUaGyjjrzo7SuePCgTxP8/
	 8zCxL6FHTeFqt9kqXsEvsjiS7OofOvpWJutLhEcgL0ZgdB6KAALVHmYKBlfAgDPQpP
	 ZsAcqLoXv0C5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF79C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702806279.14873.8778349120264209146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0556a6b584b9673d0316c8096f5154b2d06ea0cf2bfa8fe3f43427eed3f714f1
Date: Thu, 30 May 2024 00:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717028062
