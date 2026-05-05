Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201653164AA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777975654; cv=none; b=nkSj0z7WVsGb/GjRegMxp9EXOEW1ojl1POzqIauKupng2gzNnfDqljH3e7wjU3OmhyHY7MlJZLlSFHcibN1aYVNkiwigDrYT2HW5tBn44VHEvjRddooHw5R7N0SPZbspklnTgK4LpYR5616JeHOldx2tNzIp1Hl2rfQ42NJwi5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777975654; c=relaxed/simple;
	bh=z3u5LDuGGM3TuKcP/+npP6GMZwVkbCdhASaIfxEy38g=;
	h=To:Subject:From:Message-Id:Date; b=eH0gCUt96wqWQtuY/0UpV6RofT6jdH9dTTr5i2M9RQiQokc3zVwLVTXzGOqBLeex7Au67mHWEJqHQF0zK5wAEMsdR1RpgfYRJtfNaJeQsNBwrC9ZMhuY3ScPqBEoixbKGEoOAYWI1jMlZV9u6bymVnvZFr1+5a2BinISQaRPOt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJnZWUtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJnZWUtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD521C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777975653;
	bh=z3u5LDuGGM3TuKcP/+npP6GMZwVkbCdhASaIfxEy38g=;
	h=To:Subject:From:Date:From;
	b=kJnZWUtlldytvCO3sDObL1ggwYGaLjrRD5AaTIr4tZg3lVem14g53EMQSeQP45qn9
	 Z4/za8co+ILX8Y0AY2C6Q2giJvO2trDVwBT92DzjpxdtXcwNMVvEtJWP2OBnvKM+so
	 0W/lLq9CO44GqDH5uj1xQ3cxlFeohicJnDEk9PaCunuCfgPU1VqNAy6kgbmFYymHXP
	 hWqnskTpon0cFVbVqI5Gv/EEgomdBFabER0Zsvm3MjnK8Yy5gqHP8iDhARxnNzCUob
	 3oNApC4/DXTgMSvSw7W+UrpZkn+Q3ZfF15CC8NWj44DwcHi52PicckzTPkOfSxiXKh
	 55IqFxuzPxleg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE224CD3436
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797565370.9813.2745304618359746878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf23b1338a943998a410ef6b5187aca1f6723ef34e2434fc9bebb5b82bfd720e
Date: Tue, 05 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777975653
