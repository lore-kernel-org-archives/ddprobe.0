Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C1E2AE7C
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747588194; cv=none; b=pMd1d9JJl2JeXKXAI7U6fAtBEOSuvWoYHXgZte5pNV7QGdK1L1dQ7eqjsSxmHcYyrmPW9mpqzlbRTrIE0dDizT8zzNGB/Zb3Kbmg/GA9fvQ9oIadZCGPSCmRLSBdtTOk4ZGjM/VR5QbgHV6BmAkzmoy0x/U7TKdMNr+yyZgp1LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747588194; c=relaxed/simple;
	bh=MoAIhTlWPzWOG0NFVnbmmmFRNCK//pUjmGbiNORKkiM=;
	h=To:Subject:From:Message-Id:Date; b=YDQyBrzwtUSE3x94WcVoWlK6BcUv1OtCPj1E6IMi64aSfN7+R3S8pwCwcF3zMFwJ6QgQTTardsRjvZ6Ygb+xfBc/OVmzDh707UnyWmivtQiHNGm/1iRnTtrzhmO7+Z7NEUWgvzSNRUuicYZuM1Y6CajjvxAboX3HVSE6aWE+3Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8hJhM5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8hJhM5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A449BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747588193;
	bh=MoAIhTlWPzWOG0NFVnbmmmFRNCK//pUjmGbiNORKkiM=;
	h=To:Subject:From:Date:From;
	b=r8hJhM5NZg/qo10zwjvDHAst78i92jIC/haTdexSmv/LjbIwHgAdPesNMHO82TvgT
	 kboxfx8e88Z/EmGkwLHzG3qPe7B07bCHw5i6hw5Vi6z+lyWDnRDhCMOz4vwIZVqaHy
	 pBQX1A03K66JKLyC/trwx4UUsutISki6PEX8xmqY/uBeyWAgu32xwxrvNo+MP9H2CI
	 7BbaR1EyrMUIGvazXU4HjQzGDAdl5UmtBT6io/fAWE0vEukBeiRWlDE7e2fY5cadj5
	 akjRRIo/iHp91bz3LGXfLLh1WQ0HtausJIB44xIzr7v1u5LpuUvdmXe8OOe7kLY9VD
	 8+1oXNlw3H5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A65C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758819357.19659.3946284576332703561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3702b56594ab03c46d4826794ddb4c82aae3c52a95aa808ddcb2f46763a1733
Date: Sun, 18 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747588193
