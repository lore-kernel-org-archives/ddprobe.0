Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608D5218E91
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784520514; cv=none; b=N/3MVhSpcleEt6fG1MdDn4oh+tp3UxyBTpYWbhvyhLy6pCzjn6ABgSM0YuNjZE0VKzapa/8T8gjWjGJOhSiexZ0hH8aSnwiqp2BEH69ZPr/jGOi++JegUePmNB3U+lytKXYraCbkcoMMMpaVIsl9+3z/sc7LO78LhrkCpEo9Yrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784520514; c=relaxed/simple;
	bh=Q4m7VFxWdhN4Ka/PY5H1Wkl0VXpBftIhUZ8gE9iOrcM=;
	h=To:Subject:From:Message-Id:Date; b=YrhcZImRQbQ2BTY88tFg1y9cjZsjtvIErqbuGd5GpjI8+60Yv/I+MzeM9I78NnyI3qr5Harrf+akcjYFnVkQdYTCvrXI1KfMV5pek9+JnbSn+rG81FhO93NWXLnEssX/iLiLsON46wIMT61LH07668t6/xxi4/k3fato1LWWgGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBEAWUYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBEAWUYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B7FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784520513;
	bh=Q4m7VFxWdhN4Ka/PY5H1Wkl0VXpBftIhUZ8gE9iOrcM=;
	h=To:Subject:From:Date:From;
	b=SBEAWUYNPWNy451voElfbjj7jse+JRToiKl/wKVNCZUJxOYcicS2Oga4Z2MW6Qay4
	 d+8h+rKR6+B+xoIy8OoP3R213/KeScrW8VKMv4esFQZC1yT4L7Sl6E7Q1XmrgeakLe
	 2acFLmnvmdFjEVQwgXAFKQEalMoHrkY9V9UQc5UjUXhWBflgVIgMbZivl5HrFFWHvV
	 Yt3YWkAEI7wobmn3Huyc6j27b3BAVbvf8PLnrzrojSD2hYRzIfF+qmvfbi806+vAzw
	 U61J9xLlI93PttlbCkffCIKY6OcEiEFsQWz6u/6HZxSlImMQQOZdp4vKc3ONdImlA6
	 Jc94oDGtKDxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E9C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452051368.6720.15280155813380507334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84493390ebf98d71709c29f39a1677960426a96233725a230c4b916d08e29919
Date: Mon, 20 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784520513
