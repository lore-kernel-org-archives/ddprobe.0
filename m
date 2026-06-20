Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466F1230BDB
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781998594; cv=none; b=bymu/k3C+2Owl8ORAxkxyrDUsP+/+3tlExdVKFRWY9Kf9VxGnVzozmWYrEC/LkOz7UfBsP13zuXRSc6dya6x27mt+2k8K/mHSJOqgO0MIR9kXh5WfdsMvNs3IHAvfOuxVxRQRxRbdo72aa2l4U4hZ6HiiAsajUe8XYmTuZB3hbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781998594; c=relaxed/simple;
	bh=FA/1HSejFvwfJlxcdiCdJziCSmtxx4gOjPeZAO+ZL/o=;
	h=To:Subject:From:Message-Id:Date; b=A6PKF61zJuTn/wGTKaDqoaQT+iSzEA0SYsnHFfV2UG9FKiXr+d+8z3RX7sVjH/C+BQDtTFdhYbFPhQsdGSqjWSVEDkEZHDQI5Io2ZqBrMET3A8T5LtFkph03wzQW79+rptwbF1CJMElbbwHRqHJb9uMD+Lq25EbTmGOTkVFxaXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8siG8eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8siG8eT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2516C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781998593;
	bh=FA/1HSejFvwfJlxcdiCdJziCSmtxx4gOjPeZAO+ZL/o=;
	h=To:Subject:From:Date:From;
	b=b8siG8eTcFwd1USkiRF2SZ+nxvne+5paoReKNjVzkiJe7ms6NH7tOds9pwJdrtPxG
	 LGIrfFGNpzpOH9gmQJ2tmBCjcydLW2wUeik2oGDqVNug89ezuqFCxeT0Ht9zYKGuPL
	 LvR4RxSg8OHsb7QST6Yhmus0weNsJVEpRYtQLBJhFWJz1jXkem59GR0AyNvAmfdE0O
	 KwzHUQnQDHbz7u+8Uy4DCu2bYfPU1q5Wykhu6+wJWM3/XCaGDGcapN+dyY6zcD7DjG
	 ygk6HgcEn0WwH7Ci12CvGVf3ILHDAYsVEujLDNvI/kJkPWnaLO7qLs08RmgCYz68iy
	 +qVjkymfzmHog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF360CDB466
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199859370.2687.18241020204337487291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7f31ca83703ebc00efd5ee8b396dd78f1f121841b685bf464042954da0deca
Date: Sat, 20 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781998593
