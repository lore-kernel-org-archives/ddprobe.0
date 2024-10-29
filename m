Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297EA23BB
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730162754; cv=none; b=O9VVEkp6xiA1g9lTqSv+6rUE4fur8XUihcTsSya6ruq9ZT4A9ZvpRCz4rU0i5b4ijTZW8u7qzM0n/X2VHQ5dnLAQldXEEBSvdSH8+q2DSBodMutlAf7V5L1EqmuJBlVM5qb+fqzg8BAnpwDt6OBuFm+i2gwnTLCHXVbXsmx8aDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730162754; c=relaxed/simple;
	bh=QPWo6IdFcFL24pNbsU40zMIAnm3lXwFNA9gtgOs5pis=;
	h=To:Subject:From:Message-Id:Date; b=L/J9JqDwDPXyCpNI+Op3+2XwIZ/+PrzUQWc7T9dUCLS/9DgRAER7gtC1KcaZe6LRsiC8s3deeKxEyYki+jFKxewFqCX3GcPHJxYfKpE8fWlZRUyoUyu4da5tlZihKbKQU2b0lRx6ryEp+6Yd6JFudPF/uRW5nfGielgSsKdglY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aebp1ej8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aebp1ej8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F71C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730162753;
	bh=QPWo6IdFcFL24pNbsU40zMIAnm3lXwFNA9gtgOs5pis=;
	h=To:Subject:From:Date:From;
	b=Aebp1ej8XYyu2jTorJyrsYtT2ulSQtpWtNvnhdaSF2t1YF+voitbG5eZVdB74kaih
	 5VBUsp6LzX/UhNbvK+V1bMOUCn2IN/ibds5Sz/7goZxW/PkeeI0TXZmUTlQRk2qanR
	 DGfJUphg+bL6wc2jKGORMbZ47keW3HUiUy6Wx3PR7rDxKIkdofsy01jGLcipbUt6sq
	 qqoehOFi4d4htk1DRqnAwSifh6YvzyegrvYB8ADNIgmZ6I7fJaGkDs+ZFG7YvSva4l
	 gOQOo0kkvLA/qONyHICebruE1paI5xt7RQg9SYmDcTu95HVAc9xrqw6f/qZVHJOueS
	 A8tRXee3EBQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E3D5B852
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016275359.16951.7556350023388426561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797d08d31780d244100dd54a100d412e03d4847942660b02a864af3a647b3509
Date: Tue, 29 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730162753
