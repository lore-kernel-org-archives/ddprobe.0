Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D60411A0C
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788471034; cv=none; b=VDuKrsY0B5W0jSu2Vf1SXrpRo/Tq2WXDgWbmM/GASQ9k9x9xTXtZrwf8ErWorXGL+h3ALMosbdBRKG9ErTgDAlugDVdLvvpFnwDERmp+CTRtyJdBokx9EfB2abZSGsgNWjy58bAWAE5fX+IkWzymcewSvbBC+VNnqoJLldGDQto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788471034; c=relaxed/simple;
	bh=h8vKYdeiQDcxGxI75WKXRi6KzMPw8MnWkJiCixGMeqw=;
	h=To:Subject:From:Message-Id:Date; b=JdwBNGolEDuZfCpApCkFbh5I/Qp4wqn2eGzlIINBvfF8P6fK23CQbnz3pB8xy3cmGNP3vz2D54fQotmEMwvHBJ1RB3chZc0qoDeiN8TJZOmEmFw9UyPPOkAPby4OMt7Lunf9NtEm4hKceHCWzpq5K3P9Facj8OcvFEnbdWYPZKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK/xofHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK/xofHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13AEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788471033;
	bh=h8vKYdeiQDcxGxI75WKXRi6KzMPw8MnWkJiCixGMeqw=;
	h=To:Subject:From:Date:From;
	b=eK/xofHUoXOFHcoRZKKSByu4GVlRfX1eNFxRTObzh8IH8FprV5vng/F+c5NZdrNJR
	 Zk7gMV0vgqIliVlDvIJCzrwKH47eZUfJg6R+LT3tJ32wqXkVP2XUIPJtXKNGqJcBha
	 7tPqdmNOGkbmY9X7xA7vazNUSq4aBrQKDQp7VD5dNeUOPXebj89brjm327yX4qSaz/
	 yJUnsD3Mf6ea2CenejXOC6SeMbv0x7CLiqvd41DVMVEyZ9BEf6EkECozGsDIcDz/ci
	 DynGdNyOeEkPQhJb7oh7R5BNCbgTh54Bdm9PLocLqInYxI9x1UvpR/n0k85uhwV+3n
	 hsMtNlAiC1Qfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB7C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847103369.29191.6548453390604054074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b05058c7dbe99d11b44a1feb0284f133edfdbf4248cb43846c6a6fca195d8af
Date: Thu, 03 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788471033
