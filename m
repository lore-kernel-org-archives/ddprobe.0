Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1B05684
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741745334; cv=none; b=j4UuvreNw93o89KkZoCvag03UagzUcywCs2duGKvpd1W2ukS+jnQSsC+2Eux6XRYl9N0o6NeV+cJ4xTKTmaibCho+oAVwAnpEjCV/71R2lbusq87lg3R4OCFiHLpPBl0iSxKZhgBoM1ErS00PiQHXZoLUdS7GVGGd1SBaBiYkLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741745334; c=relaxed/simple;
	bh=zpbkfOgf+Fwg7DvXXOdqtTz//6iq2k5b/5h825qDb3w=;
	h=To:Subject:From:Message-Id:Date; b=r95uxOq1rxNQrpsWQB8GF15bo/jUkMMMT7gdDtIvoqaCjEHSVtQZgd4mmenVWxcoNLBV2GE3o3tl1afZ73vXb4ifxd6Db+vMBLTIOH2B540NiunpEB70GBtBpkt6VpnTLvQXDFgkRZe/SoFc4CgwUzPKH3s3JNeEwGgy3QOEkfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEmyoYX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEmyoYX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF024C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741745333;
	bh=zpbkfOgf+Fwg7DvXXOdqtTz//6iq2k5b/5h825qDb3w=;
	h=To:Subject:From:Date:From;
	b=ZEmyoYX5Py/Vea9ExmlZ0eKnkXPiK/c0CfaUFesBPW+e888EPGNxdHMXgsn9zul90
	 c12/L61IJPU71qkIYQuyurzmbzLMglnooB2UHHzoE8lnS7CvzBY7cbEznacvo5p4H+
	 86xVXjWV7EgP4Itp2us1c/XwkKI01jh4IasE17vPtZDun7NTu4vr9bjtsfyPmZOeWU
	 sDzu6/FnDxG0Ma11vFM7R3jNyxWjLnoOPWmxh2bmdIrovpRQ8M8zIU5bJIMjes4yFB
	 hpGUkxJXrxEt08R/eksxdcdU4MFlHbbgtQCnaP9DI319Za2hMI6/CcVaZf5yBCGl/e
	 Klnfxj8farXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7762C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174533367.32065.8540972952065549693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bca4cc37b081b38c98033e09e5f6f8a51f7e0bd886ec5c186cbc7e9de4a708
Date: Wed, 12 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741745333
