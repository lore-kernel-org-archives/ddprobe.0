Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B68F36C5BF
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769056434; cv=none; b=kRvqwMBmE6qldxIuAj4gENTkMHZ9HR3xUCADxjaIef6tkl52zrAGfVp22gfXPZunblSh0XBCq1zJ1PQnYPzM96BpwwQsFM/QjUlmK+ETQiwPCY2QGNeWt0B3Hjzg7OEbxb/IzEzEvC3hqP53Mt/WQih9k+Mh0dixe1twNpZW4xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769056434; c=relaxed/simple;
	bh=uvMFNOhWCa9p1adHtwQrGs8THiJtpr6sLgmoBTP73jQ=;
	h=To:Subject:From:Message-Id:Date; b=mD3J/X9GgTahPqHQ0qyiuQEDMz/NiS9uCHwBloffb2MHs+aMl6w4I0bHMT/5HcO+H0AtD86i2p/ZEUpJ2WsmTFKO9yTZt70T1nhWeHo7z/fyPudAWBvbQV8qiUYq0Fn42wASUFsgNSRzhoG0Kh1aeyij81GwMIdodqDXoTeOGH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoU9kZnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoU9kZnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAF6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769056433;
	bh=uvMFNOhWCa9p1adHtwQrGs8THiJtpr6sLgmoBTP73jQ=;
	h=To:Subject:From:Date:From;
	b=LoU9kZnWlL76bi0csfEQcsG+fBHatRhAXmvMVvpXVIayWNyicMyHr79KG1oF6jcXF
	 dl3ThGFxTJAeqej+UZHSmOoQrmCDjBNe1ffJFqp9Z03XE2u9Ft6Kbe/0NBTAsG98YB
	 2xUQCX5tt3Qj1tTMzUB7+fOo49qsgz9ItoAxGLC1wPqv+MfGyqFL2UecWQ8J4C3xu4
	 yCV/9XDekpJEUoWbUgSlZ6OllP/hiXRyhjuBR0Ny8uOibTSr0pKD+kEOUzAzoF0Eij
	 g1l+sZsPOfM55NxljlJKg9idZXy15wUhWxvxCd2WW1mE/nOjyKZMWFrgx5nVvZv3s/
	 mD20JiAlKwN3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F7C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905643358.6497.15919474878485441106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa56f6a1b489c97c697c36f95bb5103d9ace77d491c347dbef12ca792e6f1ad
Date: Thu, 22 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769056433
