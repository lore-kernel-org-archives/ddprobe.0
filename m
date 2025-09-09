Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CF02EDD52
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757427594; cv=none; b=RQKMzXDBSbUzF2chwunX4Wo5w4hUxoQ3QZT06ae8SA8tPHTl4ookW2PHdXHHPWhnlaF+tU6TU1yzhpJ+EtpvzZEttnM5nXhJz+QKZFvomKFo0O8e12DlynyEECYygzKLisj3TvGkWv8REo/A0hrKQaEw6O+wFn1WGb/aLBVQtVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757427594; c=relaxed/simple;
	bh=q6GJolmRjJnZARoDVWWAIjyPTonk+w0HbZiL27Hah3E=;
	h=To:Subject:From:Message-Id:Date; b=eLj4Pjx1yiZ++LFguJho0mItgFEOPYj09DGIF+NARqYHd5uBxzGJvVWcGUe47jc8/HjR0Eue1cKrNoqsgX19efl6ZlW6Sv+Ez4uzy7I114/20SXpN+6t0ry28JUAE5hpnHgsAuQauL/KgGZU8i5RkIGWa5MKRcAGm6CRWk7JZG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SynLRtNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SynLRtNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF3C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757427593;
	bh=q6GJolmRjJnZARoDVWWAIjyPTonk+w0HbZiL27Hah3E=;
	h=To:Subject:From:Date:From;
	b=SynLRtNn6pzDDTBpKv5H5il+6r+3fw4w37vf0wIM5hI1x2xkXBBYsF/TXEgTGW3nq
	 CKKj8qhUJteRrSje8BAbLmRVlSjFSZWKCTKt0jLUqAyc85Kvs+FxH8YY0pbs9SzVuN
	 Q13LGoNLviGW2+nsVxay23SFLdozIBE3cAz+tlTKh6hpDkEWSivpsNLwzsKtHLj7hT
	 ObP0srwDf5wmwYB7zkiSx5cRi450VpbUkFFNLjaVnjaceXvrt4ZUL/bCuimOrsL2fT
	 l/S38vB47ppGWGO4QS0eF9DMapfrUR4wLZyPCUXPqXVf2asswhwWPupOp044f9Q13N
	 4Qeuf4SyAAjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F958CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742759357.28403.8501194357430407602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5d28981f5bdd181b52dc256fe23f39cf931a0cfdf82fcbfdd0be475d6cade2
Date: Tue, 09 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757427593
