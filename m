Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD04273F9
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765442574; cv=none; b=tubTWxUngk3Q4AcDY1Flw15dgqDh73pcBD/xQhNRcauBLgwo/DCIsegpXcaUTWKJQYbTRdAR/67WTP29PhuZ5RtZotOVTObPmueOISp/UmU5JAO/PhUPj0uHtZZxjEuZQKavfybzsyNk0hI9gsXFiDX4veflqrZAake5wEyJ0q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765442574; c=relaxed/simple;
	bh=hlXCR1yTzETpLh03hCi/ZreDhQRjN39+ir0usGQcMqI=;
	h=To:Subject:From:Message-Id:Date; b=uMN98jNkLqpXlnh4TPn+kEK1QDrtIMzQVDTVsFbdghVk5cF+92Wk/S3HXmsXQteXZqM/JNyLRFmLOIn74Gl8LqvW6FDMqYQX5ALSc9i48D2P4ongtZzve57rCeb4F7yGV7t83vd6KDCYTO61s1fLpyJmrYggXrKB5ArKJkWvE4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJhsnRHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJhsnRHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDA3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765442573;
	bh=hlXCR1yTzETpLh03hCi/ZreDhQRjN39+ir0usGQcMqI=;
	h=To:Subject:From:Date:From;
	b=IJhsnRHVGqkzoB56GSLFUNCjx5S9XP4dB3k7X3Yr1EYPHwAxu/8OWMDsFDw8+aP85
	 D78OCoFwH9jDIujSncpy15GsPhSHvxBZzspbQxUbDHNvpkLW3Rso6p/LrT5kQiuvIK
	 xIJkgxz0mAmvD0vie5tRJqgiQe2lgYJfU/FgKY+nQu3UFke1pYC8s8b3TJ8pPlLG59
	 fd22KpMuDd0V+USesQFOvl4UaSMAvUdLslPdOS89MUES3esKsl2oXGYnPfzlC88I4y
	 q2htXo8HXLJuigae+8gRwiJAAwRh2t87dAODct8IKSG1qsa9i0XeiT50GAJER/bdSs
	 gLykj2nY34hhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688CD3E786
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544257360.12031.17160264529092638850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ff7065491104fe229590b813faf337a5264d0a38e994b81b1cf4a922772302
Date: Thu, 11 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765442573
