Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CB641A785
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790836234; cv=none; b=g6k/UYvUC7snd+MUSNAopiXo9lGH5EAlwe6quG6o88pXzyR8oIUQcOvbZiziDnsQDzo7nRLB0bGjrFQvhOu+xCKgsqJgkeQWTsNXQsGfVGKTG8IN3l+ksxEyDyAeJbUCiZhVO6Y3R0vztTPpLqLOI9ZMzlCAIkVuBmKNM+rvI2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790836234; c=relaxed/simple;
	bh=7bGzl2Vom4BLMza9c0yE6XfFGQqZq9OiZDzry3fbMco=;
	h=To:Subject:From:Message-Id:Date; b=r5bHECiVW2LcUEpjfomE4YuHlSWdW0iiwEddoH0jZzE1jaD8LQQemmKD960Vyg6Je3ysU/tNiAdtZzMxlrBlWIyGddCIHANCGl3ZcCsSsS0dcvweo9JjL4x6tdeqZKSFt0wZjKBARwJ+kImb+NFwqkRK5MM4r/cGacwg1HQtOvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLBj6wMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLBj6wMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2BBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790836233;
	bh=7bGzl2Vom4BLMza9c0yE6XfFGQqZq9OiZDzry3fbMco=;
	h=To:Subject:From:Date:From;
	b=CLBj6wMbvI/4wdQR3VS71qSGHdbodllLh1P38sRRBE3kPykax1UyNo2320Cz07hKc
	 hBThaIbKz4Us1R/o/EkgtheJPlOR+3w1Ivj7652t7r4izdA0FWkZBJEQdP7HbDgDrV
	 BypInsaSiim/3GaRiWCDsAdztMM6phOyhtHXDIl8LEJXa08kpHjZiTmmpASSeluLBl
	 kfM+vjdMSkrQo3yfhku83zTGBQL7pcivutKf0ZLxTkknfSoE8OBY3iO6SOfS8jwsZx
	 c1t7fF2AmyR2hX+4hIsq6gEbc1lNYEPABjK57r17dKiRDzlstDbO3WY5DD17cgvBxJ
	 Dryi/9W8xdvDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5CCA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083623368.25827.12594106623000092395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11a5225a5caebc2e20255fda6e7f18a2fcdb67864e6817a6382f61633889397
Date: Thu, 01 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790836233
