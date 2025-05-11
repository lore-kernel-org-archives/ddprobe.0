Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B308F40
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746971394; cv=none; b=uUY8LXFb/fEByf9pwtV3IaAj/SuxK6NkW+9+wXDWudIbr5YqDEqMjeyawQWoU7sJ9p5d1sBTRnCi1Uz/B1mbn+3Nr/lR+NG+NwCGqCZXSzzXXrH4Q2a9MVPUB+TmqeB0XKql0l/4pGffuyow1Z0HsiI//iVl9WWvN1C5pq5Vv6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746971394; c=relaxed/simple;
	bh=X6ZT0446oHovSWSfl6oN3cTO0MZLTrrxkO8/A3UX1N8=;
	h=To:Subject:From:Message-Id:Date; b=t15Kic+APwjBozTX/HOCLGLOWIAm5wkoKlj+NIS2N2XwYA4HY9px+JoqnEnpcmQXeT0ra12I+ytyFLxT6+inCkBwWZekwvhG7QuFqifbFfTPKDnQ8tocdCfVZ1Mv68g7PAc1lW5DSjOqKQInfzn2Nu+zmpyypW0cPciqi1+x56M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMRBD77y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMRBD77y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A932CC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746971393;
	bh=X6ZT0446oHovSWSfl6oN3cTO0MZLTrrxkO8/A3UX1N8=;
	h=To:Subject:From:Date:From;
	b=AMRBD77yrScts+X2tu+7rRh8KYvEx3yQXjJujfNjzOe+is1CarPgpw15Um3E6R92C
	 Krf5NxwM8LubSciORvAadvlx5BFIr2jvO6SbH8cgJwQRJf2eXZ5nkDY2zxykdz+hga
	 rruUQU5ymAEsEIsmAPipE8Qwuupsp/DoQrt0xZ4uPmJ5HkZL+Y59dESnWA+zJm96aJ
	 ILnoeTW+h3TNWxcShWONFlCIuYBcfTmd5eXSuO7q/q+ybN0OGgJGzvQmPwDrYl83MA
	 h5ENAdRLnruUAdOpCRgpxMwPT62idxhCF0lV1Y7fhYdlSj/+Ndy+ghMUtxMzKllKfl
	 NEsBBC+wEHWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F29C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697139357.2415.14145389937264995446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fda40657f3f640eaee3112251349509086327da42ddcc523342f28710a5e191
Date: Sun, 11 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746971393
