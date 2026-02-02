Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383B617BA6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769990634; cv=none; b=u0OHFuSu43HzB8YZ3/1e33sDnSlr0WcIzUiS4DpY2NVECiIdGct00I62B2spz96cr8zVHVaAExxczyr+caqfM7IdI8ZhbYoqi8y2XchgGYo1eH/WO//G4mj53wu58VFjCfY++aRx/qwTHzjzCEG1/Zz3nRmeN1gOXASG9Zv8//c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769990634; c=relaxed/simple;
	bh=9gr4CRz//HrHLChMhpskKj9VCPzEk962YPepa1oUDHs=;
	h=To:Subject:From:Message-Id:Date; b=uejUGLZn1/LxnFc+fij1TCP8HXWuoNv63cswRg+2SgkZTUXDjRBmUowzGElSzUiYsfsHp19lWNqEgQhIkM+6jeNWg54C+R63RkldmU001l2yRgRwJRQP2F6Bq0iprIsXSYSZxIy32pQ0+2E2Ed+dfaPfuICYM9QKLmJCO/m1Q8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5VTeKS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5VTeKS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5B4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769990633;
	bh=9gr4CRz//HrHLChMhpskKj9VCPzEk962YPepa1oUDHs=;
	h=To:Subject:From:Date:From;
	b=V5VTeKS3MlGmzPC5LIc8zOaxaMfn4uXlXPJOgq7AvigNj0TRyp0dkAB63v2E6Nj1p
	 VAvzFQywPMEI+lZ5CXSAkiewNHDrHuTyNXpTjaQfVHGWsDOwbndayE9JGQFoHPUDUO
	 NaxDAmFff7L49DcwmBq4QT6ug0wiDyLetc4lXLyL4WAR8rDwka0BsAl14Oth5tkyDy
	 mfVInefFifRC0imxvCt0ewqi4X/Y7/jxylSwm55bbzdSG3QTABOxvUyGwYecsOWcna
	 cB+ILEHIog1hCIlzj67vgyCNaYAadNQ7hedMgjkVXVmvisQAF/VMNjIpOCpRjS9rv8
	 zrKmftv8tWHmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C5CD172AA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999063364.24931.13201947511135236705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdb5c5f8099fd858b8f1ceb5713dc92f89aff01641ca2c476bb210b8d4073e9
Date: Mon, 02 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769990633
