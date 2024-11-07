Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B391DFDB8
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730991353; cv=none; b=j4cPfyF3C38z0ML/LibUZJtk5kJiOmUOLW8yIQrZr9xZNQSv3vAcvN+TXYnXvc/4d9XxbRKV28WoRtffI7DCwXveRKICWVarjz3fUSza2yMCZEW4UmToce6RAdUzAWajXvt59NHtEjRV+iCqz4API7eznHttsUFE5ufGvoKFtb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730991353; c=relaxed/simple;
	bh=9Z9F6yocbSUOG1Cw6h6f8yo1GjNg1tEZvbWlXR5DNjs=;
	h=To:Subject:From:Message-Id:Date; b=IE7WvasWtLvoAqF6sVKYu8G26yQtrs2c1SQda4Xz53c8/NZElxHl62wgWFJB0M48Agg99aagx9tbm2xdhI9yI66esVGZsySqbnozAbmyK3S7e/mMu+Vz6ks8x9jpfEzQJ7brqkhFgctzwP9AGjGGg3bY09ByF9uLSkMgVjxPXxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZK4f7xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZK4f7xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08FFC4CECD
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730991353;
	bh=9Z9F6yocbSUOG1Cw6h6f8yo1GjNg1tEZvbWlXR5DNjs=;
	h=To:Subject:From:Date:From;
	b=VZK4f7xYYv+8F/7dM8NmdYgJXs3b2BFFve1WwdlJ1Vmko9LRftM7WUlqUY/5tffUr
	 Cn7EEei8Nw1/MwD824He5athU8apKQXPAp5iyocoQsWDNrTyFUo0cU82dY5Cpjnc1Q
	 qnb4gcVyDBRImV7iO9em+umbPn6/8V84AVIhBodbmmV8peaBqs3Ch056sJqlsm0JUH
	 l5X/c/YneDZhh3WH6gsebJIwiOufBQ7q4bsWeoh8L9uTx3CmuEfGAWfoVbSuHuHfr0
	 clo7TUnnqaymKNrwhLAt7hQFruzHKTntX8O0g2p/+DF+1J66YYUsSgp76mfeMyrsJz
	 Rks282FoePI9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3BD43369
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099135358.25322.6252009494658500865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a12fa236d9e08c9e128a6037f4b38a370eb0f7533b5714059ba4bb2c26c6fc
Date: Thu, 07 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730991353
