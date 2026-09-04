Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2476B154458
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788481234; cv=none; b=AT2nNbsPvJcd0phWB94KL4t1lTdKfRP8qpgZrKgLVrA03A2GjAvnYzngxd3ASvk2tu3ldHSFzg/ofokpvRWmyg+/4bmsLXmqCvScRDs+1OhoghMQcIpdr88Ygx5bFXPm7/F/8tINb7rSZLUoXvh4Dj9LSDmZ840rF20djj2tnlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788481234; c=relaxed/simple;
	bh=wyF0IV+8ahmNb6sIKXGZDQDs28lKx84fW+PfMcEJX3c=;
	h=To:Subject:From:Message-Id:Date; b=kD7yPlpCHB0/VbPtU7/rwUgNO0gd1AoSq/nHh4C+F52KMbW7yjhp9w6H0iIC5mTwptJwYTgSiZUs95+UXbOX1Vz/V6h/B2MN0NVcp/iDL9T7UzdJjBElliBs/e/NYsq47FhYrd7sYHuyLgEROWrLxL/gi/j4DSRxHX0atnKJMTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqKq+W4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqKq+W4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF602C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788481233;
	bh=wyF0IV+8ahmNb6sIKXGZDQDs28lKx84fW+PfMcEJX3c=;
	h=To:Subject:From:Date:From;
	b=VqKq+W4vfh8bE7ly8qjvXDRpv7X63DjkSS02mdWIUOJfDKIQ8yPSxoWMjT+x0MgIZ
	 rcsgYRjjYdvl4L8fNzeU4iwClLn8ccNpNzHxRE7ZTvKwGbbgP5nuF5q4mW4Fsoy85Y
	 J9bP3acxTClZbA7fHFazHnDj8LUCKnJo8HEZC/RJ0cnmmu+RdNIX6JieUe5VmksuXx
	 C5sJS1+ofjdeiAU5+oEhB4I4Ze4U33wMTPwLzAbYbJbxnTO3sDdwwAXoaxLUVD1RFc
	 g5+HA5gNbvr2vGyLambc6fyPH+oSBDA1IJA+rMsdPZk123TFh0Lxqtgpsy3QKAel1/
	 nuNICuyJechFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC161C624D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848123369.14005.7463738357105579037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3ae3dfcd4552c07ca13c4bdc90a69fd080218a31c01fd73f6ae9e48971c851
Date: Fri, 04 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788481233
