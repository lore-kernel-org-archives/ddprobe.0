Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E03230170F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768248234; cv=none; b=MkoWdqi+FEh+imdMBKgIk8XMDf8XysOn8h1oo7FDvaSoSMPKM6bJgfuZ+tI2YwWyi7+nW7qsRN2Vja8OoVYkY3JSoKMrwf/+YS09l9GbAhNbSphBgOtwrmrcIstaRN/W5TuPeIvB5a4P1xgzH+ka0Pu6p3CmMz9S8Sus5tN6fDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768248234; c=relaxed/simple;
	bh=r0Ox3IhW+QetkvQTx/VOvWYXz6QJIbtX3OqasMGT4Us=;
	h=To:Subject:From:Message-Id:Date; b=C+kzCj5kHXbPSl3j9UJ1XUWI5ntq5H85eguQ9phCnZXo054CHTrfGHEgJ81bVu1AqAURR8UHuDBj+Ketfk7Pt/IF/XKxnPLkcC+HR5JU42lF7oY5JVbRzyyahzpzFI2eeItK6dOhPFRx2atYsDPYTGsbdp9yw3h8tmVrT8/IGUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2L8oek9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2L8oek9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F5CC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768248233;
	bh=r0Ox3IhW+QetkvQTx/VOvWYXz6QJIbtX3OqasMGT4Us=;
	h=To:Subject:From:Date:From;
	b=q2L8oek9M8fJkgEOM5rlnKAtY0cjj5b83TWEfwoRKkmMzRB+Yzy+TS+w6k93HRubX
	 BjEglcv+r8qn5TBS610nVknoCVVmEmqammyL2lGWSxA3H0/XS1GpiNOayEPfkTDYme
	 E3KTiVaZ4mrMBwwC2VyNO+zaSXVl8D8L98vlKlcDicv9H7pY51KzloEcKzcc6xbBPZ
	 1OkaKjt3835tMWvYzIel/AD7XNvte+fKJ2mbis3AhFcowG3XUJY7Jr7B/lOy7ZsZkV
	 nCue97b1+CpbDFGwgSAcfJAIqyCfjX7Fx+QfiQdUwz18o2oUkVwQD8EmGmcgn7yvd3
	 vbkJ4luJ7Q64w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95682CF45CD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824823358.27194.3803305951110672748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b07a80fdcec9f66e1c02f955c4093893b7e07e5099f4e862237bc7373794036
Date: Mon, 12 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768248233
