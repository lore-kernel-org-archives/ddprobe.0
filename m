Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A7E74C14
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788397834; cv=none; b=hQyUibJsC/Pbc5707eRCMdRGfOFOgQ4nWuzd1wFtO8+FcCFbCDN/mTuo+52ax5s2AzBZrQKYJ7WqCTqsXR08d0GZGmFxkeLPw/BdWKdFWQDzF02VXN1TInfbMTsBVItASh58nCWiAK8okWOFkEehhXH1lc3dHjoA0cduexzoJ58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788397834; c=relaxed/simple;
	bh=iT7OubKVq8Gqg1qz5lqnkAmSUU1tB1ZPvonx2j/GjGI=;
	h=To:Subject:From:Message-Id:Date; b=VMrhJZ7Z2OQE+A4HqIdSiHGiRA25IRoBUbbkHqjY+TBDTpEXi8LQHLHGi61t9CMyicmV+Nw3MsBGqxiBEsdIR3ll6efS+xZJDxIUhHpije10HLNYsAzeCXUYDvMqltVFXsTEivvrfUFGLklXI17J/j5RQ9KzPODQpVEB5XUy1BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGHuN8Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGHuN8Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D259CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788397833;
	bh=iT7OubKVq8Gqg1qz5lqnkAmSUU1tB1ZPvonx2j/GjGI=;
	h=To:Subject:From:Date:From;
	b=rGHuN8DslyM3FLHmkuBHaswbPKwkcdors+P4vVB5WWibRixipKMxbNCW7SSnCXJDH
	 TywzKTmhc8gyAeZTfBeGX0yZfrJY90f4CNoLI04v66IWzeXDzz3KBmEzTOnyBj/vMm
	 57E2065eGZpEtRLG1TJEWkz41tQmmStPClR2krYHMzBQIK4cmNxPMPlnX2VIytmh/a
	 PFGamcKejrbXeASpNPxpQXfuKe6oqKgNN97TOjwyqiXnZehjPhWzDKJMQvLJkQtMoO
	 CPHowjlwfi2hN1vAvBHWmQVIWJBCntD1X3p+lyv2qka52VqEnZrG7HfQ8urbO3uxuJ
	 BGtxSPfnW/wNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF8DC61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839783368.19681.2458955355374194514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1234dfcb89792b559627517a9af950d4e496d5f3b08df1da370924de66b52f16
Date: Thu, 03 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788397833
