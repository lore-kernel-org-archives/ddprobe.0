Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D54D38C2BE
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772579094; cv=none; b=boTgyYxkjPUqYd5UIz8TLnaCIuIwU1Yoea1B4aaG4OCuGSnUZQm+DvzEmGPfUUDwrTN3DwdKi6WSiSpeJaE2Objo8EMB7k4WojwB4Z6NMe5sf2G9tZ1y0lw6ww+5hBjlECVaB2NWJwc4JeUypH7OP3xTERNGOf8VdN2CkayWSDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772579094; c=relaxed/simple;
	bh=mz0LgDBTOiHUPFmavg69GyGl+7qclaXaj17XYZbMY8E=;
	h=To:Subject:From:Message-Id:Date; b=PxXV8nVkNxJqFROPj0DZClK8cQFT60H6zknyECbD9FLjLqC5558AEmNl8a+Va2VTMNJ32TMT/jOKgs7a5d//r2lIHCSYfENwQbNqVrSuEzZnKocRg5vjlX+nC9Reo4nJfHFBlAH854CNdPVAWSYsBrKAhavdNFikQ8KJ+y52m8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+Q+zbmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+Q+zbmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9DEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772579093;
	bh=mz0LgDBTOiHUPFmavg69GyGl+7qclaXaj17XYZbMY8E=;
	h=To:Subject:From:Date:From;
	b=J+Q+zbmJEZ4amLpOfGSMgX/0aFXVxivsG7r4zgMGz5yyLEfNGITu88q3i8cL60JNt
	 SmVz1Im7vjHepvsBYDtFYAd87DuzzVpzKAmmpovxNHOvulhHmUGItVNQaAHE9k6PiT
	 l7qDAIiEd5kvlIRG7Dd7bQiShRnHl/zflJ82ObJJ+RTv9c8JgK7HJwHP14tNLOhCD2
	 +YISlAdvM9cxdfFF/P2PCZSm9OA0QQFAuPshnXQLBDobDGjC/OBtw5rcQbaOtuxL8Y
	 0W03IqJpSY6pvEF3I4dRq+gkG+XynL0Ns7cR5sUsACQLwLajNvww7HpWjs5UgaXvUa
	 pTxYoOWge1FAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973DBEDEBFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257909361.5638.7332575728287618516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fb8b663679b35690915e5e57c4e42cb6808f6db0234803d5dfd0daeb46ea65
Date: Tue, 03 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772579093
