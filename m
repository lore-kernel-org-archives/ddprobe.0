Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1482120468E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762767594; cv=none; b=LQk7lK7RDhb874Gb0JrsRaxCg4tTKtXsg36GNI9QE/xw0lTdmau7RdWdgyEjh1KN8JcLcinlcfrTz+KrUm79kYDFk5vcmB8Qz2V9v2xmW+kX0oybdQpXDIY6ResTypYxvOlocLEi1z0S3XxFInLF53u7nZNABnuW/uWw7OlSTp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762767594; c=relaxed/simple;
	bh=l75PZdtS6eAgZftyRqpLDiMdIl/NViajXbm+9eLNzpc=;
	h=To:Subject:From:Message-Id:Date; b=TAi6tD1kGtdU7kFUYYndzTCNOZZZdu16eHpB96wYh29Y6aDDoiXkQbZ2Xmz0GnZPWarMucGhT4rLmFoPM+4GwbiYLECs14M5UmFvbCSP1W1b/V67y5iIkTYYtXqg6IgV7s9y43bD/rMf/lZYmOauMrUjifjiydqreXErh0bsWpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkB6Lydr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkB6Lydr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04DCC19422
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762767593;
	bh=l75PZdtS6eAgZftyRqpLDiMdIl/NViajXbm+9eLNzpc=;
	h=To:Subject:From:Date:From;
	b=EkB6Lydr2BPaENqMM+i+cfnQATdzrLIH1EqNxt/CM9MAFn1D+ekR1Fw7RnF7kqE7F
	 F68HNWqOMMmu9VzoPuyZwVMDKlpDQgeu4kMIxDPINxpAhNZwTR9zZgTFFQ8exG7Hlt
	 MrzFit12GwnVv0j4POF4SanoOuxOLEDGPsqC1I9btaqfLCtKzmKrP8P7V3E+DI4mLO
	 4JfYCSSfeu/DqICrwG0ZQpMIGGVcz0dFc640w+MRESjna+9d6in6jZ3L0Bj7Two2Uw
	 Ue57kXCkuLaJeUg8IyQbsiGJJKzUIKSdykSP+YVz+3HD/SMHnyX1V0LWsZlscFzA9l
	 ToR4oDCFV6Ksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9CCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276759357.25938.6297296455786332936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0623a9272e0f6dd7048b4bba9edd7206f2e267927d72c79ff0e5af4c2b3916
Date: Mon, 10 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762767593
