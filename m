Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDBE4204E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760676594; cv=none; b=mtT46XlDDc9bjgs2pwA7XYUGwVyFwkg8gaeVUbHxkyrZ1YsZ/jxS2spMZr+OR/ngoTLbL5mrwPyDGoHQDsxoxYTpD4IhLm9e2eR44Q6bB3RY71FALmXw89dzoRuX0QfpYULkfoCEmPqjb3Sb05x76v5waC6gJ9aEtnMfCEr2IZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760676594; c=relaxed/simple;
	bh=FPVsaL6dko0RsKs88NLBt1pJ/h1EK5qmDsLIE8nNACk=;
	h=To:Subject:From:Message-Id:Date; b=gvnvykE4Te+M+H/VJwsOOPmAr4XZIjroo2FdahccMyYucs04/NkRyY/AvtpaI8ZS+x5iuMkKPnOcW+SnjvIFqVMqk201wlIY7oyHM48V2oqLDERFiTyIYJfY5fho5MpSRhXp7gAzYyAhUFfQTdoBhOvb9NjWndem2F7vNhakDoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNVFNjKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNVFNjKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760676593;
	bh=FPVsaL6dko0RsKs88NLBt1pJ/h1EK5qmDsLIE8nNACk=;
	h=To:Subject:From:Date:From;
	b=gNVFNjKbgtZUIk4DcnVp8DBgQ5b1yrKD+1nf9WJVHzlEn8QaOe56soZP5xJCNFajQ
	 sGYQ1fsmfBgCCm/J6UNSmLjDcrqKF8e9Y8tWqVpFVueIczfVl+3p3qhV2zQmjLrOk7
	 sIyoWpP/uyJV/UOjty9rPTgcn78JvPzK87J5OCKqjaLc8rOlIDPSWpfsAJGiFDU+Pn
	 sDwWVOvT5MsfWUcHc3uo1q+jOHqhPfMozAKjF/VR2+r6e9hhej9CkDH+eoBKbzSDkj
	 f5zwgmP8LySWd6URusdcdDq912iBYwNyo1eccCFxS1/NVhTMMRw9j7xKPvX7cc4A3B
	 rs2S2uuKsx5zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96ECCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067659357.32006.10644166683501797997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3baf4846d1f57dc35c1f6cf32f67f56da44d68e4880d7e4c2ff947d9735bb61
Date: Fri, 17 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760676593
