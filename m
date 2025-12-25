Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F6D260592
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766647434; cv=none; b=ewYiHMzrhhWT16o8ooNBi0xyzLWK8bs1RcD9l7OJizSAmSXFvCbxCo9+XgrsAxUn22LICsQVP+g9djjvMi/i3UUyzuEUlgPeIxd0Y2gYBdawVF+rJusR/9pv33m3XxOOtLc2jbYO5HFt+OsWilVztoHLgvPb0jRDbRe62C8cl1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766647434; c=relaxed/simple;
	bh=sm92b+AfELmFT+AKFSfJLKXB1VeSDH8pF7LE970dfxY=;
	h=To:Subject:From:Message-Id:Date; b=YuvDI4ErICc63BAX1GTaNv9Qn9wYIVrakXvcd37tvQArJs+x6fdk24iMy+OPql6ADwVn8lJcldoTounUTq0ZVRP+Bw6CUrr7bcsoHjDHzIvlff73kV9H6YybhoPwf6G8KkknXW7CfvLDo1lq1R4vFlFWJBxnPY1ItcH8q26MAg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHLjWhXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHLjWhXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53B0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766647433;
	bh=sm92b+AfELmFT+AKFSfJLKXB1VeSDH8pF7LE970dfxY=;
	h=To:Subject:From:Date:From;
	b=oHLjWhXoxOcMYmq4Umw7IBr0Qa3V2OguPazK8Hsb250bQnCmuhFxmoHPdD4m4yk6H
	 nie52330DCs6y6iPylYdh/+YCCO2a+Pw5ESqUQUqslgr0otYH8XeHOzGpxHjgfXePG
	 umx8m883SmkKuYm5qS5CFD6zZl2zfSCsXO8ul4Nkyh/BMQBHkyqA0XX1ND65LsV5Nt
	 ro5Hu8aLHkzNbWt2VRuMLvAjDg2hF3Y2xNBt8xMMD1T5gRPqLV5RZ2F9lNTa6YCJLo
	 VIpng5eou0VmEm1KZO33sRdlnKHH9TNfVimeev7EUbyUBYAhqVrGrrmFw8qyeSOMut
	 fa5p6r+KFhAUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94792E7AD40
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664743357.22083.1941210479457243571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6261d8c86257734c4101297e62aea4b13df226595d7cb6210b8c2d0820f08192
Date: Thu, 25 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766647433
