Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211CA2F6577
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783450114; cv=none; b=sGLlzgvs8/TZxAcp20bx+Jk2EiFLw12ryCNpjzXuohZd5n1dhlvh9dXnVPw4LtPlWE7NS3LBPHWAseiq5/afR1jlXosdZE6tm0svCHeY6RgSpqcd0n+vmP5Vp+BEdwAXpPU9oGTvUibJwJTpWLMFYSxo0zGT5MWKmCFWhArZY5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783450114; c=relaxed/simple;
	bh=AAIyJQHPGNWYvKWZyL0R4axYElM4iRTgtCu4jbJhW9Q=;
	h=To:Subject:From:Message-Id:Date; b=DoVkmBOirtKYqh+3vVOMM7OcYDPF1b/ZwoQYXKOwxGo7y3uEKbb1gWrsatZf0H3V2ES39rxRKXcJ3Hdt8w+HBhHJfZ4ZVS+Y4xcE1FqGYS5uOcVtqguA5AAAvRpIfTpen2vkIo5Z8NHdbMuVsxBJazbNIydde7HK+QKYPN6zcbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqGfu0EI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqGfu0EI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B52C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783450113;
	bh=AAIyJQHPGNWYvKWZyL0R4axYElM4iRTgtCu4jbJhW9Q=;
	h=To:Subject:From:Date:From;
	b=sqGfu0EIpb3dC/x1FrDwt93hr6wAdt4vW5LhQkI1ZTFbs/tulIB7RuYChCBfkyE+K
	 oT12WvqZnUJfZub2m6TNtUTf+3YgHWU9D4Acq0KvQ7RWXW7F4xXhoZxBtAN/JjMZNM
	 wJj/v2D/pZtq61+5rIu5NcyqFzpz0ZAO4Mp95UtSUCzNwfKfqqPc0zRhkh+LfduSL8
	 qi9dbi7xye+9+GD2T//d+9ikP7bV4wb1bg6BG3Otg5hTn1maT4O8hspDg69Nr+uFSE
	 gAmkI72H3elpx7XHC3oxy+qUhXUy+MrioQs2/CPIiI5yON14w9Lr9hZr94AiWgz8V7
	 02oMUJOIRDOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C0DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345011368.7137.1936841671709429341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191bfeb133933d98b6ee9b3efd6f13a8250d43b0fbe4404a023540eb556ee4fa
Date: Tue, 07 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783450113
