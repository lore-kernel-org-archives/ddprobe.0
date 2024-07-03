Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4304A174EFC
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720025123; cv=none; b=raM+UBHq6GQDFk2bHhREc0jVzitfGeu4zwiQ2HrFupddL9HCdSvbluLaa5xyAJVWkPhJPlZh9i97GRN0myjbnrBOsONrr1j1jbl9+VqJ2xFX63uOKGkK6YEjZ5BmQiNi2QCvxa9IdMsrfsA83TTkK3vaaVUOuMdA7dfjc96pMSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720025123; c=relaxed/simple;
	bh=DQ32ftYVSN7q3S8I0ZBXGoe8vdhGWO2rb+BWdXBllF0=;
	h=To:Subject:From:Message-Id:Date; b=mmkzW/ADPMNX+lAklSoIA8bxskXMqkkhnyrLMf0WGdDWdNPFMnead8HqidEuF1Ugp8gd0/mFDl8BmdWAqc8wURBOV2lVZ7wOHfRcgxpt/uNx8RBDuVvd8AD3Qkbr6FroR/2bSV+zJs8wGd8MVn/sJrbnrmLZIdXtJXBaF7XFOnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFIa4NR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFIa4NR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DE2C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720025122;
	bh=DQ32ftYVSN7q3S8I0ZBXGoe8vdhGWO2rb+BWdXBllF0=;
	h=To:Subject:From:Date:From;
	b=HFIa4NR07kN48zrQjypxsDPwcJBQzGbvdF7U+7pc3R0S4zfx758fydWcEc9yOuycQ
	 oetdGjdNho9+CNiBzgArI7AoAL2itdS4I4w96jDxVxAMOsx+pizD3gw39DwkIChDMQ
	 pW6QquW5Z2JorhGqhMhSSfOeE3wCXNmIzHhUhB+3SKKPkzs1XnYwupiIGPSnW+T6v2
	 eaDhiKizQX4iLgMf0ZOE7rLXdrzZSq5V5Fg4cTykYdBrVWia0MJjyswqZduSXzHdyi
	 NyFYCeZWSGmRr5UGIvA/GrOQnpmff7WekzwP2RfALSMX2aHg6eA1wZcz0xeZRKDJsE
	 UFgD+ulU0m8Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF013C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002512277.32766.7499696789253908507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474a54b88cecc90864065903f21ed5ab809318296fef3e94535a3b35e62ccd37
Date: Wed, 03 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720025122
