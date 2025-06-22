Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD826136
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750633794; cv=none; b=nqR7L6ptvntR2kI12M21byCgJkGfjXsM+11nkimTHduCACc4C2be9ue5qpEvI+28ZG7u3yK6ozquXw+3dJVLEmoGqHASDZXTWjDuJ+zkArR10TNBfF0fdAN3sN/kEg2TkpmlffUNRA83RahcNFaQiwnD2ZeXf1aSqUnn9IAEwIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750633794; c=relaxed/simple;
	bh=r8CMU2Za0MTd/2KuLWSMhqEl25uaWhk/K/h1D5UTP9I=;
	h=To:Subject:From:Message-Id:Date; b=H+t0vNUa2evkUFllZCrOBVJ9hTr6PWahmDagr9f3xxc9hplN7kIqVVF9uYhcpdravxRmq0f4W3O80fCDY50ZlDWW+EFNEdQPzdGteLRtc+QfKxjkFhvQoiuwaIVBqb+3OWYZYXWieBKz8NRLoVBu41tmEvMl364f5XBkss3OtIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSj3mdsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSj3mdsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09A5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750633793;
	bh=r8CMU2Za0MTd/2KuLWSMhqEl25uaWhk/K/h1D5UTP9I=;
	h=To:Subject:From:Date:From;
	b=kSj3mdsikKWgrVCRfkrrI8xF1TCR4fzHTsuN9iVtvbqh8tMzqfH/AWg3JDvVpFjjb
	 Sj8UypEHDyw/jBYaDTjFfCi/8aZs+XY/jbmZCigU0/ujW9X9h+8rSrvJZNLCgXyxmm
	 +KS4xezcq9g74h/byt2XmFLVofwj+Ii1vI4sataLfcM5zmAgdOAS25brGcJW2a752m
	 zFyOk0tPu0S8qjSwSLaOALW6sDU+0KzpEYsyWQPmNbqg8jIrJCcbovZ+7sHedPdIAC
	 5/MQi91BZpSgppGm0Gt2UEnLB2+3f1grbSaIIvc2h+hxLD3GzcY98WHakHtuIkuMjU
	 TXGDIPh86WjUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBFBC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063379361.17511.15075619550607548934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff00723950ab733d40742ec2e3a73ade43769d9002b12805c90c5a34dc960e2
Date: Sun, 22 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750633793
