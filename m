Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC3122B8C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749556793; cv=none; b=sR5fvNJyujmhbVuhfNfuxVJFSu1rXpbxLXVSwyhGCSEsx7JxfQoOegZMUwaDOQ9KFDdSYKXIl6cOsLlNb6gChFSf37KRJPgekc4nlSaGe0JUMfoqfBFupJNX1sU9XlAlGpSp3bt/I0AslXHjRcfHQr5PuGFC6Ibg55YfymKn+k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749556793; c=relaxed/simple;
	bh=7adklBEtmidEWaQR9Up8dNh/6Z+DHzNrVrWy9CbH8JE=;
	h=To:Subject:From:Message-Id:Date; b=RQMy0MPy/+v5O6M1n/nqrFL+PqV0SUOQ3Kk0iJL2K2NmQPz6wFD/NjEDloLt//9cIksweiWOFYOBUrmguhLhnfhKhqWGOKPP62VyQbwEyr1ZZ7zMnVsQNeqIAUyGLf3RIrqTlx3ohq+1CvEUKNNeWY4n2q5YmCevux9rYJ35K60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OigAALrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OigAALrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749556793;
	bh=7adklBEtmidEWaQR9Up8dNh/6Z+DHzNrVrWy9CbH8JE=;
	h=To:Subject:From:Date:From;
	b=OigAALrsESE12CORFzUNtws2w5alY8y3duNA3BmeNdczSD7mk5DVX+0RH48g/QQqu
	 PPVqr6yQEXRn+AQ5DydeuvDQQppC8yyPVGdzv0avaejdwi7eT18P3Yo5T3Ct29uCIw
	 Elra9Dt4odc8GOgYfhxBxPQP56yDh5kbRlRkKwDCDPq/eZh/fknRlp5+9x3yugg5sj
	 jYvDzE+Osk0v9+CmmOoVmBgFlVf/WYfjyPt2/DaDlTwHcZpBB/ttwR/04/8c9uLyE0
	 AK7GBLJiEw7TxTBkvnF1iOfLb+VrSSh7i/Q5hfIC63stznI15xR/+ZI0EAHV7ywmrO
	 okkWV6DNg8xuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC9C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955679357.23474.17934051244168465729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50622b1f77f92414b88a598bd84591a080f96e276d5d71f80bdb85b66880aef
Date: Tue, 10 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749556793
