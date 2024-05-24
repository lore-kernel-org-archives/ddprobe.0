Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D42829429
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716582803; cv=none; b=WXtjava4EuO5L4PFvk7Jh6iKqAsU05dPh55mUFKVt+qti0K2sIfiyIoP2mRJIE+KSBasZw0EdzeDmIUxDJGH/DUjsrfLvs3XNC2m+676RduWgeCPKw4tqWqQ+ffibzeh8p57iWyzIEXVruRhHZP+sSgoiHZo7GegcXBAwq3wo/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716582803; c=relaxed/simple;
	bh=o6wBsny0P7Nve/f/IEfgNUQGplkRTwgjFTDUcfws0cI=;
	h=To:Subject:From:Message-Id:Date; b=pq9sgqwoeqAqL2OEni1yzIpdJ75H66SkNmEa0vI3CEI8F0pxq0rGQChu2GgPTrw897EthSeHC52e/1nvPuQyTy6xZzRHhl7sDmzNbAPcJqxj0iiPXHNwLRp3aIfDYCv0Bd8bjWWd8rFNg9g/pZyM3P35/W+HdCC3ROTgSXGFjfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4NIFdlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4NIFdlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF405C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716582802;
	bh=o6wBsny0P7Nve/f/IEfgNUQGplkRTwgjFTDUcfws0cI=;
	h=To:Subject:From:Date:From;
	b=k4NIFdlFcL4fVqhtaK8eNCGvl3ooloGU0RbXVUxz3i13bziZazpGlgNR2lGMptK74
	 88QDdxt+6kAmRv4H99TPRh2z48ecLF0pXHZmXG6lkhTB8yXyTd61UDAxNkboHI0NWA
	 oVpUJVB7ytPzJ1vdpDQYn4orgO7TiGFocqKDAoJA5QZ3D+XPpFe8yujz0WU5IbaVWK
	 JMYN0KA7AOjzAbbmzbxTU5VH5ulcZxvoBnmmOp3wKDtteHqPeL0u+CtGsBHEHKh0rs
	 BXM0dR1oeJOjbjR9NvoG2VgYhTgflyXdl9cqvqHA82vfmm2MsRErGdz0r9TS7uq+Zz
	 95Xy5QikbIE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2D1C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 20:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658280277.15678.6846312354351219699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f24cefb47c6ec80f7c8c5a95ed8ab639491fa476e16f2a30353cea80275af6
Date: Fri, 24 May 2024 20:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716582802
