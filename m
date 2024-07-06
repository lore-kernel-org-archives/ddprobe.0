Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B86B8825
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720233923; cv=none; b=IuZA+JrrsXPZc0FRHrMWKCUgyQCEIPKVtj8SgMummfOKKXxCfbyzqJ5/6mxiwyHaKo1qbzH11pUM8QUx7/MocIV5iy2+XPKHG5qXuC+CLMd94PahbRMU6hSDY1+PXR2iFf2O2Sv1r/N8cSU9xDMHcm8EkQk39Gcdl7mxhcOVV3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720233923; c=relaxed/simple;
	bh=G+1Q0w0RZ3N9BjynLWfgKKxWKln0Bxm4TMu8WkpDVJM=;
	h=To:Subject:From:Message-Id:Date; b=C6JBkexhfRi+gVYB0PNb8gSqz8HdGQyaHErPgWmyk8oWwYJgocuRW2Wg6oXlLWVi7tkHhlqdorxyjjFg1GrxBrGJgP5bGm+moRBNUGtp7krnw3DP8oHawjNG634sCjP96UAe0cLArMb6+sbCaAaochj44bK1oTfsZ8EHFrw1Dys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+PDRcLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+PDRcLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC651C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720233923;
	bh=G+1Q0w0RZ3N9BjynLWfgKKxWKln0Bxm4TMu8WkpDVJM=;
	h=To:Subject:From:Date:From;
	b=f+PDRcLACZoC95ZyOnIvEQgdkTCN/TQrB+hX+4gZuu80/kk/rZf/+594hY19xRqwK
	 AmY3ztwasTGcw/jo5tabyS0cP+VRwXe1NlKfuSdbOaryU9GqtcVa9DKm7Pm3s2lAVo
	 fsNoL53UQZbXV4cXsd5oA3CIxiMSNqGv7m2+cC3HvVUojowkeJYl/MFtTJSVEMIk+P
	 WPgWalQsjldByzAMupWoCGJE2NJ40Dyf2rKv7IDKN0cKSC3hqmzCeQFeC7z6J63FI8
	 6Tt+siJuef/MXHc01JbDv2A0VMd3UmPoR8IGK5HqDMersumayhBB57FJsIvR5pfbqX
	 hfvtV7Hfe+8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21C7C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023392281.22984.15580637057908947264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659f237cf44973292ec2ca1db35e7b5149ccc36e7ebd79454fb4837cdbc6100c
Date: Sat, 06 Jul 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720233922
