Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5664617A2EF
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744580394; cv=none; b=uzxYKwm6RrwrPqpnECOe8mLYbxWOettJJA9wSab6GgLi6/pnFqMrjjdM/DhG0PyGEMDduuvQKXZbMCDSR9hh0SexnNzDi7PRMZWBFfUPvanPCdR4f/8bBb0t3H3g4P6Cq1FREpvHfzZDsUt2Gi/zUhF0J2QltHJgv2hRlCyndbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744580394; c=relaxed/simple;
	bh=5B3GTOhq6CWvU6x2HaxlqU9rQh/yxToe/iuBJ1i+e9Y=;
	h=To:Subject:From:Message-Id:Date; b=YvXpeGCCIfaEUtBHnZsDf3ZBMMcrKuT2SbuB3CnCg0Y5TC6Gz50HO608Dto08jTuTDSbAGEOkChHLLSh0mGr+jzDK8gXbQqGkIRgTjV6qwaPxQ8TCMM9RwXv3H/O3V28LeQsmmLjaS56B1XKxmHkKIf+LzvH+p+ilkmqw9Yb2B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvYF0q9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvYF0q9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43C6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744580393;
	bh=5B3GTOhq6CWvU6x2HaxlqU9rQh/yxToe/iuBJ1i+e9Y=;
	h=To:Subject:From:Date:From;
	b=tvYF0q9yEqXFz0oARVB/dFcq+khjaAXd0GHpT0OhY5jHkrNZLjM2Daj/TSJpP0Wix
	 YOn5Hb9wEqTWrPMLsIPl7Ej3ojbW5qErF7yFp1NfDTFpGE4wOc6i+ZCaLWC7SILCyI
	 TQlz4HGkHTthzG16yL381ikCNqBJsWNdyDxrYx6a8fsZP18BR+1cdPpa0zE0JNoEcu
	 p+3uWvqg4a+j1g1HwvCZgVJaJLSmm84cVz6lxuOoSFPFYEyXkCuANOgZwvJihcJJ+U
	 jycRShu+oI6esz0NacAYR+vsyScJfNC20qrcoQD28XFGJufordHA6daZqQFd6lSazI
	 w07YgkeSbtQyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D01CC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458039360.19507.10611923757758847803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f643fc5cc49cd8c330b9fd9f2300e8da02cde807110b7fa1059b3434d69d1cf
Date: Sun, 13 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744580393
