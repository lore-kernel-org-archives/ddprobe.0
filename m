Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446ED18859B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780793674; cv=none; b=fSsDijC4DlCLsKZo2apDPJ1TpCJ+TfGJQzyMnjJnjQnfGVF+/O0T2HT16/9TrKCwhVvpGkdPQwVFSG8nAC5c3rKWc7uM3UtGAQ7fa2yIyvjxYOEvR2EGTP9zVUbAIG2IKoRFwD/6ZYisfpuXysQ/QHmtKFOZ+X3i0DA1VyjHjkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780793674; c=relaxed/simple;
	bh=3JTS/4d+NMNPwjPUFJyEIP9Cp8M+SL5USiiCwA5K/yU=;
	h=To:Subject:From:Message-Id:Date; b=YWAa7shX0J3k0yRbalrkea5t1RaUSnKMr9OPmsS5Rut4CX7eNT7+LukROs4dWr9pm+ndBELWE7bFfk8l+P4+kJp03Fb+vr5OGCUyKYZhgqyJoDQf82L7jUC7Gq8Ab0fr/wS0snovQvChuqt+DtUBmXAPGJuSEuryH7b5vfBBRw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZnQIRu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZnQIRu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC544C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780793673;
	bh=3JTS/4d+NMNPwjPUFJyEIP9Cp8M+SL5USiiCwA5K/yU=;
	h=To:Subject:From:Date:From;
	b=oZnQIRu8fYOvaIDZWZWHvRyZH+xVVY8K/nT+PkU6JpWn7e4x/dwEqgy0U+sC2FkVI
	 dHyQmkuIyvLWwEb7watjcTHO06TdGKXdg5O7OaG/u5y+CsNhVhQkR8YCkUGMHglHAF
	 XaZ/mx+LATt1SkssYSgwgIEauym/S55YC2e4WNZ78UCfUTgwJ4IY5wpdFzouT/pre7
	 XeHj+ZhCa326KJSmILSe9GAtXjsG++CqyRDVuRlarDY7oUD9fgFn0Jnpq089RjzDbp
	 NzRaIEPI0UlzEsnTo3IsuHG9mvSIupj9EQXIVPJSxLz6EniDvMt8p1yTZUwOtSzhbF
	 +L3eJV7+1NUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE807CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079367368.5869.1900052098847836842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f7ab59a26eac227b540ed2011ec7c92996951ec408ae3ead5b03798d1e3a0f
Date: Sun, 07 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780793673
