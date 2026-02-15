Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502942050
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771122894; cv=none; b=WkGs4bUbtZCWnHKOrM67iZLhQ3weP3I0gz11ealXllG4MUTwmYMrgPpTQu7WI+NkXt+rlhPs9BlK4kjRUtkSu2W8iPeXmOrj/+EYeoMpHwhLTOw45szCbRE82AqO0FbUhmR3M3kqJn6nwYfppVGbI2W/LppSW72h3mHC+SYFNO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771122894; c=relaxed/simple;
	bh=knYgPo7rOUeb8k9/QDsi0o2HENlgonRfrjs9efMV6qg=;
	h=To:Subject:From:Message-Id:Date; b=M5Ek7U+wC1v9Alg/W58C1uPJ8Had2ZC1tHD2CNt/6EWSwL42Cx9mGfjCedE3X6ebTK/zigsV01/SZFK8VLp0dWX7G7BqTVBJC5WITqRGvZ7lwamlySkPt4I9aZZFDixNoqziiybiIroWzlQF11+4OJ9pWyiIotGMwlLnvYVmFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrMXGqDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrMXGqDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4894C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771122893;
	bh=knYgPo7rOUeb8k9/QDsi0o2HENlgonRfrjs9efMV6qg=;
	h=To:Subject:From:Date:From;
	b=XrMXGqDHmWZwY8mj6xk479Y2oHRbQpd+IYjtxtUPaQ2iMvXhVAuA3qFnoO7s6ZL2C
	 UDteqZ5qjEfyd3VbrYoXU4LTr6syK2QSLbDMBEg4N41lFOmcz5CAH2YEwlGhnet0RJ
	 sOJDCZ5F3+IDXzqhOEUpcipqENM782W6mjm7AaRpJqfhMKE73vATsDRx66TRdb3wRz
	 /vixib6VIcM1/Ya1bvlqc7vrzfHl8fHkC3jb9sur/PqKxMgCejZE3Ve0WbdBLkhxsd
	 BP5fMKTAdm6nGpiRHVwQSq2lK9GR1WEJHJWedEjflP9UA7W8qrG8yTy8v8NZZQA/wB
	 tl+rt/aCPnT0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C908EF585D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112289361.13391.15177984914026509493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928a35bfa1d7882a533ab070c64b0b4ebe7a408d9be075ddd958b151744e11f6
Date: Sun, 15 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771122893
