Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEC714F70
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752019794; cv=none; b=mcpuZbhoq2aBXtcghgAzCezc9zI3l5X7DKL0BczF0uXDg9/n3rh0eihH7gwV9pts6n5HzeR8YxuwKvL3GTURWRXehUTJsOv4k9jxzrXDuiXuXP8g/klJvXl66oKTGz5qpS5hkk/XdVDWO7AQ/6lgdEd7vuxX3N00wC3iWusQfPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752019794; c=relaxed/simple;
	bh=N5EykLYk1GN2Y67ijlIs5Ryjdmc4tVn79oW+qQ4/wr0=;
	h=To:Subject:From:Message-Id:Date; b=Gs/b23t/VfpJL6ISJA0sy2yRhN2/wk+kIpguOsV4zxoVdO1dhUGheNS7SuF85B1IFvVY3VPLxW71K4bg361kFWNT2/o46ljaGhDq6LfQ66EjFkuqyMwUKb7kff16N1C5OuHvs2y5lsjgh6ofAfYZ7l6PFT8/JfLm/HUP3pHCHh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE2h+cNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE2h+cNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0013C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752019793;
	bh=N5EykLYk1GN2Y67ijlIs5Ryjdmc4tVn79oW+qQ4/wr0=;
	h=To:Subject:From:Date:From;
	b=PE2h+cNwwYguN1J8p+77pzmGEH55zr0q7mw7+PwS21qUjTi8Z+sreFAfh2Yfq5fjB
	 HFpi3rrm+/V+SMwFBMNEv/kW1ApRSO+yqa92CL+yieOurbbomgpzdYYa3HIQB/eJpE
	 cv+FQOnQ5Tw4sFhHB/b0xJ8MtFMVa5/KZbqEX+28vOhFN/2MEyEZbSsftDYf/gp0Aj
	 FgklSsLnEmUBhC++eUdFt99/J62MPGTFbpp8WfYdg++m5VziGBIQNrvDqBLvfwQ8pt
	 URD+DStmZtEF8RheqR0srz1ugZnoaABe8byyX/Ab6UjHyraRpMixlU3UUJhw0D5mAP
	 EzOLCduKR6ZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F2CC8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201979358.21488.15799751767273104037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9828904e97eb06507b2047e93b07c6c851e5ade2a7c78559ab79cc0b49b142
Date: Wed, 09 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752019793
