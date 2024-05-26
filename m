Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3CFFC1C
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716731663; cv=none; b=Vyef1tUJVwGB065hzf0AHeyVrA21fwqcSPQ8uQtvWRfvnLHpK6tV95rkQurPUzhFkwtAiMEQV1KfoBC9fFgZHyArya2X5+Z7hb8Folvlqirjue8iIi4iIkOf581e/89pkuE7hwiwiX5iUZHpPQK5U4/TI1SBubnFwcEK2K+M31Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716731663; c=relaxed/simple;
	bh=7Zx6Du7YBJ5+tujOnopM7YXBRMZjpccg/CN3rLiRoGQ=;
	h=To:Subject:From:Message-Id:Date; b=GJOeyVlAAUYgnQZvPon7uy9U8wgbdT3YWL/P1QDy47gzU2R9pKRoaKtWhm0/mHwazNx5iryZiQgNj4kxdbgksyiUXqVt9AC1xFAS0tatU9HnIbXEgsYCLH/HTbuN5ZyDdQXV58SU8E/c/fCBiOAle1cb3JnsPNJyPU5B/+XVuw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3BW4VTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3BW4VTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1CAC32789
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716731662;
	bh=7Zx6Du7YBJ5+tujOnopM7YXBRMZjpccg/CN3rLiRoGQ=;
	h=To:Subject:From:Date:From;
	b=B3BW4VTlWrsrhvg2RbdXFjDmdyONS0f/ZIIL7micl0EHJBtDmriy0QIavIe42zwh1
	 ExRiLYj2Wm9FtlqDAp5gZo3w3CKLY/TnWl1QOS4DbVNltKCiXzIxiHcm8pgoFjCEgB
	 vJleRu88a0MJmB0Bqkx31HZWJbS6JPHghRtV2//uorLorg9VhgnzPnEGUlZekpDHXp
	 6fiNIJYp+dE3iXp53k7nKU53vSfWNoRLW22g/3vgn8NOaneBhAP40ucau0EtNpHENH
	 n6m5duhJLRY8K04kV7hna2yhvDU2Bt9I5gi82QzKq0/EdUs92VIJivjtckoRvDb4QP
	 wSZHxoYYhUqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C527CC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673166279.21317.13940183531721910726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a6402cc626367bae33a824916734e2587befb2ee5b761447b496f1bd977c1f
Date: Sun, 26 May 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716731662
