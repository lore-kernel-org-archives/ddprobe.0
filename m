Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C78F287505
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770525234; cv=none; b=QuJqioeNN4RlZBiaLw1Lm5g7jpjITT0gDDd9oDpXYcMEaSx2IalgriihMF+P0AlGqFymGmroFDWw/4bbAlM8w0NacUEgs9522+r4nco5e0soJqrR7UNgHVlM66lfhv1ybJVpAyO5L5+DBWfv4slPQUkjZcyTCa0aZlUT0hINTg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770525234; c=relaxed/simple;
	bh=JE9hPS25XPAyon7oeLXlmUYdjcCl0lT/R69ldWmaeHU=;
	h=To:Subject:From:Message-Id:Date; b=SjTACQcXBXDk5vU52aDcKEQbDTZzJmql8JvCexN6F71L8ljnlCbjHJFvLmspnP9E4X9cy9NvGIaJx6ltwvzvwSbAPCb+wuamaqa8G3vVcLcblVCG/wA1e31bKXuMC87/hWUjygfFWI8tUIwISw57A1bgED0Go4zRRqcDA+/Ob7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvC+A8VH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvC+A8VH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83C7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770525233;
	bh=JE9hPS25XPAyon7oeLXlmUYdjcCl0lT/R69ldWmaeHU=;
	h=To:Subject:From:Date:From;
	b=GvC+A8VHLqvytZ2Qr7w6UmEkD8nQ55Pe/FnyHfaqT7wH3dgaMaJyDpamEbxQnc9re
	 uXMcdxl2Y0xhX7IESggmSshUi43mkU+WrGD/1n0MBEx7WJb5UhLmgBJknPIDFH0cH/
	 /3EgkGITHGIxGofhEwky2NIqW9l/MZb9mhzJWAUVlda8zxYZy218/jP5L6Z9YDhzNa
	 yYp+sLkvjt/qDCJckpvqT5MugyjuGrxBdPJ7Ycpxz7LWoM6Rzw9vyMM2KEmtWffFHc
	 bYHeTYDlYwVRFLF5aPaeRO6YnMt02cBNbAFw1mX8Xld+xtms3mpy/y06G+htGJ55mc
	 oQTCXwVualQrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B12EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052523368.26996.11292657728708929070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83e8ebb7253ce5ddef6b2035df0b0b0a968ed34816e5add68d8f79035658a4a
Date: Sun, 08 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770525233
