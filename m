Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CBF426430
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785792034; cv=none; b=aid3b7Lk7IqplKHTo8e144qHVHLC8THK64+2RHUC7DMDeTtzJZPwu+1DBfbyP7YxkilDufhxwfVf8LAySxegAUi6+GlQ/b5TNvLV7e28aKxCd/rxK/+b+pHbZUBlaJ2JgxIgEt8JYQt5/nMfEvYeguYSd6DcdiiVwY8zbGUgsqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785792034; c=relaxed/simple;
	bh=4tHkjvmLZUpqhUC/7czRqeLbTgUUD40/j6pb1dh9960=;
	h=To:Subject:From:Message-Id:Date; b=eCC7fJx0Z4f9iPXgRUvAAp8vq+QNTZsjoJCmecvfDKwxVWZIM3g48FZcff2lmT/KCaCTlUQq2ILKMJXpSjrhSP+B87u7RKKT1HRe/RWpDR1kQlMXOWvgsyAP7JXh8cGt6gkG7r9igpDGr6IoB2BPFQujziOswuN3YjbUwCAKV3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qc8Iy0ST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qc8Iy0ST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C4C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785792033;
	bh=4tHkjvmLZUpqhUC/7czRqeLbTgUUD40/j6pb1dh9960=;
	h=To:Subject:From:Date:From;
	b=qc8Iy0STDCllcWNdAMBpce6fBXbOsmg7UwMrcDwdsSLdX0eSA8ctozmqLAYEpHs/L
	 hFWCf2FQgOH5i/Htem4FzUOmJhpNy3b8uY4px7so2DYB+Fy9FosktVyge2NusIiMwp
	 lBrJGap0T3+rV7B//sffDJSCChpYTWyLZxnqwOQjzAmqmrkDuHTQgtBjeMNMQW0Aj9
	 YyWJjwgcDGdc3ugQtdtbGR9q3LOPiC06eVqV39CEewpU0OqhVDtPYLReErVnGVtoDY
	 YdI+FQvFcnSvN74Lgo4RbRGFi0zN5IMt4ifzJ4+v3yywcfHvBGDwITKGhBHQz7dBVL
	 UMssNYKAbbinQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0551C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579203368.18780.16122214262260231791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0309d8605760c655700b178f1ae89413493c9632717e71f13ed0853708865d9d
Date: Mon, 03 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785792033
