Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E9E33DEF9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790886634; cv=none; b=ROR9lHEgHqcoNFTije6yjdeYVFynBxIE0Jk62k6Qe06DO5X55sS4PGZFYJNFlRnAVxzTODXZpHKlpKWdmO00whymgm1I3HBjjueZeKJLL9ffWohfUBHHL2J1UPw4h/KT7N34WexxBRJGTuCevT0XzqMhM48ZxAWVBAX3HHESp6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790886634; c=relaxed/simple;
	bh=YSuQPlBc5JwVnTTM7sTg/MuJ0jEYJHzgH4wUI5bnjC8=;
	h=To:Subject:From:Message-Id:Date; b=oC1DVULHYaVH2T+aEmGxEMm7JJc7uXzoBjXMVQSepuoGffW4tzQyl/nvuc2fbOLRhcwg2Ps3Qh/f4uFxe40zIAWTvTvwxKsl2zt2r6A5wdWQktnMv1e4P3vbY0dxQZHUwgSBi96wEDuqwuGFJyBqhlZQmq/oN/+SPz40bqR9ZdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD6NW5/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD6NW5/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BFAC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790886633;
	bh=YSuQPlBc5JwVnTTM7sTg/MuJ0jEYJHzgH4wUI5bnjC8=;
	h=To:Subject:From:Date:From;
	b=GD6NW5/ciF4nckT756HIcOzDgwDJBOwGY7X+lx+yuKDTeo0/EWLRJuflR3e8ZCxBy
	 d+DT0lDoahvpV8yh3xJIVKkUbEMhezrWUC0CzurzbBnzmgRpIkZlD5QdblFommzAkN
	 xr2E1xTssQSg3NldRG70BpJLNk9sRtLbqmgQL9Zoiw/BkIOBkesxPsWB3BRoomV4Dy
	 ZZDj7Q4tr4snTTy7CKuEGhxiUUUKGRhfOdqi1Yrx9RhiWy7Fa5Ca/AaA2PoUKot7U3
	 WA2MlIu5iWaMT+mt14yEfHoX360WxSVWAfl4zM7mRXPqgAYUsxOPfIW8OZcONdXaKD
	 f12udBlWGFsYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDA7CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088663368.16540.10989196832744334652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e19f9ea72b684c9d3a5b0f16b743c93748b8cc39a8eefc0b27f9fbc9a43399e
Date: Thu, 01 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790886633
