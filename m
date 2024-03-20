Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA8C53378
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710951496; cv=none; b=SC96gHloD9s9cPkVodGgwkfIEF7PgzlTMVEX8mBJ4b2LdgC8e8eckuCx1VpRWQCzU0aFBBJ0iLes4FHQ2jacSxjiqKQK92HelPULtdhF4P7/PTWvq3exFMb7QJ4ZklldisVmRSHtbevaDFJdjTQVop6HfUXGdeIgWmiBzpqxzW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710951496; c=relaxed/simple;
	bh=txwBqyqm8WUkP9sPhq5xqbG4zDfX2EtGLdBvNctEqbk=;
	h=To:Subject:From:Message-Id:Date; b=dXzPCUXdwRHSS4CXZ2bpgmlyeg6uZnl9eB24LoWToZSwKcm4dixhIyfY3JR/tzruL7Y+qGTGtK6dQv85Stcr2pOtF8UaQCHVw+BRyoFMutJrEc2eLM5oB7VcZbpok0i0NN2xTt7Qsjq5Nd4Jvpkr+Bgu6UNqF8+xo8oIBvrca6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdexIaVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdexIaVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B853C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710951496;
	bh=txwBqyqm8WUkP9sPhq5xqbG4zDfX2EtGLdBvNctEqbk=;
	h=To:Subject:From:Date:From;
	b=OdexIaVOut0ti34PJnmqiTUGclFHSVlRGR0UyEmLOXW2gJPxp1295La9hHnjRTMN5
	 CLZaO9L/v04GocISd8TVJ6rGnJ/pGeuBT99aQFb3LjWmevgdtNZ7nA/p8tE3Nvka8C
	 zonjS8kBUZzWCUUZnMO9k42mqBdxZz4cUDmbTPttAe6j/rH+x4YmHz9W2qZqK0NJhr
	 CyT0xm8tit1+dIfEiyIUcFeIt/jU0ZSczt5LSWNGi5/VfvH83nJni/MCuH3QqS25WQ
	 od5DycJbSyi2ZjA3W6LYwaC6Ic359hkvZ2hWdAAwqccQsQHMO0G/gUuunHQsHZS0nV
	 pWGAdKM6RdNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C76C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171095149640.6670.18387902797867987495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1d177c29bb01368f1b03ba8721dda2f64e707c8c6090b96af216a52106b129
Date: Wed, 20 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710951496
