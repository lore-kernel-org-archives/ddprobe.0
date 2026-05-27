Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4975B221FC6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779913954; cv=none; b=iOswdQijWwPZpvqf7Fexx/eLXeBsHlWPUWMNSRi10kD6yRmnVL9KO+d8y2x9zvTi6buXax4k3+oXkbH+CMD2Y2pmMFuCuEGYCag6JuYFU/fb4GizC4DRh5iR/2cBEQ1Prg5PW1G7m8PI26KwHVs9Qih3wETaIKMAuK1f3tKt2og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779913954; c=relaxed/simple;
	bh=aIdVpP5WwyTUj/GUA7lGhN3HJGytzZ3KL6be3Ks6yOI=;
	h=To:Subject:From:Message-Id:Date; b=e+RhxqthXnOpwrgYvqmzhkUDJt18q/Nl4H3HD3dPLwwW0QL5Zc7+4wZggV0kAQXuIIh1yUatKj1IxjRVyA4Y28+lw2XeqCSZQTlm9S2mPFOZFDBR8KOiry32ca6evt/Ks4ylcqCEC+MbftSIkyiMsvjpgC/HuQmK/T96pbeQg5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW+5aTSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW+5aTSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C2AC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779913953;
	bh=aIdVpP5WwyTUj/GUA7lGhN3HJGytzZ3KL6be3Ks6yOI=;
	h=To:Subject:From:Date:From;
	b=nW+5aTSauTvKIasLUG65FiURStEm+wZ2b1fk3dgLyZijKcLfBqSCsgkqWim2tTjU8
	 T+3Lzm1rvY6choVPLJrizEcnM64VSphBlU+eLCVlLUJ476P/gA29/zFTtfTI2uq0WD
	 xPDJeFXTXgCdc6Qs3jriKoTaWlKzBO5uiH/dfsM8rVpz+Ad9i4KxKTyD0YDk6YuG3l
	 gI6Zp7+o6nGk7W3WJ+kCITJ5aV95x3YEDEDFlP6cpcRekAGJrG8uI44++tcgU8r8Zf
	 JadyvjtyHibEIIpYPYVNreHgRA3zaPjBgxr6TO88O4s/LNfKoiziWQthl+g8Tz7nt0
	 aSuK6BJhBhBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F79CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991395373.21516.1964398668757269753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4a62f4e03c8e63b235717fb9a52318560828a8f1f9b6389b8b545d96b3d82b
Date: Wed, 27 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779913953
