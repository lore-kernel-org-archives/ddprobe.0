Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228142500BB
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732484754; cv=none; b=aEp8Fhc+y3UyRBMFIH/AlBMWz2LU3YO1hXbubhmmMRvyiuGwqv3TlKPI3HxLimr/AoPyoUmgdzsZXlbw/3y7tBC3iguWyIW958mGzj63aHo2rX/HQ9dvBofaAosGXJsdCvXb+SOhYWpKXyl3R7uoOx12D4UB18mFkNIrXcJAxs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732484754; c=relaxed/simple;
	bh=2lGXDWPNHCQeDZBNZ5PfBh44EJDw/DucimUcXHj3hwQ=;
	h=To:Subject:From:Message-Id:Date; b=QDZRoVe+D29UjDwkxnnw3HXrtstZhWe3D7XvfjmIBPj6IVeY4u9GPxcugu5NiQAPYDtUysV3AhwDEQvVRF199Y01VrXM+Ky2Sqz/MyLue9K7yH8SH/Zknjc45xOjI0ozanejnQcL45GwsO/xu7KrGsSTCqre3Y+Nhurr25GETDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYo4vzU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYo4vzU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27DBC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732484753;
	bh=2lGXDWPNHCQeDZBNZ5PfBh44EJDw/DucimUcXHj3hwQ=;
	h=To:Subject:From:Date:From;
	b=aYo4vzU+T6r3j4KIlr7EeQDfflVSCHfw4T4bPWGSbJiVnN22W8V7TlwXTygxzuO+N
	 +Zucjunoj3GR2JB+DAS2thsPRY7m2ZZWrTxkDJIkGBYwQo04S42xbejtwQVYSe1ryk
	 Ntyku+TD3X+I+MvwH1/lUAd2/DYuO/LHp9e4dcdJAYcVHwXAsMDil62JsVNRZ3lr+C
	 F+WNafimTj8HRagSJ1JRSDL3g1Im0X92sRqffhsPWYdMNsMcMLea/9sPCvLbAxdFkn
	 c7FbDpnRa1p7qLDimwGWpbfPa/g3opswQeNCQcopSMDRy+YVd5SCvyV63rVfFTxigb
	 lqsNb3CHrXYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAAAD75E5D
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173248475360.21230.2322893154794755705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46184a32fb260b889b11c8d42b1e34ed9f877e862fb2ce43fb5fc1bd9619141
Date: Sun, 24 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732484753
