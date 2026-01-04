Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F542D7DF6
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767505434; cv=none; b=axoRr0Eol3/+mVURxPCkJ5C2l4xNooELbjp0i5YOR7JQtcZs2hLbgxBbcdaKFhWIcaQqU66Fs4VAdZyUD/pRUI46a+rDvXNSD1j3dp1t0Gn+a7w/9VTXgDTLMELk9RUOeNWO3ZzEbWjclimyKN5L7GV+flwcMvHLCi0iEZ1nce4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767505434; c=relaxed/simple;
	bh=yAmZ2JNw8rS48t9Twj1AZQdCppmig9svbD3ZY0GVy00=;
	h=To:Subject:From:Message-Id:Date; b=O9cXDRQjAbUZNeQhQnvmP7NXJtWI5QHCQY4Ka6vYQnAp3sQcXctyZfFKhg5CL/viNYqlq6kYfYsVsODGxdHfMBzB3Wzq6T9thaEwB8bowL7ODRPE4ygIF8PZo++D/VyrAelMUa/9DNZCqGQisyi8dVWLFBtsIdzsJOToWSU1Jc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8iHs6Ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8iHs6Ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767505433;
	bh=yAmZ2JNw8rS48t9Twj1AZQdCppmig9svbD3ZY0GVy00=;
	h=To:Subject:From:Date:From;
	b=O8iHs6HtLiFs9gZf6kwQfZST1XOKTMV2vgJqTWThLYYQwUjC2glprXChkGMvtTY/O
	 WhUsyyRw93+SpYJxLALwzWtRtTNLa6rqWmX9qrvMg7w+a2cTk9xMx5fbmGCjjUhsMF
	 3YHSWvtqX45XC7euOmcaxavftIRSTLJ3SI2gcQdU2513PWI5dnEvOwkwgWuqNCB7v8
	 frAIYWg95BOhl4AcC90lyXnR0hh2fEOU6mcE2OT/Va8CfhIJMkoAJUljLV8yOd/EL9
	 1gYOs8aYCsLfkqiiKI3S3JnG53UAMCwuyZaoVoSPjd+Qddbx+seEvtsTuaEhDZcRQS
	 LmCPHntl86CLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750543357.22444.16837780600779430808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47cfa6ced2502a63d81ae5b4d9f5f9bebb06cf5984dd21605f85ac015b85460
Date: Sun, 04 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767505433
