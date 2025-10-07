Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C933E2D7DE9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759845593; cv=none; b=dw5T9I8Fgzso90OZViaP3NRbvv0ZaXkgX44FAaxkPeL0QYBpXGg0+mwkISqtrXIG1Kd/FwjEkKt7nby0rEuEs/9nwZ8yurbrmsFqh1yiTb6vLtBEDZgHQ/9Ip3tUFyZZnysQAI52AtoW2DxDPvpi6NsUDJhPuVmPyK4adcdq1lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759845593; c=relaxed/simple;
	bh=QtuUqG4s9+zc+bmvbinQ1qJH2sPv5A3FFQZNmp9hyms=;
	h=To:Subject:From:Message-Id:Date; b=TOCwaYfjP9QCT5dvJpEQkxSTjoqhvaQbkNRkGYKcW8hdLG+uG78O8ENlnAsxXFZ5Jtnk+Uoceh0mU4TmJNhTaOsLn7E6wmyfi8deL1J+ss3DrOj9eGad4MObAV4+dBy0jl0uJPrprBdmcSuZc0dLkQNr7LMnkhRmXecDfbv6mAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8DKLgu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8DKLgu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E31C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759845593;
	bh=QtuUqG4s9+zc+bmvbinQ1qJH2sPv5A3FFQZNmp9hyms=;
	h=To:Subject:From:Date:From;
	b=Y8DKLgu5NBNusw+emilyVpKBVtxR8WSQr8klepuNghhfg4wpD+K5K8IMEe1WFTgkX
	 XgfjlBGBCIKFEfyfKLv8LVhb1p9//GysXu6EpbnfYte2TlCkgzfFR07OH1J88jcJ8+
	 zVOHonhNcVWayHzHCsCjgfr/85azkXDSfaXi6MJBmv0GExpjXboH3B3JaFZ1O8DIGZ
	 W655wE10LFuKEQ7RplOq2mWLZ/usN9OTXsJATJCfpon4Ru2gSxxQAAZxVSqOUgXmlZ
	 2s5vF27XWvFVXWYs/OW5JUEzwDiyOZpQ0vbROAF/Rx0Ky1wdurdz3C2fG7be0EH0SY
	 PRPt9CDAobjag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360ACCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984559359.5775.13953506324782065747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9edc9b7f74406997aedd1d6a2e90929e0c2ac673c8ff74bf5660d7ab2c84117
Date: Tue, 07 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759845593
