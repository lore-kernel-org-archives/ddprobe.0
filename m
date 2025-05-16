Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B902222A0
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747375794; cv=none; b=lHFRnn/de6/mdjfESnQL0a/BTDgzSbLPf5HnYxdkia/yvirYKMCoECLfAeYNUnMXx2rHHJkO6H7BQPVOXtsssOJrLvfcRP//+hMPEf2We8dGqv2rYsO8qPGm9ymsE7lZaiYB6EsX1PgGM1TIqVyk+TXwzfs0ptGCjDRu8qFWgfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747375794; c=relaxed/simple;
	bh=iBxXS03GmwE9MuBspZgOIw3QsVaxSQO8R14SmqklzH0=;
	h=To:Subject:From:Message-Id:Date; b=VWS5A7HIEZMk1d4ElmUKh11UMnCzdolp3nFotDtrEcv0vxLaVYxzvLoDwkyT74o4r1ZeU0h3xJK4whYr/htl59tHWrerahifBUpFBpx9yyYuvqr/Hs+NqIonPUgQV48JaTLo/BYIeP6RKw+i4nqtj9aa1sTpTZwcixDG2UQkv5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT/r+/49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT/r+/49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6D1FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747375793;
	bh=iBxXS03GmwE9MuBspZgOIw3QsVaxSQO8R14SmqklzH0=;
	h=To:Subject:From:Date:From;
	b=tT/r+/49PCRJbKQmrDJKrQbf+ltjJB7CtL+SvcG4Wl4A/IReUZ0SYvFpwMmJCa+pf
	 mT+zIZUH8EoigEuyA3/3Hy4hRlli9z8Q8HCk6ChpZ9iopj/uR4QKSSC44JA2fvSh9X
	 b6dcoaXksAZbCWlBdx+m+3+3tuFox1gP1AwlecnHtm/4Rmi1wuU+VG6WtIVRUVuaRW
	 YWRqY1hX0/OkGX+EA7loJS0Cim09XTt3n9Z10xYALlUHaXNVR8uqFP6bLUzF2zBnhA
	 hL39il6ncbr1W5A1G82eD1Z7H2oV2wAWD6A8QRJIht4knM/FCubBHPaxAtM4Xn5jhT
	 WHKeU2vqWfd1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81E1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737579374.26489.11792617561876694348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c46afe3a74aa9b9d2b2974da2e0e6ac5ca757b283e78024cd729489e03457c8
Date: Fri, 16 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747375793
