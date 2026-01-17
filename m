Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F5A244667
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768677834; cv=none; b=efMsawPF3vo7Q/iJpO51Ul5N130ml8GdpuXIHu053m+ug/40EZ1nUM3QxAkErIxbPT5YdYOEuhi6JvG8xpHoAFHX77zahQ5hJEOQACLjIImHvhBzbVXm7J1dzkzwtFjQxv3s8ClILPUmBb/fTumq+Vxh3JQcutUKS8aG0DKeu2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768677834; c=relaxed/simple;
	bh=dIKb2oWmmvaGOjTTrLH24Vc2wrnJ6FhndEBVH6ugBQ8=;
	h=To:Subject:From:Message-Id:Date; b=sr39N23u8LBz7LxDUcWiW8+htKmSLdmI2zfhkjs7hoM8BOTKPJr54Rc6gobi6SAQDXTNTuwUWEQgaS48BttGgtYfMcsPn61VbhlbI+/HM+BesIP6vKi/3JYxzhqGaxQZZ4OxFztd+eVYKP50Xe7v2E26TYOrUV3plSHplL7/giI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBSWhccF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBSWhccF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768677833;
	bh=dIKb2oWmmvaGOjTTrLH24Vc2wrnJ6FhndEBVH6ugBQ8=;
	h=To:Subject:From:Date:From;
	b=XBSWhccFsg3HOqiSddBWiuQixU3tiKN5aDbsb47LUX5d3nkomGHCOehNa61NsV5li
	 FrLXAyKL0zgGnwXIecymCTqGVd6btTLtkw+mU5ghPgDLJQrH8ZlaFb4+Vmrt0yCkDw
	 kTRU/xeIl2MYskR4cw9yg7u2k/o6fHbj0SOIYvnFhcTj3JVYTGCmqF8KRjyufIjA8P
	 i+sdiSR3APXmX7+hCNC0oUc1gywWAOVQ0TJ7sHoJS5ZwF9y/CMgqNC3uBJbifuz1ZJ
	 uydumEdCwi5OWdTc06W5ED5TKW8+YQMRZ5TE31ZEomoAbgxdamVjmPESeOPPm6yR5s
	 47yU3fW2wSfSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92838C9832A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867783357.15792.14580905811222856223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6314e69f90ad85018e76f3567dbb0ca021f45abb297e15b6451fa70c043af88
Date: Sat, 17 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768677833
