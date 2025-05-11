Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAEF1EB3D
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746947394; cv=none; b=Onu9e6n7f1BLPlWH/DYygBsA6IjhXKDcy9AMyWYy80YfmBJ/nr8pSDjTdmg+KRQBViihOACDxUXb9FlIQ33MciQrLVodWSij+iXVuzK60iv4ZXAhzxz/1qusL46+yOQsBeN/bw6fi3gjcsoEQxDjB1GF8Wb4djc3vuIy54mNad4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746947394; c=relaxed/simple;
	bh=/HsIAYnZl58t5ljxqgd04HBJ3Zc3UYrLw4Ts7BhsEPo=;
	h=To:Subject:From:Message-Id:Date; b=QSJt6r1fEqBXcbaeudssOBefCpsu20H+7UayNHC6PfaKrqsqhVwg2KuXm9ueMkFLV4DU4g/bX2gQ8Fb/LDg6gNZ2jg7BIjgppcOjXwyBVaMCmTlp71OKx2/zhJ2fkQvCuAF8kOkDU4MiZcluu8YadqTkd3yNYNkq3xUGhsgMCDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArnhPNCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArnhPNCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2940C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746947393;
	bh=/HsIAYnZl58t5ljxqgd04HBJ3Zc3UYrLw4Ts7BhsEPo=;
	h=To:Subject:From:Date:From;
	b=ArnhPNCRWtwFLZxyBfRHi413dMell17TfavF++FdXujfOtqY1XHK8SvtMigJhm4in
	 F43THmXdOrwesZm/R1PzrfZ9R3daK1wdTFRvZbqPNKs5lW4TEiGtZ1WtDLRia2PnGv
	 zMqcchtY8V1f7S6AYRFy4O67P6R7o4mKWwoCQogICJvUjQvB3n2QpEFYNmsL79VyAe
	 tm6jVG2SmYrRV70ap1wkjZZTs0zz92iI0wTER5Y9tbqO628jMxoeSKAV4X0IA9wYVl
	 3DH0k7KCnTu+b1xUWYPY8eNMjrBX9FNLmOzVAkmrQKTPqVwoOxthvGcCgoYfjsuWTb
	 wQ+xj1OB1om7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB2C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694739357.8112.75447554485445881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e61cc66c9ed2d458c11577ae4d28eda2c2f56e4ff3e9e33762d62c5c43f7f9
Date: Sun, 11 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746947393
