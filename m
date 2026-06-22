Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37160281525
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782131794; cv=none; b=hZxb+glN1naaddQHao7G5y2NJnfd1xCtoZnrghuR0iVNOLRKA8C51lObgImVRoksDvIrU/OfDWg9sM2kfJn6JkE+eMKjs5TyQnlIKDnbBRiRVTKYAexyQurI9/JjJcMo8PxkP0OSXxZTPpZZKqBdUIBTTBI4uYo/LIPduq55H0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782131794; c=relaxed/simple;
	bh=RDOCEMvcaQ7xdxm67yW9yD62eG0eOeRdoNO9ge8X8BI=;
	h=To:Subject:From:Message-Id:Date; b=Y50GDqm0w7ITaz2FQxQOqCIafi/1Nc4QcHexlvllzcmREt9su+P1UjAmpQB3UYGa++8oGypiNmex1LGgTcnIdRVEvAOCF4V8oRCvPMvQxXGWAxekCOooN3Ckk8eIxIOOWO7qw6uaWm48dzANJmQKx+NgyQnlqO/l+IytXv/mlB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7JlWmb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7JlWmb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED049C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782131794;
	bh=RDOCEMvcaQ7xdxm67yW9yD62eG0eOeRdoNO9ge8X8BI=;
	h=To:Subject:From:Date:From;
	b=S7JlWmb/mrcnT6G00iMSZylB109tlcFO1tVYXD613fCpgqqDAuOJp6uqSMsWBY9Z9
	 R7VncOVtGI4MZuVe+jJy+vGadR1mBXGD/JLrclspbbFw6n0Dm64ii7dxahdk848anJ
	 sEqMeLTGJdL0SoQ+pk+me00VttM7t5vRjqf5WxS6LXgjTb17x1Zgqnc0vnaXy1XjGT
	 gimCIkdCXy2wx4JBjF8dD70g0Qp7Sc+wPFhTu1t0wTGBBTYoskmQdAE1urK5/HMfl/
	 HiNcyqJnZipXTzZCfGjNNsdPVUltAmErJ5gg+mRR5DQSa5Krc1mNUZ6Oa3zDA2fdcv
	 Jh3JvD+HgAYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D2DCD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213179375.8889.2234238854198231296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2354e2839dbf14fb1ecf66dfb673971778fea38c50a27b8ed87b2cd5f04d4ac
Date: Mon, 22 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782131793
