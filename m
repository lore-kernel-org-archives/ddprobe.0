Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08D22FDF2
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752416394; cv=none; b=f/M2OaF0fBr1w/PXnC6cZvH+IsOSBiO4OI76CON0eLC/I6T21mPPw6XA7qnDxNf9rLJX6btaKr9sT/4J1BmOqKwjg2LmE6AApL57zyqnRy/nlrHF5kIyQAvmkw18wCwr/l7f//nq/7+zDgzFcdqLdYVbS0DIlNc7gQ9wCebuy9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752416394; c=relaxed/simple;
	bh=XAZNfIEY83gncE6xPCjjHQ04xV1mKGwRc+FmLdLjZT0=;
	h=To:Subject:From:Message-Id:Date; b=av0r5BHGilpysHxNZ0qKmLOVJnt8GxUR2c27nEBqwnBNeM/fQbSRJaq51tP/FN9IAkx7RBgg5Ar//hnHIIav/Payz/D79ujJOPvIMd+piYpGb6U/D6lg3yCzDS/GEJrVaMXfTP59NO8uCifYEX/krBGrIsSawkTXIziQp14gB6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2aCRF+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2aCRF+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752416393;
	bh=XAZNfIEY83gncE6xPCjjHQ04xV1mKGwRc+FmLdLjZT0=;
	h=To:Subject:From:Date:From;
	b=S2aCRF+DX0X4RZ3RcV2wMI9eK7DQrNbckHizeH4jfRTyxjolm6VgLiT1H/TL0faZV
	 +X0GtJ5btP+e7oySnMTI+oJpBDpUVXaD4AjYmuyH15iH24GFE9Pl7xCnkR7OX7eeuK
	 CnZZMKmzM9V99DRg/cyNCTX6IXUCRt7VV2FjwCDD5QiKvLgUkP3h/ZUqKq11NYbq5i
	 LrFQ2hvFTcWwNP7l9Skyq2dZ41uja1ZSKFbwd2CiMIrdRsS91iTFADNJpmhMvGcY0B
	 Xkyq67DpE7ChJhYm1Af0FGexWjsErsxiNWTY3A+gWLhFREtcT1Y9siAMVTplJvL1Sw
	 Eqiyru8tQ2IFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B7C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241639357.28865.1599663478925088906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e732794e9b2f3a2e10d0bd5bfe5ae5bd2662387c08190fac1de2133d2e2c7fe5
Date: Sun, 13 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752416393
