Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40D31A3164
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772077493; cv=none; b=Y3hI6HkCEQAnMAnBwhpbpyyiijCX8NU8qd//+ch9NhXQmtePlCpw5Eyxs/r/1hc48dncMC2xZ9sSkzZHDGSzMvqBgT1nyK/4aoncE3igcPTyUIsX0cDRQE4EffNx3PShJYvGlTCVImBgLZM4u/HluqLxIu/g4epZfcwhrBMHMW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772077493; c=relaxed/simple;
	bh=MlxcNT/1jzveErsrszHmeS/RqNWNNTiDVDtg4UG0PAg=;
	h=To:Subject:From:Message-Id:Date; b=usP3L7rnkLXNB6+NLJkH5PYxdeN3eCvOrGW2OgR4V3l3Kj+p7Xa8jkUAHUIfTnEp9w7BlK+sxmpfWJJB2K6cxAYTv7JdYa2hk9KeXoQ84vzRkoj9ux5MO+R4U5YGLBNS3KJ3zr2BBypzl2YXNIho3yCohuIBPCa9FbJuassr55Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVtlQP+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVtlQP+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772077493;
	bh=MlxcNT/1jzveErsrszHmeS/RqNWNNTiDVDtg4UG0PAg=;
	h=To:Subject:From:Date:From;
	b=aVtlQP+/aBgyGgKLUkDf2oP2MQEL28uewkZqVz5DtO4lBvKjWJngjcakuACK++EeN
	 w3/E6+bwSo9/LAzVXLxhJLWOCiozrDJiuQdvyITSpDV7/3FRRkWBAj8750HvxMGiot
	 dIs/skeYlG3YkpxAtDF9WQ2M1rmOZQ52KPagMO4mms51EhYEbxgfNfSdAFxO5LqMcg
	 FroHAPqfg0JX631qjQhltrM1oYNYqC+inXkgba99SVG3ja6YLiqEbKdA/dleHKU4LK
	 dKdqHQqJ9bKSMoA70NNBEYZNJ0Ty8aP8bRfPUVV7T2YqfOLqKcanGx2FDux57EBSzJ
	 6JpPh91uo2iDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B543FD460E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207749361.12856.5991663501790388488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4f9fa305cf1f08bb32030c300cd93004202ed8b4ee410d92f93ed60f7ff28e
Date: Thu, 26 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772077493
