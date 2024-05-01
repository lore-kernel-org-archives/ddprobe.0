Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B56D4CE1F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714551143; cv=none; b=kINTGdFSppmEsL1EdDNySm2mO0FV0Un3buLt6CczPMUSXcR2xvF/2dcMJI5SgJhAufA0BCNdtU61RqN9rnsffrYahaCvKyqMIqfV5A0seYwPVprn9xp+gEHwuV+dZ0Lk1qYaL+4I29Aggvz1PDxQMAmV3mB8/gEE2rQvExRiFow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714551143; c=relaxed/simple;
	bh=H0DHsRhX+ep3ehs5YvkexhrcntT7dtKv5UT4KdDUdYw=;
	h=To:Subject:From:Message-Id:Date; b=JLGGZxZeUaJsExVd7z6q8zt5UR1yqVkLd/K8a9JcxraFFaghonfGWXRYCo9B0VQIOO/OMxwdvgLBuGESLfulbmUV3BMZQ5QlQc9iQjfBGhrYQA1nclnDQxSEY8zwkuc67AsZKFx+z55SdfdFZLJRZSZ2Tx30x+h1wv0fAYpZPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHmVmlzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHmVmlzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44BAC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714551142;
	bh=H0DHsRhX+ep3ehs5YvkexhrcntT7dtKv5UT4KdDUdYw=;
	h=To:Subject:From:Date:From;
	b=LHmVmlzXHXtjV5PP/S0T2XecOK+KImBcjH3097ARGxP+Z4pg35pSI5wWhhcWI3DWh
	 AckKjgpI8RhlSXXCHdTH+Mkymf6bloDxE5bW4/L8jzQQEY4rEkPRNZu01MZJQfw7sF
	 43ZIerhl5V4JpgK+dCPoIpGkcNTgQ83lVonbPzO8qI3xOTr4Md6f678ChQLEWv/4We
	 qS6n7nyVjTbjrGg6+ozmse2XVlc4AVXsyuGBFlZ2arHWCFk0vHwRxnJf5/ktvXazY6
	 uT3NaEl4fRpeaU2r8o1orn8cu6AtqZ1E2r+NVqRSLm8NeNyrD3G6bE1tWxMqR6WlWg
	 p6W/F1fijgy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18B8C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455114278.25504.4620865301769615485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c177f5d24f0bdfbcc16792fe8c990b6df4d9b6472b1145fec487e10e58667b76
Date: Wed, 01 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714551142
