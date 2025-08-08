Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0133FE7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754695194; cv=none; b=htdLSAgUyyVMasUavuk6kZQupyvHSTi7fblfamgE2Hl1tj6VwvwZECJ0DfW1nu67u6QDkPiwSLwrleJFg11fWxfZg5TKUFZ9vJhec+Pbe0EGpkST+hDDu8Ll/U4yrgIdibxNb5HrAZlGgDHqOa/nd2UI+UO6dW9Sbv9fCKyzFpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754695194; c=relaxed/simple;
	bh=GpI4x/yjpuFJH+nUKYJ0k/wl0DwkiQky1Zte9DsskPk=;
	h=To:Subject:From:Message-Id:Date; b=iTjrTnl+UKLAxV/89p8NJjmrB8BUDLDBPr2+s0Btc1ZUQxB+AiVQPSrjiXVi+jIAsbwSMfdryMScVLsDCJr4QF339mx6///ZExYNFZFitwHi1a7SY628akaMiE8JyoA9vRAAKMuflhITz22x8pTUHX+K1qvkAtgJ/Fm7+bhOCIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHzkUgVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHzkUgVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9AC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754695193;
	bh=GpI4x/yjpuFJH+nUKYJ0k/wl0DwkiQky1Zte9DsskPk=;
	h=To:Subject:From:Date:From;
	b=jHzkUgVondWGY88nE+mUp6g+RhlOQS8DEUuhiHcV8LMUoD+DSLyDKuonpzbMvMASH
	 7WDDyazck5+TFmHhGQGqLRM3M6WFycojpO7VQvOzs2CxEUhpUcp8Zu1cih8cBnJPVJ
	 1BuirOk/5WP6L6D/STWaePDD31WInYs8a0pUGpnJUnc1sc8xtVOIz9wtzQyXz2JcTT
	 KOoKnABUd2sWJV+XYM9aBnE/3/ZzBodTKzDdQScVRiWi5xiUA6B6YByvsa/b4ZHGSy
	 6kTtNY4V/D+UGgcrEQi9WMvxDUkCyBecoplWMx+hMtjGLPl+JzB/DWPcFk8NVujfkN
	 B6yr2RC+Itkag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90407C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469519358.31342.18409317096860344563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45b1848792276d6760c03205c1a7e15765cfdaba30e142c9ea76760b0416a53
Date: Fri, 08 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754695193
