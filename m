Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4782C126C02
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784591314; cv=none; b=k1qEuZy0M2fyswKL2Qi1PhNkJz6mJBih0JOl3yX/YbqOZ0Upp+f+kz/n+F9AUy+oI0oPXGwN1G03+vAYUHpd0vFfsNEhhfgEV2o5cf6uRhL4nGHstNO//66oc2dKpLkV8+6aJCHLxHTub9mDKcmkpdD1WJgMnUbSkuJRcFbD7gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784591314; c=relaxed/simple;
	bh=hsGsT2KeHiSAFigyo6ojGZdEG95TKAJiS/AExZERMW4=;
	h=To:Subject:From:Message-Id:Date; b=byaZlog1AOkS2dGFYPk9lPKI/jaZ/USfiGlWe6B4E2Lh45DusmfxVvF4WLQPLJOzTj7SjpC8TliuCEtuEYOXFrKHgv9Mfv1r/HEdnMfwsHmYOWBJao2/t2aZqoxYrYvAYY7UuZmVvJAYz/h4lxyrzVNlSG10H2iWU15JY218yeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZTHs/dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZTHs/dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDB1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784591313;
	bh=hsGsT2KeHiSAFigyo6ojGZdEG95TKAJiS/AExZERMW4=;
	h=To:Subject:From:Date:From;
	b=mZTHs/dN16jZm+qP2Z1vNPyXCMVyqLUNMCL1YsYIyC38cjKK2OO3K7vVAQUXGjbYx
	 Y2jK8TYeeDIoOO9ThKsjlcZqh3Jrjhl7A3Lvf/Okc2BBKjgC0hFs8t/c2wuAgymO7W
	 0CBRF9NSmrsbY0WihhLv/uFNfHdOm8GV3TZ92yfYO7xTCkkR2g+4FqeWes+PJq5CTl
	 NXq7FMMkcOIXviK8vsAhoQmhnNN0mxtnIrzeTFOWE5tmRnfrwttZiuQnEMv8ioAehx
	 J7AnBVovleNjV0tL37VyYGmN9nZqI34Pl1maMSsq3v26U0JxIIgGb1uwa8EHKIeaeB
	 JKbE6q16kyccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29E7C44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459131372.8380.8412401922948602069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15490c9416b64af9985ee5447b6f6b668f9388c6b72afade938b37b96a0f4fb
Date: Mon, 20 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784591313
