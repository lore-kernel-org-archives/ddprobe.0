Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B921A6836
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788745834; cv=none; b=j57wmgPhRs7TP0ZuJ2NCpuKB+Mxc4EwbjOV0X/4O366h2EPaHOB9cBGE96GZi4ipaK6y4GtIllUxg5hzhLvSox32CmcZFgEaknT76zeT7QYXocnyVWKG1NTPdcTC8XkrfANAv2xMv2lssiUzK7QHjp4s6rbKOK4jsBYcrbuWZ/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788745834; c=relaxed/simple;
	bh=7TL2dO1f933JVURrhWUJYe/55jZwutXXYcsCzcTZ034=;
	h=To:Subject:From:Message-Id:Date; b=Z+LgfSBeZ5wJ8uUCoeXt9sc6gS/dOPZL7JI+PoT+n9WCFjzaZwnEtNbTYVGBa+jBH+eAs9ZCVe9aR2Ks+1UxKBeyZ4xrxFyFACSbhxC4rAoGfhI4VfYEe/wOha/j8x2JH/qKCgVabFATxLqfT9cf98pWluBo5B8xCo3RkQdDjEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLfX9lBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLfX9lBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788745833;
	bh=7TL2dO1f933JVURrhWUJYe/55jZwutXXYcsCzcTZ034=;
	h=To:Subject:From:Date:From;
	b=qLfX9lBrvqUdHRGp2slFvN7E6mm4XX22fwljpzFdJH8g8Q5oQXIKd7XYEWaRTvCYo
	 Blf3y5y8XWIcyz5rEIOdCf/y5Y9oGcrcfL/3+7/ecpZo3t+XsPYbCDMsbq3+znyHCJ
	 BWY5H8/iagOmjhA5IeqGN09y8uugduflPwE/+5oF2AaWlh5LKbfqX6GLmaQsohKthe
	 ykfpjxf5eewLtWI5L4V46aUw0ka+sXyUUHpn/lwQ2Cj3Wqcso0Gr53iPuykquTVUIp
	 HzrJDfE/waambipPTCKaJ0duaheZotb9IR+u9cEC0ry1sacU7OkzIf0wIOlITkNHq5
	 IMK0918NNP+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0231C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874583369.21917.17838846253188874647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8fe1dd9ebd1afc336278a4378bbe2b4c221e4b446d351e5180c1a6e028d1ff
Date: Mon, 07 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788745833
