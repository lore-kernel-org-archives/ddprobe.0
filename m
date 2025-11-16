Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4960A1FD4
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763304114; cv=none; b=ILdFTb2vwqzDAIeUPr9TTCMwWuO7eCNAxR4s3ZpXSAw8Qu3ueIjssqdysoWZSym1zgcpClv8EItyOnCIo4wevbu9bX6EOtiUzrwJuDkKgbIF6nh1I5AgrlGHxa9z9G/4fiyUUMQN8XWojDnjvOcndkZN+jRXx0oKhtseft/65Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763304114; c=relaxed/simple;
	bh=rybcRPtMhVcSAjYIpJFe2fqzi5UWO3T06jrEEl9UcR8=;
	h=To:Subject:From:Message-Id:Date; b=OvTLv3XG6xODOIswqdQxfLCigof/PU82cVDUGXDnCAYMC1mouBG7wOUGE9BdCGZpGrerU6eBHuOoS4OmYgID8XChE5n4nmcOCY1qE3u9nB8D3e4szxSJy6gqEfKFrIh30CiFb8FNoy+LeYWAmCUoAMh1Djz7Q/27FQU6En0KJOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtstA19v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtstA19v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE523C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763304113;
	bh=rybcRPtMhVcSAjYIpJFe2fqzi5UWO3T06jrEEl9UcR8=;
	h=To:Subject:From:Date:From;
	b=NtstA19v7gWjiD5l7qL/FlX7yY3w7mrgnZH79V0/52vOoRRamNk7tQfPetSpqmr4q
	 sCCChzCFoh7J5x1wv57NOaYp4yauhyGSuv3UYToCUEIu+m3Ys6GWUydielBvAf0AC3
	 AmCQeIoOz9Kf7IpKWw93rzrJ0BM/90U2uIKuOHzdELp4xuUefJaHhhBICWP51lQhLy
	 CIrroa5rH8HhJJ9XpmUDT9jVBY12MYj2gq+Z3tcacLP1SVHTaB0TsGVPn0CxGc6OkS
	 cVh52zvpPo8uC8SU3Im2wfdGfzmf72mfle2v8OZOvs2vOWaJopDImuXkxIu7d/k46r
	 Awsk2Fyn6Abrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E1CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330411360.13553.3588215205440136923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157b41f8bac3f0b0ef2ee825183e74eeb3e50906e4f5ff0872cff703ac24b918
Date: Sun, 16 Nov 2025 14:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763304113
