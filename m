Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD01DFD95
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746095994; cv=none; b=jGE9xPr8kIgQSKY3K42h/yz7d+pOm/XYX+54BS0Iq0RyqHsfNMtGRd5Q+sKCHzdnFUlG/5Bje+lGpIFklutbr5atUs8xT5Y/2oVLiOUQiwX4er1FH6ZHmb1QvGh5XxbIlWAu13u2VY8mR/SsPaNJ11DjkNqdZPSPnV26r+Us60g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746095994; c=relaxed/simple;
	bh=uQEEDgJmd81nicdPJG6uNNrDKSqnUuVEscvboHzFouE=;
	h=To:Subject:From:Message-Id:Date; b=trL7nzbL79WYRGAJFQRtLap3QQJgJdPqP0lMS6I1bouWwP4kfi6crj2O6YMccuD2pZrCSLLkhLZuqJaevpHc8mHxX4MESgGqsiodUGS23ERI9AlPKBz57fYKw84G0Ky8oczRAxKBM1Jd9jQ3dsB48swfzGGU6FKrvr7a68v0k3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZaxJsBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZaxJsBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D8C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746095993;
	bh=uQEEDgJmd81nicdPJG6uNNrDKSqnUuVEscvboHzFouE=;
	h=To:Subject:From:Date:From;
	b=EZaxJsBty8sbQPKPLrCCmtjZnIbX+g5IX8TauxfwlmrT9q5gBPD2s2I5qJSPC4GyA
	 4u7ctKBfmdr3AxKDBZZs4Z+HEkxD56OMoQJ0fkJMePsfrqc7/J7lJ/UYq1JI5Tt2wN
	 nR+Td4DBl2j3jYa+TmMb4uoXL9Ow5oIsPX+M0GBD8G8d1TavL40fZbf1xb6hEj2SpS
	 m1jqfvGr8gncFMTggsp/EFD9IuH9U3g19/uyJ1ehRE8xdCmJ1NVihMtrq2XV6jvc4Y
	 JIExa5IJEyw2i1NFFHPKf6jM9H9hdjx/Rw0wqaClb6bVG7M+yEi83ZT0ZvqQaK7d0J
	 phyBG7yqoB1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B2C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609599359.12213.5111568383665328002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae2b7181b1019dae537df70be13c347428cc4c592e68fd86fef5676105f98c2
Date: Thu, 01 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746095993
