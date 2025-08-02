Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E7A72612
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754116194; cv=none; b=fJpcRwyb1nSkc/gRL6wZsfmKxBwzt0XMHFYOqseZrFmbNXuIVO9ahkuRSBSswlpFdy9B0J3/H4gNup9J1Fmug3aXaLIX6MsitTinEaMe8LH0PhZJZNkL1sVKRrqV2MLaohw2RCetobMJaQcJpQK8j5fr5O+S3LQapWybdKy8Zo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754116194; c=relaxed/simple;
	bh=BRlu4ZsijrGYhdK12RoR8sYWtmV5Nhx0oyhk7yZvaas=;
	h=To:Subject:From:Message-Id:Date; b=cHzWssqkmRdAcUL/K0h63dRUN1hCrHof5Gl2epNZRtd4uatwUKEQxLs+yJckWDmYQaRWmlW0bOFTfsCcE5Wpn1pWtroaRhB/u2Exb3w/rkBGbXVDQ+DYL/K9Na6igA6bqxSm/GcEHzVfyUs3/z3vBCVK/jyOufNAsxMiV7GLl7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHnpNATw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHnpNATw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4029C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754116193;
	bh=BRlu4ZsijrGYhdK12RoR8sYWtmV5Nhx0oyhk7yZvaas=;
	h=To:Subject:From:Date:From;
	b=SHnpNATwbmowEnohCKTsq7DeVnsa5vyymlsLfEbS8AgpDrmvu68mIeAlROczWPwk4
	 L+pm35HDbvJx3H5Y7PIvlbK+e3bO6v0v6MkHtx644yRbiaWLCxILKiWiBs+qE4d3NZ
	 XSXcOl1UfXOyOP+ucmmQXYfaLOvHCXoJMVyJ7Hs5vE5EnjJxVGSkKxSRdCq9nEB3M+
	 v7MCGrva1NDb8keGto/RkbzKCC8ZWsqoo5ziBs+IcXTb+nCKzzBSQGb8QK6Vr97gtK
	 PI8dRbsSTyfy/WfmZNjFdCiEUDbQqg4pTUPpKcqC+E6WBcFisYjPzfUVfIy62eYRbn
	 TiT9iblw1KL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97EC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411619358.16046.11957734335155976569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51d0439e66b39abf3053248eab1cb197edbd8c68eaa3b296a0d5c61858a6f5a
Date: Sat, 02 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754116193
