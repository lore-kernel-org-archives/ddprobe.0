Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512A0525D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717730843; cv=none; b=A2P/TJVOWtSfv8a2KuYICA1dhPuQ4OpxHJRaJ9GgnyzcGhSdGWsfU474GSS8VlKOV0Sv9M6yWW7YgyyOOSLMLydeP36t1LDSaNdeOXswe87EnddKB2gzrdRP4EVEeTgbF7W1qLJ6I4BSSTbA/zJPAJcoGnqOMeudlhstRmUyxpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717730843; c=relaxed/simple;
	bh=c6lDvygRJa9rqazMQTl1d1YpBu/5CSF4fcPn7NJAtNQ=;
	h=To:Subject:From:Message-Id:Date; b=YfUgdlusLBWHeNP2DuEZm1Z7xn6fP82+oK9eiU8WxZeunZskDUQ4CKBt0O+ODvVKYc08mguD8ixv0CNqSyFsL6+U+S2YIi1apcjIJ8YH3wOX5aWonMyVb/Mjwld/5vqwIbIfM4p3elTFIJyzNoSXYC0yEVQDJE5X3gRYhMiVt94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyjcqqhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyjcqqhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0295C32786
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717730842;
	bh=c6lDvygRJa9rqazMQTl1d1YpBu/5CSF4fcPn7NJAtNQ=;
	h=To:Subject:From:Date:From;
	b=lyjcqqhRWhkcrqSgP8/C/JrjbM1tkez5P7l5hZ1D1gAkx4vLwCPvSYvbfYvmuvlTM
	 BZjoK3A65zZpximrgFL1daIGyN5TrU3GJaX1/AndljHbn2zHlCnlxdRB51/lo3BuqV
	 9wNKFgCCm37UuEIIvy6t24AjmOndCnnkQol5eL9kXMxhzoSd8xoqV6cx0v26TYoK5I
	 PqIn4Bs41j53bE/FPHds+G5DIxP41anNW22e5/5vMz58HAKDVTrauaz6RpzHh8iBFc
	 bKvgfSM3OGX4IXj5t2dlq/MCzzT9I0BwWjQ8W5MG7Syty/MJOYH/axdgo1pbczpkM6
	 uo7L3PXDFQe9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCB2C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773084282.5156.262241907261414190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a124c1be50f71c89ea5a2d58f8a3cdf947dc0ca10342ec038cd576f5117ef27b
Date: Fri, 07 Jun 2024 03:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717730842
