Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320B5298CA6
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770879894; cv=none; b=aE38Eb1TrmHaE+tUGCGTnu+M06G8vJq1pzrWg/YVjgM74PTtFoZTraAFSSP7twVVRmrpaCWhXA5bKRozLZoZVwcncsIv/clBHxVKJ4ER5GaI9bgNOhVYhZY3LOoy7Cdg7aNcg2uxxmXpYt2cIz850DI667SYaccwelaamRgl8As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770879894; c=relaxed/simple;
	bh=YGwm+dpbD+IU57ZSsQTF+HrJW6Z23YqoIXNmuF4GPpM=;
	h=To:Subject:From:Message-Id:Date; b=CoK4c/T6w9ZFum+pBHs8jC30b6JCOPnIU4P4w3zhxcOHdbrW+xplN2ytIUpGh4Mvm5d8b1Ktzy5koS1N7MSFUI/448fmulgG3JUAi1SFmbWKZT7yNO2pH51CzqEaCnu5M6DaqQmvT+4Px+OsxLuDZJPUuw9krCASxjuZTqlZmOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZcw4+9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZcw4+9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB27EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770879893;
	bh=YGwm+dpbD+IU57ZSsQTF+HrJW6Z23YqoIXNmuF4GPpM=;
	h=To:Subject:From:Date:From;
	b=DZcw4+9/E+2Pxg6g+0dt9HYCM6jkZpu9uzoXxNSKsMDd1CQ3IaAV26jYua6BQXPv/
	 mS4+tY7uawFXJDAf9BGI2YSzsRhGa2mLR7NRErRLw6lBf+SM7ePXpsxaOKlwaZsHqI
	 4KqdfKD6FoTt2MHQE5Evas2xP7bFbM2edEHrlm71Zoo8iiAfDu3BWQ7x3TBQBcCdff
	 VakGVYNvg8BQf7GeCt2auq+6zFSFDX8kmZSNAFSIjlEyOypwOEo8TeJidmPv/KQpf/
	 mSaWKmQ3267ebxINsrG9NaK5LhaMcvRUDOM/K3/6Vcu84txTRDLRCMKwFPSYW6qWva
	 92U+KEveORodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41C0EDF04B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087989365.3359.5790212290527408261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81b1be2d346eae0503b9d0ba37764d79d7d60de1f714f6cc8c238138e4291aa
Date: Thu, 12 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770879893
