Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACAE182B4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752974394; cv=none; b=K6lHRDWuSnxL6WfXIfxoDKcXMVJRkUacprz5LngB9v9jxFSHdpxQNEzcA7PhtaOVheuAZj/Equkg/qkRloE3DD1OufcxTECrV5MExV3OHS6k8lAF717qx5Z3cVmeuLueXd7KkNClXx6lxztMcKmvFZbTWIauADZubCCryaljATg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752974394; c=relaxed/simple;
	bh=Vu8WDvPdQe4T6FhXfap+Xc97vyRf8qloRr91yCWiU9c=;
	h=To:Subject:From:Message-Id:Date; b=uxgxPb/n2dD7YKoppH1aFKaQ/Wci/qEOOMMzZAZfZeFCX3m5FY9DEYpBBR5r8j11D4r/hn/9Yin7gulmMl+RONSOabr1W3cpXBZrjzYUe9GJVUWStNHlOPJs1E1NE06ixhA6V0372wG+kaPfQz3M3oqrcfvFfmLeQ0xBjGwwDWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6YtiqwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6YtiqwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7685C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752974393;
	bh=Vu8WDvPdQe4T6FhXfap+Xc97vyRf8qloRr91yCWiU9c=;
	h=To:Subject:From:Date:From;
	b=L6YtiqwV6CEVcZ6dn9ykQz2x/jeF8maclGVoQxE31l22qBMpIzLVE2hYgfYXO474k
	 SSGOp0uSXYXibih3dRRKnXBx3ra3AcRWG9wC0q6+lcGqmJuG7VaPBAoKy0TARrzQxE
	 D6kNlFp7CGf8FCN1PD1qft2DVYqZ0nEqQ/jTrGTwy+nBlJeEyIyg92ojIxhXhx8l0B
	 7hOYlk41+6xHMeJ5f9O9GasVSEog6aolDaNMKfRzEEsJDQ++4+47JDIMZiZAnWzI7M
	 zsOiAPJ4W9WBNK4r2ol4AcavxKQtXuFGC53SCZus5tofJuASdPJZ6uMhYrebXLHGTR
	 WAAkf4hJh9wew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C7C83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297439357.8547.7307624362814064546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df93e173d7ba155a18397e018a5a915724565056e89e86a8482e2f2c9ff5cf4e
Date: Sun, 20 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752974393
