Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE2213D539
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764913973; cv=none; b=MDgy7u8ANchTXzbkjs0+8ms7t4URxFtQ70NqFEFq52YdMeErtVB4WzsS7QYYbK7m2RUvwHsPxaeskSV5JOFk1UOMZVZxN2M2EcT/BxLR2cMiy5wFO6n2PrYyaD8R1qQNiua00SFwHmBQnmp9sQe1+v3OxOAhRpY0fXgrX3wy/oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764913973; c=relaxed/simple;
	bh=tfI3qedI9oCidcymQZ6vvrEIXoohSgCXqIFOb0a+unw=;
	h=To:Subject:From:Message-Id:Date; b=Sf1ph9lGtF4QaWTsoXQyXQC6OauMKDFABiDynJmJLpqhr5LFnXqmWktB2JO0IRsuKIZ7Kxvpt8C5t1JrDE/vTdcTYJDDm2paX7EA8WYRGJluVZrGBYNbeDEMJPLOyA+peQw7ax0xOfKYR0M+xrPl5KPOcJs42CZ75g7sK+PyFQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPjLVKib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPjLVKib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30AAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764913973;
	bh=tfI3qedI9oCidcymQZ6vvrEIXoohSgCXqIFOb0a+unw=;
	h=To:Subject:From:Date:From;
	b=SPjLVKibJbG3i2xN7cg5AU047RC9+10zQKwMuhvmtkChGAHl/44g3E6GgnN+X1bhT
	 KUTy03g4N/tiy5zksr01fkgcGGkDIMS2flQmFvvMoCoKGbbxNC9RAhx4bU34M6jrKQ
	 Lkm2NfaZpUihA4gYukXvXxByB8rWw2hrvJqglwEGhC5bt44xhFTgvlZu/u6X8Oi90i
	 5M1kjOFWcOoAFYhXCTNiDj95k53esaVl78S8tN06GjkuX+79EWPFryvYdg8TJi0dBd
	 lRnRqu0zS0WTuyVBtZ2K7+MMZdPmvkSeAwN6SowWUjbr84Jf0rhxAobPhW8BP3I+H2
	 tUQCkUR2PlaKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D35D2CE1C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491397358.18596.16884328309963028486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6cce64cec30baab0b48bbddab376199337b3f5f09d406a0c43b31e62a1c240
Date: Fri, 05 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764913973
