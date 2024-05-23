Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68864535D4
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716495203; cv=none; b=uhFG3HDK1HotS+eY8MvEcz6EvG/Zo10spp21Y4hECAvm89TZLbwyUQu+JKYR4J4tBqeNJxlPSCUS0cPSXbsh8EAmNLi05XdIbvkUMx3mGeERAz2exYUwET85VBmPo+OkEYZcNFG2JTx+FRWwHpYUiRSguSy9xi82p3Arjnczchs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716495203; c=relaxed/simple;
	bh=+zIllRAoFy7igr4CvsyMfUZoJvfDVGyIltZVujy5Z2s=;
	h=To:Subject:From:Message-Id:Date; b=ALuUDd7zKDJk5NhVO/Qab1cL0U/P2MVKZGF46TNgJ7zZmYkjgvxBhGjsvSsqc050mD/N3IVS8+O7OJ7QvVClZj6Gi4tbzGv9m+bmeOqZKfKBvHFn19R5eHIqr4TOM61EgHbwvEq7Qy6SrfsfRM/2FDC4ILjDSV4ZmiLusCI+PJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWF/kq7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWF/kq7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DD5C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716495202;
	bh=+zIllRAoFy7igr4CvsyMfUZoJvfDVGyIltZVujy5Z2s=;
	h=To:Subject:From:Date:From;
	b=hWF/kq7Gx4IJRCA48/nBkNHhEDkElmyjw7gZ2OmiyHvYLzUa2D+7KUP2+NuO4YgCw
	 pUSwOV+lvg5oCts63bvQT1Q8Qakq7CWAVVEkcSQ21/11rVPpjHuGLvmsuxW/TUyDLk
	 bj1jNp1tqcU+9FB7+FudhUZwB1ImOMHJuCBXbp43tmRMd+4FHCb7GaSJttw/1gBHYk
	 PIy2xoC7DUXt6Laju1toc1fy9paq671PcFsh4hSK69qiOTc8Jx3QXdsBWBdlw0O1qB
	 XIxEfKTNW9N0FzlHCHsKy/cqpmTrO38ekaWLPAes0b7MN6iMcDlqThqGlYhJrtR1vL
	 L0kabY1N60JYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE169C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649520283.24417.1152081221163292737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10fc6bb1b9772400d68dbbe93c86c63158add903adaa4079158a2b1a39b6ad5
Date: Thu, 23 May 2024 20:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716495202
