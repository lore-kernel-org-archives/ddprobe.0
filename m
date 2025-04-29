Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39930132103
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745896794; cv=none; b=TB4vMBRIcf1uD/A+B+W0oRtMwjT2eK1HmRiljV3iV8OJyqHpqzqQAZqROKfWlj/thNAt/Hek//6tgE20P7VRk0SSIisQdSxrp49pyFmtrNIcgohKpvTMA1t2HNlBJBqe5Z1XGZ2+RCEnrxnolAo/gSwP81YmV4MnHN73HmbY4qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745896794; c=relaxed/simple;
	bh=d30GhsQdUmFN3ZhjBatIZ9lLiGTNtbCnckC861uDuIc=;
	h=To:Subject:From:Message-Id:Date; b=pJ0ZamK9iTE6NXOO62jC9Q/c6Nl3ghzuq8YXJQxTk9iGLHkJ0B4Cmg3VXgqq+lIX7/jMRpAeFcfYIGPUD4mFI6mdKhPPuJjYFrwwj8kpa24WbsCOhSiytb5OyxUGu6cNjQjlsd5mFCHvHUPtXIKDYpegzMBR+S3pGJrJnnrQeBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzXjGxvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzXjGxvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A8EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745896793;
	bh=d30GhsQdUmFN3ZhjBatIZ9lLiGTNtbCnckC861uDuIc=;
	h=To:Subject:From:Date:From;
	b=YzXjGxvRXPAFPbY6/JurQeg+FmQncQWKF0E4g+KEDsHOqSMIQifEZ4VMiNHDhIu8q
	 Bd6/tVbNnEB+lZeYTjK047joskg/TAAe7VzFmkOlgsGbm25x4Tx2Udu3KjKMGjsegj
	 x7cHaQBwqn3gm3MPAWKrfQQeq3QQmmwK8ShCRrhVpx/DzqzS67v0TYHJDW0mfVE0mq
	 GrsMudxpEQ4iPAe3YTYUIjZifBU7b5a+Kf+6J9pspDyKlPMIyT+97O1aegi3hrWO7h
	 cVijdYSEkRSAqhdCwjyLtGlAdPSL9jB+zLUSA21SOvhnHxD/PiCkbtUCYcAmWLnpxP
	 2DOzOBzg7NAUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5EC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589679357.8625.11663397731714726876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c56f6346058aa13abbc7cd7ebd0c25f4fba8610bebaacff92e5bcae2fdc705
Date: Tue, 29 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745896793
