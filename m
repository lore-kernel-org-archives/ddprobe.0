Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383382E3711
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753895394; cv=none; b=qaY9xldZ2zmcf1p0TD1504Eics3oxM44WNecnjW6sWDSDs3IWW0p79OBuEic1bmtURY1uyFjR7jn3jNf6Ovxea6YYRiL8qRWQNuHBdNxnhTZ02gx0NO1Dq/nblw2/IUA40R9onyWLmBUiA55t1hmJHUP9Ykcg3fqeFJlTVsnss4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753895394; c=relaxed/simple;
	bh=Z6shj8/LnNbQb4OIj8bCPCiuFTju4eGOvJoOR/po7cs=;
	h=To:Subject:From:Message-Id:Date; b=sljE45hgGHvuV4Ikc21L2uAwnuXM75453eEyItlM6VH0fg/PDu25CWQ3jwtfUDOfGKaDkodjCUGdWAtpxfrsSREiyZzub+ZOMlCe3K4qMJl/3bvnaGXR956ZEIGXmcQgCdtewhgfj8FTylJt4vmoH5v54VtP7t6QtV8p6awLos4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSwoYE4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSwoYE4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8548C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753895393;
	bh=Z6shj8/LnNbQb4OIj8bCPCiuFTju4eGOvJoOR/po7cs=;
	h=To:Subject:From:Date:From;
	b=JSwoYE4t5V5bNhrnegpad7EpcmCWDntHOgmiELZ6ooF78qNtV8QdHNEuYZFU3kyru
	 6kK24bsyOHgYRPv2/UMDWJFfln52FUow5ABPpyiRxLNkPF8bSOWn1iXlkK26NFkIBI
	 xvDsQrUqFPkzrSWOZbtSKERE/kaBMHNgXicu0k0rinSTCV81jYAH5pZFXxAZpJbnqs
	 TymFHqLc9lhNEyYMdKC0smCvqzCqkdVcqS9Wv3bW/vS5boo/pGIxO5ytEZ387hp5Mn
	 2o8sjLpLKpY+rcCSQNS9lMAHzxFv3pmTamTM4gXAFvBqBXsZV3ADXycM6Mt+tLVpKc
	 oMS7DdCodVpYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98229C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389539361.24760.9554480826965587692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715e332c29313404b88184125165619559d65df2419947a71c38d57e847d6207
Date: Wed, 30 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753895393
