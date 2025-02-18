Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB25913DBA0
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739891933; cv=none; b=a1442qQ+mGtEgZqJFgcsnItGPUEwCa13qlfY+5XCWeXW9rysEKh+N4C7n9AZJA6k1FlSWVZNyhxItG1ChOilI9VO8wLzNFlAk3JubWuro5qohfhPghvWkYCBPl7+DTAhR47UOKV4+v+bDQ9eGjC9mUtQHnbBZDkGNNDhyTlJu0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739891933; c=relaxed/simple;
	bh=1CuGs0nb8weyTAExONOGWs0zVFhRpjlDPFsfQ3GraDg=;
	h=To:Subject:From:Message-Id:Date; b=AZNV3T7skDcG4r/tN02WjYxd5pkci6xrzAmyDfJ4bg0TLwLutmzQC2VjVRzGm603mKJzmdzp72sAU6WoCA3WO2pU0HkEYUOzPrntQS+dazO2atlxHD2JrNRRkWdcEjQSVWejO80NDo4VGQLL8Majyhzh3kUMjCwgJ5KeBwPi2Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3VAJzN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3VAJzN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3BBC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739891933;
	bh=1CuGs0nb8weyTAExONOGWs0zVFhRpjlDPFsfQ3GraDg=;
	h=To:Subject:From:Date:From;
	b=W3VAJzN0Id6gVpm9JoMkHIO4Z3Z/FIaKMJo7ngrVstkCx0pOJb2W0v9Pz0VCAr+/7
	 Cemq1hc0RW+gM35RL+zitz3u3BK8TikDb09r+1EoJVM0jdlebSmW6YsVXRvjdl16qg
	 K0TxyhQV8Ub5rQSdVb5fcerNChjfw5WCBbZ7TPBbMIGUsqvqPi7fxSn6A7chgLMBAl
	 mTgQBUwXHuqpG0mWcmuNz74qlh+ZqZT82HNZHrOcUL1ViAhM/1VDHIdj1OQGjIAVJq
	 2gyI9AkJOpYxkzvnhp1CeBTBdFfCUlYjLgiHxJGd+4GgC6sBMzw3wsUHvnyHGM217O
	 t2CGzDXdISGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572DC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173989193359.10730.1292187468031657849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e764bc8e7371239a95c223002188404a8396fa71f20841499315cdd40b369b
Date: Tue, 18 Feb 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739891933
