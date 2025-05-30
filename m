Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31448156F28
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748588994; cv=none; b=PW6tlv5aDnDyBxvWjvGLTIgCvNwXayQcZx5icE000CcWhSep3FnKnoMJjJJiy5264GqyY5gok3X9fpL/I6CSVRACZ+LCDjhi0cn1sN7+m5/nt+zoeQ0K0SoG/WILZqHcWGrj8CUc9Mt5psTDrfxaMrDUcrts/fQcozF/ixgF65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748588994; c=relaxed/simple;
	bh=nhwSAlQHNN4zQIRxKGjC2UWt8k2qlXRHrtsTpYDaIRA=;
	h=To:Subject:From:Message-Id:Date; b=OOZrg9ZmJIsJPkE99+bcuLAbBZfHH8WK9Lcgzo2Md2gAHBSPDCWRDJsbmkiPOZzs5L/pVqpkVMU+7/X3c7Qf9z3eVBu4MW++is8OaKG2ZKx19ZWmYuTqgBfW7Q/K/k3ycyEJ9HIW3hORgokdeJqoJKgfBaUKDVbipd+Fi136n/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+ifh7eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+ifh7eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036DC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748588993;
	bh=nhwSAlQHNN4zQIRxKGjC2UWt8k2qlXRHrtsTpYDaIRA=;
	h=To:Subject:From:Date:From;
	b=m+ifh7eKZkJlTlURq83kD7eFqQvGK5exzXC/uRR6YgN6ZiPiw76PO+MRwl8nj2Wgx
	 VESzaimXKGQNJjjvWaTlwZBXlS+KcebvM52Kg5cKW4yi0rTfwC8Te4f/E4gfIUWhhK
	 MYTQJyzy0vQGrcG9R2nA82Re1NstJovtIlDBsPpBhCCvZEAhwcJzdefBOk7cjaolCb
	 A+BFZTNoaRubzsgmipQ0LZ1ESAyWYqIHfi6M+2r3lfIGJ5Q86X0mvy/T67Z0H95x8Q
	 RNnWjB0wGuM48hreF+7E2+BiCKfWXw0TZ/9l6O00x0Rv1bi1lJtBouEuT8TRVBnC60
	 X+Eqk1QIJ4BAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDD7C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858899357.15719.15306680515660517127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb1cede4376469942989b606bd92e48a67e573a8a254b1f6d26e4d2d8e49b4e
Date: Fri, 30 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748588993
