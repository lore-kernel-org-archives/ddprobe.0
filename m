Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EB918D
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745116194; cv=none; b=hgpXu97ugm79jyMt1P17xsQ1yPzMuaiQHe1jwoRhSa2yY4gQDZzmv+hKcjbB+WRedTyU+7BYn7g6mPmdJefW506X3LBMI0lRbcxTUFIZRQkmGdmLPydt/059+dDq0wT3KbNg6X6T3pxnFTbv5hsIU/P7t9gAvJzssWrdQc18ge8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745116194; c=relaxed/simple;
	bh=qJOB7DK0V++zk56NTHmsy53nva3hjniPfbjjkR1cK8k=;
	h=To:Subject:From:Message-Id:Date; b=mb1IMAAUjvmpt0U9A4+0yFHxYU3ldK49w19QMcC0CLmwezslrIRdzH9UfrZr1z16fKNUWzHQsBYUzVZ4hIhjOEN22AvFdWyIVAdBrfkM/C9wPpzndmbTrTkElEvT4dSciwDTS9tHOphAwMTeUx8Oif1rNlUePFHnWmJKuFkA7Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On2umuDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On2umuDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745116193;
	bh=qJOB7DK0V++zk56NTHmsy53nva3hjniPfbjjkR1cK8k=;
	h=To:Subject:From:Date:From;
	b=On2umuDxmBjbH0YtWKrXyjVbSOKmeXrfjZBqP5gh7qxUTeDE2hd3G/7j4n+im7wZB
	 viTUNqL4OGTwRtoCVYFIoBrD9n8OVKi3Ea2lrCa76RSVrShr8PmC2zGQFllHZbfbvO
	 uTLSZ6SFvtN0dj3JB50niX+YJJKRIE8BMdCLgyMZIZJj7gH92aosP4Ee64KYUWtGPS
	 Rd6PsLpgH5iG3TNeKcpfK0/gCmgy4YgQsD2DiAgv5C7Yz5Qy6FFqCV+31l5Pw2/1gU
	 FPCYSReTVcuUZOIOGOQsZFP3sidOvB1XcgpOXguHocddPsDs4+P7gbXmSPo5JVto5/
	 4r7Jvm58td2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D1EC369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511619361.24359.13132562613078104630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55be11db10e77ca4b6bb078fe680b87e07e64f3596b5ea776d8315c54c6d9ba9
Date: Sun, 20 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745116193
