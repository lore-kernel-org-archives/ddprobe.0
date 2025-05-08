Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40486770E2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746682194; cv=none; b=PsjF6IEZVTkmToEnODlj7CCCeDomdhqsLfIDy70N8co4XLnmWr8bjPX46Np2CUqxXG8q1LbBUPSKUjM+AvihDHr+lrdQrshqDolgc6CcWqXjs1kzX1fD+2ZYGGOozIVWybLCpnxrrmBDDs7969B8E4hdtdSg6stsrA3wYBM2i58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746682194; c=relaxed/simple;
	bh=pbYGGn6ekWGtrBnlq4M+TV5pkVifiziVpXYZZd089h0=;
	h=To:Subject:From:Message-Id:Date; b=mTKobw+fXZrywAJgSM/kS7w7VYjKJzib95MSYFGJFBVmbGQJBuwLqUPWUQxjae09tN7i8hS1Vm5li8P4FGqkPMi45am/txxFTaipyx5g7FOMtVzos+kG2krJTZnVyUWTbmB2ZO42ztBGfpG3aN4mLsRS23KJbTAsPIvsYPVXRwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJN3wORc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJN3wORc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2304C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746682193;
	bh=pbYGGn6ekWGtrBnlq4M+TV5pkVifiziVpXYZZd089h0=;
	h=To:Subject:From:Date:From;
	b=JJN3wORcQrS4ZRjeDQBZWufVKWrc6nO1koKWjvFKCAcE6P03OXFLhe0TGQdJgJubu
	 YnFokkaT6kOuCFYN3VfxFkogkiR+Peqvcm6ZSg1GJfz+Zt9IiHRUZ3/lZ5RX1/tUUK
	 dcCfmtnW2dHnfKk6UOllEoPf82+iV/R8EV1sjJ3xYoAqLxTuDO1AF++3mHIQzCM+N1
	 poq23gfd2GZF8dj75g7HMQ9FO0k3/mdMToNqqnZNHiBmkLvp+65XmXrCYtqhIjVWDE
	 Lynj2xFirzNjrOr/ID5VV54/UEvlX6Hm2kppSuEMzG5hLG8iJEsoXtUAPdQTs9J0WW
	 oPn7mMTnNspRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96EC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668219357.23574.15014058463446615455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c8781c2404b49f20b654f6f045f7ddc448d778a7418963a0a1354b68e9f276
Date: Thu, 08 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746682193
