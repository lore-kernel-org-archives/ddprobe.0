Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205D22C3268
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754510994; cv=none; b=fEW9E9Qn50tAECg8rJawScXKdY/rMDTO55hPZR+FTfMQ6P/pby7RWkZCyMRoB+9oe2Eru/P2KuP/1TAkMexFXhd2qqFUj+Y5vuHAg3W94gus9UVarFs+lMv8JwyzE3oy2ec2cCb7KDxZsADo0rEP6q3taomb3OPT5i84n7iIeQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754510994; c=relaxed/simple;
	bh=4E2ckE/0xOyK+yLl+JyW1QNSoShvKRdqRrOR/bps6G8=;
	h=To:Subject:From:Message-Id:Date; b=d4o9D/ZERMzggtYrT+6Rci/3+wDlHOXkVSOGqT/qhRS+0VWDCiVNTg04nc6BxdqptkxPB5UDcrVB9Ac/NHL0CkcirsG9+bPOTLWV3Lob77hmwGueDeKJ+EyxqdocNuAF4U38VQ++QKc19MG3tahkj3QtZksXt4sfU+/0qldWSE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBm5izOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBm5izOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9BAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754510993;
	bh=4E2ckE/0xOyK+yLl+JyW1QNSoShvKRdqRrOR/bps6G8=;
	h=To:Subject:From:Date:From;
	b=qBm5izOtpGxYSr4oX0vlLfnuL6cMhxJuS8fGCdg73jrccI7j0oQ71OTSvcfwZ0k69
	 j5qCAoFG1F2PaO0lxsPpFewx5GMcwpZgm8jmTmo5n/Svme2WvCR+ZbnvR03mRd9eYk
	 2xIKsORxrFZ9FTEmCCFEzU/y89lZQcsrZomDtjmBfE+CfiWeBVffDbUIg7g7Zs/AOh
	 x6B23o8JQ5af9B13qEObnjDWID/zIx0m3V56LFWNFgpCcMwmWOGiN0fQYJ65qd20nX
	 C7qKMr6JF8wyh+uMS+MlEbFFdz3BPsLUOwtyBoaPfnhHd8YZGcGXjxLbFidnaesuSe
	 tabt8MOkZ/SQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF58C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451099357.5522.6329491630547751771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9e15c783154ffba9afaa03c7d084eca473257f814656456c8a22f59ae8c472
Date: Wed, 06 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754510993
