Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C71215055
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753393794; cv=none; b=c4F+Mv0HtENjei2XnEikYiMhu0p55seRSpKUYZSwItb0L9O8feH8WQwrFbSba3d9YCDgM8aHBKc3dNhR2Fx9OEzg+4ZmEAzw7fVBQnYZXfthAfVdL/n7+PpVaN+PdNLSZm1Hio8++Egx5b5eBbxExiuRfQdc6+1KN8KVxmenhRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753393794; c=relaxed/simple;
	bh=w7Kn+/cuwbxL8hHFVDwAkrYDWap3z1Zp7PpyPZ6vffQ=;
	h=To:Subject:From:Message-Id:Date; b=f2R6Ofa2WWNr/pJ3X+YMdIS4nAWSeehqRKUR/8DW56l3noxTUDAZJwO94BbBxLbyGZpJ3uomKEJKM6iU2SrCWVeSUWyU0F5tKjX5xP4sz3HbSN+FIek0Nyq2hjISAgpA816Wa5lFGtyS+1aSP3dEzWwBGOaF0iLZ/cBivCCuLqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMfdOjAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMfdOjAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E8C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753393793;
	bh=w7Kn+/cuwbxL8hHFVDwAkrYDWap3z1Zp7PpyPZ6vffQ=;
	h=To:Subject:From:Date:From;
	b=hMfdOjAiI0P/KXaxoT+HjtbMAXDjRuKZQ7tOKXuIG5P7iv8mY5Wu9ayEcIN3gVzlQ
	 AtX3aykoreSt2PDUrCKKwfU0JpfmL0eOjI1WeKxo/lSxn4n3C/3xAvgkN/7+wZM36P
	 Bk9bsNtdWvITXEh3wZfIgrj1umxZTHzvUnWzVwtWcmbcE1hAb6M0O/dDZpeHXl3YfQ
	 OshSFI7KepGFOuvS5oOzVgBh/G2RTYigvZ5UhEoDumfh3YZogUZ4wgcDm4EJjV/TDx
	 gT0xMQJ6xMz7D/SoAilazKcELQlQvjBMX/3ft+v2XUGEzSmL+pwrZYWQ2YoEfmPQV1
	 zAUuqkYY2D8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F944C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339379357.16579.7402372792126737223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6956c6fb10182dd11a9421b1b03e9e032bae751af2edc8a98309fbe56de7c3
Date: Thu, 24 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753393793
