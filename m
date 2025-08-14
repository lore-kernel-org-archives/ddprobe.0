Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2652E259C9C
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755204594; cv=none; b=peDrS86jemvDmJDeoTvNbGuGJfF/eh//gF3vb3alw09cnaC5W4YbcWHNU2Sl9Ct57MJSyHThbvtrHlCPkKrZ8kEERciXohIXkg4zIqAlq+Gwrk3hvlTZ+g4CXlDWmJpRb3tdoM2V9otsAmnINaSf70E9ZWalE+IpYfzatq6s4KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755204594; c=relaxed/simple;
	bh=TQFNjSA98Y/cATnSKIdED52n3ooRzhMZkZ66Va570uA=;
	h=To:Subject:From:Message-Id:Date; b=YMtn/pt2VGn6V4EV/jFSOjXUanxIkNMRDVdqive4vYivykpI5KAzRYSfeCOiJUkfhmPKTac86ddbj4i6AQ1qBYIzsQQejy0H0+wwRkYq9EQYiEv7+Z6pucwjwFX+1KoGB3uDBhwyLNoqbp98/SSk+BXs1hOgBqTDwcCegI7ftVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7eeE+3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7eeE+3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A044DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755204593;
	bh=TQFNjSA98Y/cATnSKIdED52n3ooRzhMZkZ66Va570uA=;
	h=To:Subject:From:Date:From;
	b=R7eeE+3yuef33eU2mxPsionKVd6/9e4iU68U5AC5n58OsUfSR+DWUo/gN8DFc1SSi
	 CycYDoCKJI1hJHZGVSZC9rM8LZEDdoni0jDkTgGKDrXWWZfdscOOThoPgMXHNwEfN/
	 1Zto5aHXfr1TbSLv4Kg9hxleeH/yHAyMvcCAQe+gwdp3owcs9HPU4qx2KVGEkECpo2
	 W94kaLh9LQwbkrYGrhrkpW7eJm/xAtfuq+J66dDlvo+f8BCsFE0ux6NY4A1UbhnZkW
	 zzmz6RQ/KtNG6uPUv4pcBYfaLr4XZi4D4A7Gro0ragCYIbcQo15Mr+9c3stPiKPKww
	 AoGlNwzTeUmkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB4CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520459358.6069.877319545915860678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a1ccbeee14906a7cc09a30d2e304e89978ce699b34c478a876e1a4cffaba6d
Date: Thu, 14 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755204593
