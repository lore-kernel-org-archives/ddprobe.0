Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B223330320
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770754434; cv=none; b=A2FZJi9nRB5+erUVVkEM/uLalj2RVneCZ0sow17RH5mQVbzAeNT6nn4AKyvaC7D8kQ8Gxypx8P7lgt5wLD57rOPeiph6PoNABLC14xnTSCauydFoT0Cq0rAbNeCMXb7Rrtuq7X/64xpo+joflU843b5viNwNgAtA+j5RHm3lD3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770754434; c=relaxed/simple;
	bh=2VgS0pbSlKHMHeIa1uVY658YVWppOh6Jbp3pNTGNWyA=;
	h=To:Subject:From:Message-Id:Date; b=MK1BjEsTptMk5hrkL7wRYU/Zh3NOd9/Rj/B21k7w4U3xw+Ud+rx0QoDYAUQD+s+oYRsMTv2VZ5z6fUoDdNi1bjfczeIi59HXnxTG6UJ2ESmagi+zLy/HBbZ9BiPB6SYPaWqH3XqcuIFE/5hvoqsITvI0/LVTD7vIuVTL6yiXIV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHd1KXRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHd1KXRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E3BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770754433;
	bh=2VgS0pbSlKHMHeIa1uVY658YVWppOh6Jbp3pNTGNWyA=;
	h=To:Subject:From:Date:From;
	b=tHd1KXRdkIhhdrkoDLkz7g4x0ehnZOXK//GAquDPRUs6A+8H7RQtEW5gxgzMlOjvF
	 mRUjB6UMnt+2e/QzXUOT+z7L0KtaiyEUvqBEsT8c4qA5oJUk5II8xlWuhSxEC3ieGT
	 yUXyCaeO4LfOcjCZCjNGtyNR4yoj/qNKE0E3uyYQJPvhBpfI4H5IVjN/99dKZFpBy7
	 UWuJ6gizm0U9KmVGMH+RYtWQOMpYxpTu030r6HWSeMZMgDhsMqtdCCHsJADLbxwxmY
	 Y1PRGBKNHflzz5pk6KSSN26cTYoJUdDbXoSh6DQOhgoTxS1h5IoAOY+wpd2g3kXbEd
	 AJt5F5yidL0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BD2EB2711
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075443364.25520.15489564233655076771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637ad8d2607cec8a393c891e069f287d7c2c89505fca8b667895ab01bcd1fd9d
Date: Tue, 10 Feb 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770754433
