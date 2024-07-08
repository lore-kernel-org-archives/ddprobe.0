Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE041D69E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720457183; cv=none; b=l2+E1uqUgGuBbacPPJymGWaDBixgYEPTzKsH8DzKMdqPkI3NO8lZ92Ep6vpbrKTmwDHcrMn3Nmboqiza1wdchu4lAos31U8JT1plJilC48AYPRZyMY4mZXWBpGOAAgWFO7828W2Y/89bSWScFYtgW8Ey18ykGvnxP05lx8yOvjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720457183; c=relaxed/simple;
	bh=NiFaJ66nMr2obF0QGwMAST+GSKsl56sh4FW1x8CKjE4=;
	h=To:Subject:From:Message-Id:Date; b=MsyRPu2VzYxtYIArIL3ithXOB34gNNk0SY/H8kSB1l99maSEJ2OgX80HQ1cO5+Fo+biRoxXX0KDb6bIfzt7axzWlbY0HSsVAyekxkNAUHnD1WATnj//KTOlMmtmKFCWtEZ1E8gqmz/ysEcFCzh8OQyhooaK+5n889uhnlzKULTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gft9Lyn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gft9Lyn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D847AC4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720457182;
	bh=NiFaJ66nMr2obF0QGwMAST+GSKsl56sh4FW1x8CKjE4=;
	h=To:Subject:From:Date:From;
	b=gft9Lyn/C7c5J/K30cgrtqMyN0uZE8LZs/dHylzgjYqvho9AQBUyHivLUCxN0O0uV
	 C8pJx+DYPH+XNKitHiPQg7TQRJ6HG+7WksyE4Nppq7vxaCvuB3szM2LCiLqZThcsAL
	 Qmql5cTZLEC8+aBa0zrzuH0qXEqMs4oucpq+rI3IdQWm8lRLlNVtd89ygLj2BVxB39
	 BCPJEnmWZVd9mPeDw7fDvqicPTX/DdY7RM7SynHHW/ZHpbHzmCMe0mi9SdZAZ9e5xF
	 4IEwdQeeT2oBrAPuWTGVnOF+0MpaTjuLvZZx0I2RwMYNHl6HEjksO9SVZz7o5bQ3wE
	 AvMu5MED4SQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40EAC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 16:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045718276.18829.7101142204547498793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ee7d0dab3ebd1d2dd6bd93a1beb3402560dc76d2bee231bc5f835398115a1e
Date: Mon, 08 Jul 2024 16:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720457182
