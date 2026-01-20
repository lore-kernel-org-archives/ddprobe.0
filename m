Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AEE3816EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768893234; cv=none; b=iTkF0us+enP7E5+Bn/Vop9Jr8+QFzByOfkkWo9q3eIR6N7OtBbbYzolpA9pwdP4nzr1QgqZsj3txj2potXZs+ZPbbhf07F9fX5E2I/RDkHVJRlGLMFOzx0r6BPwTmT0VFBdHwOKI+q4pU/3g8tXrMdVOp1wDEr02/3Hcel/uhIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768893234; c=relaxed/simple;
	bh=gGFV4ZNFqwNbfx1n0amvlFcpQcASvJICGiFN9sVIZIA=;
	h=To:Subject:From:Message-Id:Date; b=R5aYuRDfyy4rrvGst5NllYwR53R/Nj/LN6CE0qJgwP8HZak+PFlhmKqQ8nUvq8yt8JERsNGTpvA0TzgG3MHgqLQmhlvo7oqwMTWflj92NROmATLbza8NQrRA275N4/qVMr6MYUuVqCNTJiZVEkMdYpERwBhF2qcK6VvWenle1oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW/JwmlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kW/JwmlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3977C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768893233;
	bh=gGFV4ZNFqwNbfx1n0amvlFcpQcASvJICGiFN9sVIZIA=;
	h=To:Subject:From:Date:From;
	b=kW/JwmlWati5ue7svaEncrW5YutpWN8Z8DKmWTdQZie9mot6XhBQ7ktZVe7KIG5zr
	 gnXzOcjFxznDjZQ3k0PNmUaKhb6lpbb1U24mvwsr//Kh9dZ/RJD3xiQpTBuGBp1fdL
	 mIHLtuNNTS0Gftx0A0Pwasybw7i1mqrCaZ/nNoHNMuD+O7IgFDVqRL5n5zuvohcAJK
	 yrlwzh/akcHE+dA7SqGSBl33CKFwvHsS+NiQnA/bVBktIOthtmk9a1QlS+CieHCDAc
	 YouJmkzJM0iKEOMG4/nUe2USNQpD62gSi/030K7d1OgxSfvPofcnMoel1Z71I5vK95
	 Llj7DOzJBZZ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93128D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889323358.30110.2638388519588301441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9058f4b20173d0ee4fe8b5c0d6d02d6c780875d62821354b10144107bfba48
Date: Tue, 20 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768893233
