Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59A214A9F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737567954; cv=none; b=tGjyj3LuKeeVmyJ6k1aNBtYr4UBPU2rMzPwZavua+KLKbjBVonqkrgVBZaWnLI1Ku5hs4hqYUQrbez6p6zhvoNh7RGe9+gHPnK+T/oPtZuR0D8IAIHhM9f3/NyIO90g0+vvZYL09GkPD1d5j8oT+wXmcUDoRl7qoQz2tqYcjoUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737567954; c=relaxed/simple;
	bh=QWblV4aHTAJQq8LUtCQRlZRYn9nDTkY24sUelHpYLjE=;
	h=To:Subject:From:Message-Id:Date; b=tqrHPCDN9+04bH/KLSfs+1L5FGEVAO8B8NuzfGv4R6uizkazBBA7E9F5i9GmBxb5RzJEAN/sIU64QJdtrU5LimONNMJZ1aTmqnm1w0VBJYXdQRmIWQbVNdsmPw3++HSx+RKiKcWyoqpGccE01iD1UBHiHdviIC03uoh5xf96eYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT85hNNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT85hNNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E65C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737567953;
	bh=QWblV4aHTAJQq8LUtCQRlZRYn9nDTkY24sUelHpYLjE=;
	h=To:Subject:From:Date:From;
	b=pT85hNNCvGi+HIG2IGr6SkJ4sHlq4Okf2dygcAAuk8A6PNUTH7VPtNyM7FrLnY6Mo
	 yOngfjVaBvIphjqsSNRVR2WC1A+BszjuZe+mX2N1oiSASiTGJojcT1LUKrBM/bOdaO
	 vifithWZu1iPCltF/aXP1siDzypIrKj4pzZM2FtQkcyUZQeagT6Od8aXRWkkzssdDo
	 +dXNJeehTSfcvO56gpA3tIZumXP49lpOVL60gSN3ZC9kz4e7gLHSdBpFKdmgv/J01S
	 UM9x8EL0RxSRxECRGjkvYtSUPM6/ul6shp3ZwbgBzBqHCqD7BIZpI82JxOII/JjdgG
	 kcVqIieuDvmOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E3C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756795358.15922.8393466573817506799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260f01f02fdc0bf6da6bb596d4b785975d68a00ff88c03175f4bc8b1f7efeb4a
Date: Wed, 22 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737567953
