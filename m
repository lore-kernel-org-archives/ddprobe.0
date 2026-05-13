Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217331F0E34
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778711434; cv=none; b=ducr+4Myb/RoHI/lXfNiU+K1IH30DHR6jstgqRIU2KX5YWqwIdqGzYY+TeiqrMqnaKr5HpAUtQ+HcsXo5rIKVHjkuyG7sh6PH2hItFDDvQS7ZS/DAcd59ATB2nRmgyncvU+CSOhQZlRMABwh4mtyrdA4NIeY/0XCi33mpdHLtzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778711434; c=relaxed/simple;
	bh=I69L91+n5ubhlgrtBU1T5RC2nBbe6S61Syefhxcs2Tg=;
	h=To:Subject:From:Message-Id:Date; b=YxmalbWwd5hxOVJGMu8CAZFoRKYtsJX1UbGe9+UYRrJPhxpEcVGxyYtvu/DC2dRPuuEGACie+9yh/qvOtSs4ix6meMo6yELYaV0gA1sc5gdegJTj5DfvPMSeUJdG41fmvZhtQEiOXb5gbT50PY/689TcZrKrRdt6iLBcngO0fl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A42+et3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A42+et3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5284C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778711433;
	bh=I69L91+n5ubhlgrtBU1T5RC2nBbe6S61Syefhxcs2Tg=;
	h=To:Subject:From:Date:From;
	b=A42+et3dR+/Gr6ci7tQYNthsAp1RoEH+El32vT9bOBNxURg5o2ECflVLE4skFA57L
	 snaa+YJnBmpnyPHshzvDIwkHhp3LvCMdmdaF/LWdoS8xoepmG2HT7v8vVTaT3hTROZ
	 IfRJzH1u/v2EE78x7dXuEtoL4+s8OaJYSWDzq82nEJO2se1YvRiKNwhE5xMgHnKMUb
	 f5fYwM/kzekSwbJHqGgR6vJ1/OG99bZKd/XtfgjOBdmeEDjtZj6LK5xHJt8/tpOFQM
	 JGDvomf/cbblAbMO8X62+kDfv4KrT75dthFPu1yUPpo2teTGVQGJeqNG8a+gx9d7Yl
	 U0izMctQgjhow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B525BCD4F25
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871143373.32168.4521816137145348096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f7652b0fc4b431ffac5227537006696af061e5318866fd6da92f56e8d35502
Date: Wed, 13 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778711433
