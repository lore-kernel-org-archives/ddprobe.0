Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 731EC3DD528
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785366034; cv=none; b=MXBK2mlKFrN3Wy6Fbhy5eyb+dHsM+oqNCWjnGULyxwsDimn5tnwDGvtjQWD+dUq//CgKe/SbUsVUEeYCbROI6ULBAYonCFnHNDlI6haTIvdmZehPM1X4+9ORjInKPLloCTa7Ea4GyFQzVomxHtozC52VWXpy8YGCWfU6Kcxb1HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785366034; c=relaxed/simple;
	bh=2pJhzm6EHC4221OZAMv0aAVF8wHsjce98tWsyYBUCPo=;
	h=To:Subject:From:Message-Id:Date; b=Tcx5JDMf36R6mQMKFFcrS7tk0SlrLkWOVNdC5PVrpHiKFHujnZDV9xVqjqngEvGk6MatmMenkmA7dCWdGTbZZd4LXrBDIINSPgPd5Q3xw/VnYczS4KoRtPqera/sRUJmukPuJi8tgypgn67r+Gl2+PFUBLVHt6Q3xSVcAKF2czs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVaRY6b4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVaRY6b4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E75C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785366033;
	bh=2pJhzm6EHC4221OZAMv0aAVF8wHsjce98tWsyYBUCPo=;
	h=To:Subject:From:Date:From;
	b=KVaRY6b4wsOmHrKzA+9FI4w8jSGak9r8/M8e0OwAUezVqym01k20fQT3tySI8TTry
	 LiqtfTQSG8q4z6uNx9hCot4Bh0PD9t1MjCECUZWGaLLi2+2MQd4cLUhiOYdUgTHOfR
	 BvzHbhIVveMKG2H5VzSPyQUrhmCDgmIA9JqlXwT0fqtlR9jLC84QLH0XsjtOB0Sr4a
	 bCns3fCGsnrutzQAt9Z/kodxz+kUYVvZ1VfwLwAKaoOh0E3fizkstDpb6RHpsb9f0t
	 jcH0cktaUJrwNUvWWxHA8FUu/JAXQM6uKdcVhVFw+EcSe+F40VqEhzhyj6ZdSUSDCP
	 PmMC/TdfbklWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B031BC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536603371.10195.3428039515613808558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4a8e24886c9028609eedae389119fa67f47e762aa10ae2bdea11d4b77e64f7
Date: Wed, 29 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785366033
