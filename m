Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D03F6A008
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543903; cv=none; b=DQGs81KmqNBM1epoiDzxToNPpKR/JzSjV0ycbFmgKquGDoASgxVzyWxUsPrDRNZAGRv+A3nSG8+G66/m3mg1/04W03uBCvD5y6ri6nNHz8CYPwJIb0nbG75YsELT0LZGeSFIIkkOA4K+vz2Kf0I+Vfh99HtNYZuMIv3mpiNgzP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543903; c=relaxed/simple;
	bh=7HprA5bsgDGXqVQiuiBrBSWtADIp0ZjclCJlYAqSTok=;
	h=To:Subject:From:Message-Id:Date; b=QDaVNADOzTNlAZ3nCoHFI6dJfJfALTnXgq53NnTs8qCWF8byspM6oJuGEctMc0xdsgGixyvxNxGJtPjTuW1sbN2IkGoE1z5iYVoLtBJ6ISeNrb1iizEJ/8R1ka7u52HJTp1LI6EIIhOrho+uF5HWUNq7Gc/ogM4oD+z0mKtb0qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eh+KdFqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eh+KdFqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA13EC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718543902;
	bh=7HprA5bsgDGXqVQiuiBrBSWtADIp0ZjclCJlYAqSTok=;
	h=To:Subject:From:Date:From;
	b=eh+KdFqH3bZ5JfbV67W04ta/h1lD8ImH6nehfQhhNY/D+eZMySQQBvvdesOM/U/6v
	 Fg9G+FtfTuqEnLcwE5bpYdep4+nTTqol4WEe0lz3OJhmkB8IH0I4kT3VtMgslSde8t
	 HPnAx3jsl6ztM9AdlSmmteIZqSKdcnEZ5j7ahqhfbT1eGFw4V5SwUdYjkramNbRDfP
	 Mzhcpz32Eh0OWOd5xpoIjbXesbRYz5kZp5S/kaVEuhYpeV4fW+pO2d1RVum7Ev+oyS
	 st1g50ZBwb06lj3nTVS3APUJpy7/2yWA9sZ3FlTDHLDgVOU6qQEIt99LuTQtig5FZH
	 aLC0EhMI4m9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A82C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854390275.28869.6140267651377052105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb12ebeb56facb371291d5796cdc66fd1d71334007fc38e806578677edeed0a4
Date: Sun, 16 Jun 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718543902
