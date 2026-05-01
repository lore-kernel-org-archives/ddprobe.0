Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1480C377ECA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777674454; cv=none; b=la93cYgMyZcwvjcGcD+dZTuiiD0FSEPM6GI3YWWJGF9B45dGPmJ/r100plNEgWuGEaumRyn49ue2EQE3z2PZdiiT+aXPFR4tFUqf3UWYfznl+Q1yFDRs3qaUcqEvDb4f08mpu5Jdn30xh0aywxzdbw3ARuEhf1wbx8QhrXJ3L9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777674454; c=relaxed/simple;
	bh=05AyyPyhTjhUlZa4filV0tl9DQ1SpnnxU5++nVPP+Sc=;
	h=To:Subject:From:Message-Id:Date; b=gccH3EUoeMvDG7K8T41bA4LhnyonJP21YaoNY7c8j+h1BBnAr5Jr8yQmwr7G2Yk3SXU2fNteexUcRIo2RxU8K/NBKDgEDBNcc0pVqUPS5Vzq9Hf5pPmCKti88T21PPJghLVHrueh49FzKOsD5BH+y68G7pxJp4RrPUwXBDVm09s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7PmKmlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7PmKmlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0216C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777674453;
	bh=05AyyPyhTjhUlZa4filV0tl9DQ1SpnnxU5++nVPP+Sc=;
	h=To:Subject:From:Date:From;
	b=P7PmKmlSuyRWwLgqtIGtDdtf+FVF1HGDm5agx8CizwCyaYPHjg9DJ4WpUuv0UH2h1
	 amXSK5KSm1mbN2EU/xDHSjUuGtb3A7NqctqhT6XaxR0uUP8TQ6Xb8Y44RKKnwjyXHa
	 rj903KZ+aLPo0AcG0M6eS/M46AdPRhXno5pcFroS6sYNVyfztd14ecJ/0k/IyowfwC
	 5c2ZLsT7h1jVe1KEQerzzr7YFPFsk8lgmo02DFILZTOjz/C9/jfxoxgYSqdyPxwDTD
	 XMGJc8oyMUMVPr2vIRjZrzsmzJt5dyjz88F9fFYfKoRl32ytShRHUhV3749hbXciqW
	 Pb2pABZXAQ1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD965CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767445368.2250.5510388627230741208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9447067a16b6ef7a18a0b9c58d7a7160aa567f64ce452e5f3817660b0dd9737
Date: Fri, 01 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777674453
