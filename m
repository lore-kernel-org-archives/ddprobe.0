Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540F73C1F5B
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778652034; cv=none; b=MKSwtcMtFaOMt9eFmGrauB33pQNZs29h24u4wtBKyobn2XL5UQ6k+6yJvO4V/vBzDke4VyFabEPrfDXfLITrKy7dZMyAgQj8I5p/G95zRvSK2DjZdG6YRhc9z7Hjtb0yz6rW1xT0ezvpzswn9bOul73vusgDAeNH/lGZNLKktdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778652034; c=relaxed/simple;
	bh=THyVtkeGSgxhXQRwjmGE4pTenxMqaeCx6KUcoYCw/bA=;
	h=To:Subject:From:Message-Id:Date; b=m+/n88/elWMRpo4T43ssTVOdKPJQK3U3GCcJAgnDECvRXzIRgNN/BqLLkvKg2a5a5HsSayGd3ycodcK54RynMZQGwau82Fmg3yVz4UgGbjq8ekpWtoXHW3xdAGaCutwvadQNiOs8kX/AT+stwU6ZfRvZvqKgO5X/ZsF3WVke7pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trZ0mCre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trZ0mCre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C041EC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778652033;
	bh=THyVtkeGSgxhXQRwjmGE4pTenxMqaeCx6KUcoYCw/bA=;
	h=To:Subject:From:Date:From;
	b=trZ0mCreYMRY6bvoSk5irErC0i0V3dAV79AqY/EDQs+W/f73Q9ah4YOERF1tWcAIF
	 wNXUZMxQLdqmzde6sewBYBolVAK8ouXtd/KbOKeGHBV1orotZ1ILEKNXadIzKYByXl
	 5SOoEfhUxAT+Fv/fF2sQ8x3YGoVGXb3TvEZgDWtmYs4Cu0y7xRqUEqU2QIwOcf+irj
	 zQhSXYB9L9DNDN6mNJy5J19xeI9S+m+hZygHC1ONkbmkypuAhysOjtElBBsMvSrUnJ
	 Vg22sFE9sBfn3DUjTH051J3LzP/N1PKyOmufNSVH1QQOiPZLSdlHy6kZOgUks51rpF
	 snp0MAeOucCyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE71CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865203370.23369.12352325267215492655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363b4feb36f81c8035ecba1fc7927197dd7f9819f7242db87162630cd034923e
Date: Wed, 13 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778652033
