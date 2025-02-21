Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D70208961
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740139734; cv=none; b=WPVZs2mGkhU9SsXJFT5Y0XOwUT1nIE9VB7y+hu5bV7V5xEPpRsZfi68UI9lyZ67zWnWVhr5Aq23Y4XBaN9a+c8J4vAIh3VaIg/iIe6XKwuhi+yoOLok+W8rBDLBah7nmxUKueGUPfbe97XTbL2OWfl32Xo3uNWddS3PJrveCPMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740139734; c=relaxed/simple;
	bh=SxLJtCVQmKIQcf0C85yTBDYK37B8aQTlROB1GtlGq8M=;
	h=To:Subject:From:Message-Id:Date; b=NpzcBuT7cBTF/vS0oXEbvJ4DwYmP19/gfQdvaYkTd7zYEKx0UNgWBeoHzyuDrOH8s8sXQW1a11x+uOebyOTYHU+o4p24zM34U5/zW54Z3K/BY7ibu8VoJk+3WjJbak8529LBqO3pNLx6flpZXG3xxKFY3Md1wOt8gCCUZKG1sOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL2s52P7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL2s52P7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BD6C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740139733;
	bh=SxLJtCVQmKIQcf0C85yTBDYK37B8aQTlROB1GtlGq8M=;
	h=To:Subject:From:Date:From;
	b=EL2s52P7D8/bO4PBxoDoAD8+YNV8olLOr1AYACJ9gYG0v+frkR7uPkOWPbpUKaYO9
	 Vjjld91Sb73+HPB4UfBC4nG7blnDRic45+TlQPTxJa5Hty3YdSOfvNMRSd/OlRY/FH
	 PgeDjCtQ8f38GnHuTzXa/cxmasJiwAYwsw3PBM5Ek62v5xrOimlMx4M828g/XlTUk6
	 05ZTg+3ml++o3J71/fSFcCeUSRz8kXEogx+bIjGQbXnZJYJl+GF+nnTi8qSKQSgcvg
	 KuDLkDL1sJpA0KpbQjTIEV0TmrYhi/+giISbfvYzRY4d28Caz9OsqrvkLpxqyGvYDa
	 xOA5JwTqc8r1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97987C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013973360.19699.8580181108089565479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991ab51bfb8338c67cf86b743ed9f2ce9380a7ce342298b364f2d9a00ee85a6e
Date: Fri, 21 Feb 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740139733
