Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3543D72622
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777619254; cv=none; b=r4SI770y0eDzzzQXt4jwzh/BWx8re6I6kcbUsxkT0uPVa+tKqRxOKFTlMGUYWFoy+Ffl/B/OYyWUhPPdzZSRR6pbhxu/umwCFyszqt73Eh53eCOYFS78YmZ5kv2E8M4OiQQlcQrar6bXw92xIIe7JTwFlatbRBZr84xxsNvTIbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777619254; c=relaxed/simple;
	bh=E6Qn2trjpBZtlT03pwSzueTdOrmtnoWLAqjxPFlo3+w=;
	h=To:Subject:From:Message-Id:Date; b=hP1EsPda7kTxYQW+hlXQNbBdBiojLYusDKAUJlwgTP9+7dlxjFW6i239AD1FUP6YDRVwOKZney6j0LFkmCPWrm/MjUqNTqg9kDD4binBVbvOAGCMYZQur8NlgP3dJYFNTrbIwZqEU4LGHWWfgEZXCfDpmp6qTaENbm1pZ+gDNTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBU8HFwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBU8HFwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FE2C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777619253;
	bh=E6Qn2trjpBZtlT03pwSzueTdOrmtnoWLAqjxPFlo3+w=;
	h=To:Subject:From:Date:From;
	b=NBU8HFwVF3AskBUeL+qwUHxvmgrd5FmLDK4OrPFzeTckKxqhuPS3sSozgY1NAgGDR
	 0TGaldhjTwRE8Q/eqUgMLYYRbO2Xj+nY8ow9Lqf2LuAsTUhg9vbeV6/+9MmAQiCyHO
	 UKxjSfFe4wS+hyjMTxMu6zV+zfACntREV7uekO5OpqgdNIrVmCSC9nG1cZFOGIGJPA
	 33OOCmIXnaoY+dZM8agjLYfv17g+BazeGfUKG1CrUlBNjP9bv7wncMATHeckfc5tbM
	 oKaTe9AGvs+4sAlMepSqlgvNncyMKsZatO17vV6hdlC+maywUKpPFWgPfznHfjW8f7
	 L8gc0SH+21Xmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE47FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761925371.18953.9527751573264961619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db326bdbe49da938481edb548136904088b477a6098bf68558e753ac14e4738
Date: Fri, 01 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777619253
