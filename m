Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BC33A6B6D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780307674; cv=none; b=oNlEdl8tuYzpXp/pRvSUrDEALVLW+dkx2t1AovtPqC6Y2o288xJ0kekLd4aKzzQlgaZJLXBIPKsNXwKvcL0hbXk2IkKfy7SlU5vkXhHxVJZVaLQyRtnDnxRs786Xwckf2UvsjB9lH/sLYr6+zHpqLH+xuMy2q44bHgp/bFx9rOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780307674; c=relaxed/simple;
	bh=MKztFyKp6aFwOXHCt9EHTrkmNA7JNDcKD/VoJcSgCRs=;
	h=To:Subject:From:Message-Id:Date; b=P7bPXSiloLm4DsK/9L3URxFTt8CCoxVhQCHLaK0WP4ARN9Zy2DMhg4UH82rHkc1acOLBQxiNMfjM53NnUMo+pmSARSNNRlZST/65sqWjKc30FPyMHrNnNyTFboI1S49ojBMuJP7QrJ2QL0MNJOuBCzgWeTX7zxSQcZ9GlCZeasI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqu0gf2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqu0gf2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BF1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780307673;
	bh=MKztFyKp6aFwOXHCt9EHTrkmNA7JNDcKD/VoJcSgCRs=;
	h=To:Subject:From:Date:From;
	b=Cqu0gf2ZGaf8Eri+i8QdQfrYvYQPCbIts8FhJfmHqbD5/EV2zH6M17ekjkho0ABLq
	 N5OKgAmSyVeRUL6i9FarxsWxOII1opvDRyv4gun72LeXcIqMffLqWwFpE3vaqfOzVT
	 Aejbd351cidZ32pKVXyO4ssZNMdjw6kAdefiXkEIKMAfXRep6R6T447GaaQzfqHHh9
	 MHwQ8ZQ88IUZ49QKpr5g/g+fOF0sZa8ga4Fdx2vCJ8c1wZs8tPEuybx8wqwSJDNyOf
	 BPAdAOD1+iIHYJ9ltfwnC8YKwvv5vu+FMAYwZovYd4Ov+XBMM672vJlv0qjeVQQ0aK
	 SWgAAaz6L2nhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85ACD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030767369.8207.13922318763675059041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c376cf94d654dfe3e49325121a8e4c5ab4afe5a0b1ab8aa1e05536dc0182e5f4
Date: Mon, 01 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780307673
