Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4866B75801
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785590434; cv=none; b=GEU9XVOsXsCjkd5MLYsxs0gCC2VuXLH3zfgqR6tFkr4QivX81ZdDFy1qBM4Blsbh5ACZLASK2/vL/3PTFp0apgeffaL4d8oEnJGZIo/f6ZVKUpWzLIr11sdI+yj6YuRMwF2RTcppW0V/SUmdVFpRu9Xp6suVv74APpwfWQnIYOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785590434; c=relaxed/simple;
	bh=fqbvkhKOD751L95HviCticj9+11ThcwUNAxdGW/CX3s=;
	h=To:Subject:From:Message-Id:Date; b=caAaSa3igfqq4jE9r2jNU+n4R+hSGBT/pivC+fezi+kko+T2tlctUdcnBUueMODLRy9nRPimXcMAXs2VGTust+I6IrY5kJr+c+ODizxpw3f6/Zvff6wHwcms2UxMPYuljjGHwEqNmhPht9GBH+pJ6DoeJfSO7RE4U+0QkY3jgO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ue2DZNOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ue2DZNOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D6DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785590433;
	bh=fqbvkhKOD751L95HviCticj9+11ThcwUNAxdGW/CX3s=;
	h=To:Subject:From:Date:From;
	b=ue2DZNOy+jCctiqwvoEQHEdAuDiYTEqK656D/AZ56FLJm3/fOeymNu6/mid4nP+BI
	 xxpbrUpcckQS1f7eV3laT9FlqDJdGlozB1mJSlBMooR52fVmlay9j8IRBYMik0HLTT
	 hQYjYuT42b2E+5nwiC605AKgTxMqD6kgc78hNPGetM7UWZcECjISjoUKcg+BXk9uGm
	 ZhQnatLv01h8Eeb1ALPXgdjeOXvAOai00pmgt3jGhLc5xVyxHNtCLOhW1jY4+FqI08
	 1cBrLfYQ+qOVVMiHW2TqPi1i7G00zwm049LKvdnxra7YRaQMSxF443MA7ejOk9t6nH
	 2E5bfxDL6iQ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE75FC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559043368.11656.4245944817942374395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc8bf2a939d6bb0b2fc921ede4e6b107aa1657c0d582127330070d64972a83e
Date: Sat, 01 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785590433
