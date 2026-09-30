Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B00261B71
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790727634; cv=none; b=kYWNPKFcXUeN7mFDmS4ZE8usem+z/W6rmTUUUmPD0AQlSNdGwRd2o1hgDBsvJan+OGwQIDrtwXgnTMOgx3rApyUczEq2maWQj31FckquRGNXNcpe3B0jkfvwYjGhgA7xcvJmhWvAWF7VfSbiimwFyp/icKDZl2kHFNRBHp6iw0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790727634; c=relaxed/simple;
	bh=FMTelpMjIeT2iHGA6JL11mIbhfFq5yn1CQomYXmBjcw=;
	h=To:Subject:From:Message-Id:Date; b=hG/Q9icNkS+CD3syeGkpNv2CtEJxzNXpdxkfFAnMtWg0GOGKFnhYBQhxEZNehbGoXXBVjA8PhrBvs8cOxOfvIugQrt6t7JFzSyH4/xEEMcHCTayrXTCqdY6QnDxqdu0zgOWcUof+zISoxnNsXitxJ3ktkb/fFU1BThv1hmvM8Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPLlNi3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPLlNi3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE256C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790727633;
	bh=FMTelpMjIeT2iHGA6JL11mIbhfFq5yn1CQomYXmBjcw=;
	h=To:Subject:From:Date:From;
	b=VPLlNi3bQpx9Q5y7SzfZgNeirDvIwJZE2rZCkka7k3atemFNqCmqeUTDup6s2Fxyx
	 MN91gzT0NGX0rVRvrgw1kSSdw/xJjzqnxCk3Jw1mjJZ/kPzmHUYdp0h7o8aQjvZRlt
	 1JOwFYaZEMHo54LiqfduNapYiA5kS3atpIG1ghmYC3e3nEMQQ1CfbvrQ+3/wD9Ykou
	 cnI8eea81s3XdOf0/H3Guz1VV2O60jvL/0qcUAZ86sH+FaRdWv6kFAHB+QbmDHqwOc
	 c4wKoMXYyk8Llni37xGLjiZbIljC4bqAsQMhu8Zb84yP3HYrY7T7zfgdConVbI8iKt
	 /VTOqXFSeoLaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFDACA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072763369.30725.14526057837586527165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2066f4c089cd50a85746803291e2114a2f4ce897734a615cea3ae6cb4c9793b3
Date: Wed, 30 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790727633
