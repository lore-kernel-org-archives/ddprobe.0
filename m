Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4834943146
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748200794; cv=none; b=c+50NJ48SLGok7vhC1DoDL4f5Qq2IuKfyYgDgbgfRPuU8CMH/naH79baH7kZbFDcEpVb5mFIGr9t3i+gM9mrmpEO4R3Z/L4yF+XyVZCVcXXFG1sQm1QzGfXiACr0fFCwS2O+cKthcPYu76A7VCO0AbSgUmBTRsKc5YzvqFpfTIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748200794; c=relaxed/simple;
	bh=F+AZ8r6WMuJeRNq0iWMDE0tGoqS9orHSzvG6QzanrI0=;
	h=To:Subject:From:Message-Id:Date; b=Qw7wbk1ddu7JxRBcdHIoqnr0IkN6Julqt122IF0eWsX5hv7oDTusbP+TyQZzLNKDwEUb1wz4TJYt7S+iRw3VSN97ckcuJaaSabVWB3kfhqg94rcGVzUCRm0aQ6wyu+LhzORlCJbTbIrGbzwjFFRsZAojhgac0TBD2orPS0KwTnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRWW5oYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRWW5oYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C3C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748200793;
	bh=F+AZ8r6WMuJeRNq0iWMDE0tGoqS9orHSzvG6QzanrI0=;
	h=To:Subject:From:Date:From;
	b=gRWW5oYZEDFTbTwnx80BOFY7Mmmiglbd7KukGSQUXYpXYD8MaJiKWLuhGoMUB2IE4
	 JqDiRaovD+VC5wPVjhw0RanDm+yX5LUJfFNO5DGBkY793OZ7fbd2+aw58qZS3DcX9n
	 GHX/vqAAFvAVoxjl5RJMHL6G9zMu3ZmOpwFONo2NwaaBWLKwcPsZbiKMwdTm5Hd6mI
	 KE9vCiVqXE0GKFGcfWctgQ0Mk13cKWvfwsoiCrWUoBuiInMJb9/+A1bwcMJBqMXxI/
	 fIBT3AOtVebXFdILx8y65A90i8z34YXcYgITWWNuVGKbyN51a7iQ7dSVapMm6oQsAG
	 gS+Q14MsL+Ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42CC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820079357.26041.10098954920774907091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66521792951369c3f623d2f8db295c492b7c05cf189fa4a5cb3a0d95b59a57f
Date: Sun, 25 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748200793
