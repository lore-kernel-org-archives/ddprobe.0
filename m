Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27776282F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726023954; cv=none; b=R0wBTOhfEeYISRgo0E7Mbo4M3THlqlkwWiKaW+VP4mP1lA6Wy6TEYmrTd/enkTaTN9Gexu6Jr4jmrWtXS2rhEf1vSyJq+t1JsZljGqZ5RKiQ3gZk6sWuKor+fj4iNS7hsDsR3/SyaJWvIYHvgtUmXUfYA4zv0+PTaFSLla7AS9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726023954; c=relaxed/simple;
	bh=QZPaWlHQNBW9cHKIqKGrVeBknB0kj3KyUTI9HhNHC9g=;
	h=To:Subject:From:Message-Id:Date; b=NDk3qZvHlASXYvthvUBLMgI8zNoJR/KTzYvzyEYSAsVWI91roOSPdR/2VT3RXLbSiHujUgTeCPtGwIPktqKio7sINkTYDdfY52G6pYZvJFfJKS+GTmEm2zldS+ojPo2bGkjRpjjYoRXfCxmOP0rxWp/kX/Smwis63kOZUIswfI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dac0FKzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dac0FKzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE32EC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726023953;
	bh=QZPaWlHQNBW9cHKIqKGrVeBknB0kj3KyUTI9HhNHC9g=;
	h=To:Subject:From:Date:From;
	b=Dac0FKzfLxXebw9aY0uxif58lmXZGFWTZGB16ssdECNZ7Ds040pdCqZ3NIlGLdW7r
	 j/uj52+b6TzAqqGZPFCnVsAiOtcToirVAVNvcCxRBOPr6LJQlFhdEXeaKHT5sPmnSX
	 T+8BECclKiFCo8oQ5N97kaqgFvnuv8e8Vdg4vwKIBYVc13zfek87LkOjV5E91fQlK5
	 LTor8cXRROQrhxPgwB50bpv+C2RH9e9funOkhohABMkMBo5rvB1B/sxvULvKqRoR27
	 3vF++YVLRaEFwAW4K2WH+br+XZvCR25hjXkxtUMWXnyJI70748ozJBBiNHt77g0z6P
	 f6AT6rqEQucsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB1FEE0202
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602395358.25977.11411807699699876363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c44a76a684277d1d15fb796ee152133f9a390bf0bab07502d95446a46aad7a6c
Date: Wed, 11 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726023953
