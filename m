Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21604274B53
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767772434; cv=none; b=mhwKveob0C3sM8aD518dQKNXB1cBAfcg5Kq9DeLMqRvaSa9fgoTW885pUSCMllMckeQXPsMyRtgjP5pzgwADEXeDini5vdtwOGgKAaBBrvPqO/53Px/Crgre3wMKZszRf6by7If9IKqmw3xZTPiENRIukUIU4i18FG4i8HSIyks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767772434; c=relaxed/simple;
	bh=iVQZR55Kg5bh6hyRLYlxucOQWiEm+y00uxYD/a1TN8I=;
	h=To:Subject:From:Message-Id:Date; b=EyeaTAt9JVAO9y50LRsUyhAL5Ebxl0kJj9dYmOSU4g2GcXtd/eVLnVHuCdpQ9iorjGV9w116t5fFCH890Iv3ke+2IwwMpfIrT53rMJnpmJrtjKHfre8CbK7cyOP3TszPj0bcBsjcJUJkUc0gz61BRviqWukazZIypbytag+Zmq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usqb7ChN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usqb7ChN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEBFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767772433;
	bh=iVQZR55Kg5bh6hyRLYlxucOQWiEm+y00uxYD/a1TN8I=;
	h=To:Subject:From:Date:From;
	b=usqb7ChNkgfjckqCgY9id/h/G8VUPxJlrfMMK0gheHoj8Hw+EpXDHfrSJfxfnfqVw
	 8QKeAqFxkDm9ZOhHgF6kQYsj2dU0r0tdEkeSYON9kiqjwDJXA945FMm2KU014Z6VCG
	 q9wiA5WKcX5tVZ7JVyRcJlAeZfQExue6U+ImEcgKyv3SCNGVIStYdZZLVf9NT0Sh5B
	 CVFgLZ1/I2YUWdy6aSo99e/2P7XQiz8NEaDEfbVySHrxUg4oItyKbAATmugyJBgxO0
	 AsR2DsIfklWO/k/cvE15vYgegl4zEGcc18I24cdZyEdBNbxOL87kTy3hx2RDuXrWzp
	 YSefJ1pF+ullA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E86CF6BF6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777243358.9768.1113708919791590984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e0b779b48bbc1b5eda8b318fda91926edbae0198d07221a067399255786c1e5
Date: Wed, 07 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767772433
