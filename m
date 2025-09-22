Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C5114A62B
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758545994; cv=none; b=buEEanXTTxGQgEZ2cVphn2I0ABV44VonPCgh1OpK19wyhaq9dh2zgbvnyv/Rd+X3TG4ngHU82jEIC+D1zTuZAa4CHzyNT4e6DT0VaUEXrnQGVe0mMRF288TJGo+9s9cjYJvQ5f8Kwt9mmfmd7Koix+YVusCbqL2eQ4NZi5PoNpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758545994; c=relaxed/simple;
	bh=6tcJqMcok+3zL5jq9cwQ+VbfD7sNrF4Y2UTuMsm6Iew=;
	h=To:Subject:From:Message-Id:Date; b=GIN1lTMVcVqc5Y1EAqmazu2jik6esxl41eaYVWQSeFtT6TQk0opXrYPCI+MprRhDA1XCX26E+uqaYvCcb2kLYjN5bdQQoNk1g/g8V2p8KB6dKGruCPhNamtRI4yD29Fxi92VdvxwsCFteR6G6hL42oTRdqWk+BauV21ghHd36/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BguNnYxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BguNnYxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1467C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758545993;
	bh=6tcJqMcok+3zL5jq9cwQ+VbfD7sNrF4Y2UTuMsm6Iew=;
	h=To:Subject:From:Date:From;
	b=BguNnYxo7vNZSjCjwbxBITmkk9xgPOommLSdBQoT7yWpPdU++t50o4Ew+Fcz8mzcT
	 DRNVgEY8ufFCMlCKjJ/72aJnkaNPIYgLXOyL8ZqyydsZIjNsyIiYaoX27XfMQHL3Dl
	 S99F6zVvtqPvZZ1v9ABGgGCDLvFMXwvmJEemwX3dGJGscISYerwyaEfynmRp5H/aDp
	 PDSQ5u6biBnMN7GfBKm27tWnnlOlLHyCuAbU04BzQDfYQp+2UgtDv+OUYNH/zmiLEt
	 KgYCUn0qkx9Q8MnDn6S7Zach7HydySedgvMiKBAhRpK+lJoiAnCKEBwildzbFCIsIi
	 zNR02QBqgPnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB47CAC5AA
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854599357.26701.17751598400156026631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e03df9fe49695d47ef81990df6d0234ca27528a42dc67a59a456a076c84014
Date: Mon, 22 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758545993
