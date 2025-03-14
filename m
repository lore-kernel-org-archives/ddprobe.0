Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA4A2E3363
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741931934; cv=none; b=AHBtCWvtPhKKtVG+Kh59vbYn8Z3HWhPE8r6jW0z8fphORxILTiRsBkQcJCMP7JEmcw9Ti5gWKdsA6ZCgEilF0v62obyjSq2YGy8CgZmJv7hStu1Nl/mkx/eYdLkC5j9J/+NhbxLa48Vdmrp5u4gMGfo/tsHXAgRDmG5ZdOKX2lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741931934; c=relaxed/simple;
	bh=4gnTJbj+K/LA/mZwkq0XyjnkFhoXEB2BOsr32hSITtE=;
	h=To:Subject:From:Message-Id:Date; b=RuckwedljJinhHjhglpRBX8QbngrRpG/uhZytvVWAzYJo5nhQCsJRCnaP+yhOtShXHTBAa8yuOWxi7yZNDA0IaCcab0AVLK7SKRPfAvMb3yzQW7tOsRViF39ZdYy1l/5pbv1uka8uTRp0iHkjPG0CpTxP8nmfnWoldDBkgWgx+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thIRCVqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thIRCVqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4127C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741931933;
	bh=4gnTJbj+K/LA/mZwkq0XyjnkFhoXEB2BOsr32hSITtE=;
	h=To:Subject:From:Date:From;
	b=thIRCVquzhFQLJcXOdEaq5SUcI3xDb8Uix4TEJbbtfMCeIe9UfbZWZQmwgUxOyPgT
	 7akNYe6wrA0m5bCnluVVEQQggGApJmzTHW7GNZkuYnAiVv5nXrIVxptk9EE0po3PS9
	 ZctQUMJRnjy9r4AaPiGygLMS7rVRZu3/wX3TK9whkc/0ZGPUNIBcRnwibmm1Alyv1/
	 gxO1V2d6Gze9B57Z65MQWjwk/eu0qm+Ww60Eqm1Fo5DETv3HRjjyun3fAMj01Zxfmb
	 PxBMEmbEDHM8i0/R/b9Imqnj1MxySAIX0dTVVTBXaiSDZ1eTG0WRyVl4Ayrwsf1nxp
	 CmLwSnZlrEc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98515C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193193360.31890.5121302258702569402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea2e1d6c83f3a6a6176dbaa621e0814e82e9b90b5bbaf431e1f1f02bbd8fe71
Date: Fri, 14 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741931933
