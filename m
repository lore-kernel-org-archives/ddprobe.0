Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F45395245
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387433; cv=none; b=LFeKQ9w0OGXaJ6k3oPX3CoudVn9rZ/Wa2MttWe/aL4gs18UZQCh8zkOOPTsXmhliZG2Fkmk4gDJ8MXMdNcksScz4kn9D895ZmBpJA1E2QhOQCTISWj6PYxhCybo8PgdyFRwhdMYPMCcdL/wgxqSjdeHlcDqYps3fqSOIKsHoM9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387433; c=relaxed/simple;
	bh=8HiwBj+IsB7Zy0A3pVl7lFIcat+9l3A/yQp1VShmcHs=;
	h=To:Subject:From:Message-Id:Date; b=SqJHJNySoNkd1ghS6SpFg8DRn1gMV0x09Z7u/ufF2QvBHI4RPjgYywAjSAnhG4U6F7JXsIB0wjGQuxwOkI97pfaCcGi9ujNX8VDMpKvEXDLTXdujgnL0+5Ck93zbGqckZgSQ7vd5aNJNsSrrfBwtCUkW8qH69E36iwCQsueuFoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH/5o8Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH/5o8Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6962C19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768387433;
	bh=8HiwBj+IsB7Zy0A3pVl7lFIcat+9l3A/yQp1VShmcHs=;
	h=To:Subject:From:Date:From;
	b=XH/5o8Fst8zSo+N9zsa7+AfHhnPcV1AFhJ3kHSVm+CrGhaObeXvHyECcLUJbsBZ91
	 VdWRvuLr1Igwo6PCouww0S1NjYSsMnQUBpzyTqTjAiXtPL4MxGf+neFVPt3WJJ8Gs0
	 Ka4h8w2ck0aWXq24lKOahvo8Luq6SVCw6c9hA6bjeOEOzPSXa3Q7Fu8ePAU/OfNrQp
	 Vm+moWq8c86LZIWatzeBfjKp6gt3SuUqvEcZQQ37XGlOZzfzAkkemIbel/HhG2Se1h
	 FrHoxEsc13XlV5p4sx8XySHEuNnZeL9ndUrZcnWybp+b9PMiLIh2yctbYuviitulDU
	 8o+0cwhN9udXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB7D29FEB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838743360.24201.16721733655121364518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f931148b52a94fd85c636573e326dc133e00f3ff9b06b271b3d8adb5a2eefe
Date: Wed, 14 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768387433
