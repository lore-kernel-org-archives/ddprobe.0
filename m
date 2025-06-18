Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A4D1E47A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750273193; cv=none; b=tkIpP8+XXZ9wVI3cfvKfzQvZt8Jk+6JwHuEqpDvgzdhMRk/2uzp469mJNXqfEfceAvGH9l2PUnl6/8sYZ7h+4FI8tlCD0zC8D2kp8Vu+qysYAzh1qu8tWrCo8EZUe/Dh+PiNI7ZM5iEPXf8iXb8l9rgc/4VOlXA9aheiyXCHyzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750273193; c=relaxed/simple;
	bh=1uhzDh4VW4ZBksVtaFX7tSk/LRo9EJL8mTLZpgTcWCM=;
	h=To:Subject:From:Message-Id:Date; b=kjKZPmnXYhaPzQNXID0p4Rdm/x3cPEslfmh9BgC7mavZPvilLUid8QtJOADhi8BtgcDJcAkH8tZJzkpSh6cJ9Mjs3mqQhsxqMyoENarD0UweCPSzPPtrPh5qEhPCrph7i3mTJ3w0YmnogVW8RGmxx30hVsTikofImaXV4qFojME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeygJKl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeygJKl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A26C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750273193;
	bh=1uhzDh4VW4ZBksVtaFX7tSk/LRo9EJL8mTLZpgTcWCM=;
	h=To:Subject:From:Date:From;
	b=BeygJKl1+0l5LppkAf7gCiSF0XHDG1txv22tXIzvY6NReTqNxFKZEoS3nCZIAVt57
	 xLUXhIc3bRrCSEX45zmw3ppPFQztvZR+qjq9kgqZDet8SCgKsxSncmsGhDBsuvmabo
	 iozcjMRycYf5GFJ+jwBxZYEim4XOXdAMrtAH/XG0GWKrXNR3YBWQZOV0kxkUrnOtWa
	 dmPP5KKPMU7iE8vXULiBi3qoDcked2JF806v9MaQs0DdHL8K9RbTaq/ysU/2ymH7qB
	 tFnnnAFF/sej6kmnScyqJ8F4xa9nyA23yhbMmqH9b40R3KCHpTw5F7pIqwEZGgm5ZV
	 aeIKvIkdYgg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E0C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027319358.28113.6482741488684120414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1ce67d81009430fca06fca3b7d316c50d3f65c1a28e938769924fd8f3d73ac
Date: Wed, 18 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750273193
