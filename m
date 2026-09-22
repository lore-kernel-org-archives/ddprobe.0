Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2814E0B84
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790060434; cv=none; b=EHcp/YQKpe86H1HBAas9reSiKToAJq673q1C09mD7ov7HdBb3HoQbviShA6L+hD0xN0EDltKdBMVAu844zGbVbpgwnCvlx3w9AdUTPQmc+0E6Jkba2soqAcNQnZ4pTqjxAZ9hDdlVhr1wJZ4KPRPjYmirVi9Tsc35WAJO0wv9Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790060434; c=relaxed/simple;
	bh=lF823jPVfn9EmyGW9Avzwi2iYWij8IFsOVGQOSfNTZ0=;
	h=To:Subject:From:Message-Id:Date; b=u+V0vvHQA9SIc/bU3DenUrDyZpHmkSbcR6waDnyppmjobYbvRmKlPkoYEYJJYwExaaukwoMEm0RCwa7Q6xZSVeUPJ1+b/YfFN2a3+eV3VMnO1XnNfS9gOiZZxwwWrSFNE80bgBMB1X51ztEEjMt/Y+c2ag2Fpa1KIh3Oy53yKTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHA7IMPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHA7IMPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D06C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790060433;
	bh=lF823jPVfn9EmyGW9Avzwi2iYWij8IFsOVGQOSfNTZ0=;
	h=To:Subject:From:Date:From;
	b=GHA7IMPwzZkDIyMcUbZl6K6r1TDKBXty1BurikjxszBOyeT5MWCcQIs2X21CcbB/N
	 QU+tDyOZ3q6z3pw5vjl+fMGLQIS+xxJnp8KFucV6aabjTrrHP92PLYWHAgxbB/uTPE
	 ozdyyUw/etfIzR+Xzxu6TKRannUI1Yycv7/Zz3maGNOqznkIZD73mXg0cQvCE64UJj
	 5GM94EaF60dH6C0Q0fzpDyKIBFW9axt5W1QlcHb7NNQwJZo3hcR4qiBZ7bSIwOpyqD
	 ZRBAkJAhdovY/eDEmhNFhJ7pu0W6eY5APnImXa0Ovlf4Wml/w7muzvhbX0zQDt4W7C
	 rvHzrVvIh+p5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D8BC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006043368.26911.7115485205079255387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c019939e5a10ef12d23b1aaa22af3b3215eff6211a8bdd192f6195df93c23f4
Date: Tue, 22 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790060433
