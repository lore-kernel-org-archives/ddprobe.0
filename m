Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C452BEC21
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755110394; cv=none; b=J6KTy2awx3FnJvuq2DZ/i5QDR/M3Z2/ISofNYryWuN0sVBnEKf++3mDsEZPVmgXkH2lLjuCwxpLfT0Zr5wnjjShHxWTXRa29RHad6n1WoGf2thDbCd3xBUPpjOdy6+Cg3NyvQajzssoCEIig+ecJIYDVopehLI7jGrVr+46lSdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755110394; c=relaxed/simple;
	bh=uBHVc2sLTLdAIfIPGSOxZv5gCEhY5rQ6yHmzjRROEKY=;
	h=To:Subject:From:Message-Id:Date; b=Mvex0N8q8hDg92JXW71ngNsuZAzYUo4Q0BudxRpTYPZpCPL/Ao/A1REoFmp5K03lW/CRnRiLgud2efJ34QqtfCMgxK5u8zUoNleMMxFqbJ4/4fdUEl/xciHGGp8eAC+K3AeNwqJ+Eong1C8ybcs2pKbefXIbM0QMMFflZyj+DVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTTZwkma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTTZwkma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755110393;
	bh=uBHVc2sLTLdAIfIPGSOxZv5gCEhY5rQ6yHmzjRROEKY=;
	h=To:Subject:From:Date:From;
	b=BTTZwkmaU5vTSIfidfyMsNee2KJKW5es/KbwXiXTUr2jo6KgNxSkfSUEJzg2DC8LC
	 6afUq4eGqMrQknbd2L/7Nx5zPKgemLSTWS2MHBnpGmyXVPJZh7nXbaLWpNxbmip8h4
	 611u5/qBkkbx3EGpRIwbDtwPbVxnkQ95SMSd4IHi1P4l7L033ABmLLwhw1T/u97aIZ
	 BT2NTKI+hIhABam/q2W8sPrOpJtpAjz9amak4L9wohAmGh+yu7ebvH31uG9SZJiLa3
	 e+pT8p4OZO+xCnHgI196K7SDVmk704h1IDzCtMC4Azgtys77R1JXo0q0Muzvca5WYM
	 xKYRW8vY+toZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F456CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511039357.32514.3308639176113102711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e55036b2c5941fc6e086de51fc906b06cfa32d13f53f9082cc0cbaab35a43af
Date: Wed, 13 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755110393
