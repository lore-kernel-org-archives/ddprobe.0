Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC6B3B960B
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777296454; cv=none; b=C5tooQyXISR2kk/cVZUySjedXhqWd24X1k0Sr0csI/P5elUOKtBdwYBGwLZb7CF+MB7fMSyZcnMx7XCdgzDfcOvf4o17qxxOmIRBgtNw0MozuElL1cMYGp5zRfDsYxU4/VfOLNEeICae4Ia8f+3rOZLumcGKWWdRvPiUFVZC3UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777296454; c=relaxed/simple;
	bh=N5WrTe4/groBtX8sKiVgkNllAjI4Ym7J/p4XE215T00=;
	h=To:Subject:From:Message-Id:Date; b=KCNIqPTbaGrOxJBg2TmueVvGdGtrKpa8J+H5evLWkPc3IBClOw5BjfUpuzul4BL8I3G1n7EY1g9+3gIZsR+JzV5iIuUdwdAVwrR+B7gNUfy5BuuHq3UXDwraq3hsPKycQlSHEYLdyls1Wpmno/kr09XNyJ5u5ZdkphusSWwKQaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6yD90M7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6yD90M7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EDEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777296453;
	bh=N5WrTe4/groBtX8sKiVgkNllAjI4Ym7J/p4XE215T00=;
	h=To:Subject:From:Date:From;
	b=e6yD90M79Du8jeEZSa3l4eCLKiwoThCzIUzeXzlUpWTmRdK3ttUenHsF7QQrOdJnR
	 YnrcqgNgIrBB1h+VOyhuixis0oolrb2ul2mOZydHxgX/aZMfUwL2OOStkBIkcU3XZN
	 r4OHamJrnPCMBAF5XrlGx14s9EjDlBfcz9gLl3QxNQhb9+B2NfSEbqZnL/9q6Lmo+D
	 DsMqkFHMOUMd2HuqYtoCLTrlGxIpjq1UfEmMDbfCZBwp6EMjOJQbucERZAzmElgh0I
	 QB/y4uudaFIsvZJJcvUXFexWNgTqhSSjTiJ1GMYC9doLpiSCEXJzq6bPWJZgeW+Q3U
	 ZZ2ARMMrzHHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94CCFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729645368.22030.13761349961065197962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd242a6bf46dbe96eb5e1ec9ea65e4c33618a164ab79b7b7ab731f070f6969bb
Date: Mon, 27 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777296453
