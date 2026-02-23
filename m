Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65234D919
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771838094; cv=none; b=cQKR1PC+EuvrSotgLVC7BRiBQbF3F2myddfBx4e/bjSf4CNG0EL8mrC+T31uAlJSlPPPlIXK5ekiTkv8aC4yX8dHvB6oPoOZvU6/4xPrniXEyAwxliEIOCf9SazlljrAx3FuH/Sxq3IZZLlGLWPJvy6m+NXxJfIiiBuPp53E1kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771838094; c=relaxed/simple;
	bh=+p2S2Pvdd21hl5rKgw357E7ZSD3riWap/xn7Rcf3JJs=;
	h=To:Subject:From:Message-Id:Date; b=Cli5PwSGmdyjoWM4IwESSU3m6PebvXfG18j6nXFaXuG2RkkfwEJeKzXOUTNJAo9Ub1U6BAqwV/SqVzENq0x1Is3C2BOO9zYNNS/au4dHFZZI90cp9IVEgpuPRJ7ROPTHWiDtaHrh0PDXAe2KelpCFWqaJb2RZNXJ9BVdOqx2E9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyME+zDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyME+zDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771838093;
	bh=+p2S2Pvdd21hl5rKgw357E7ZSD3riWap/xn7Rcf3JJs=;
	h=To:Subject:From:Date:From;
	b=YyME+zDpAKU4XwdFfxE3FtSiJovfgjPC9YEk4Wkk/fbAbD7gIW3SdYiqmt42qKvtT
	 XgVmOzXSerIiKeEDVIbENyWR7UedptWnvsZbu6lQa/KOfLJqwjoXniNHsBNngGnl9k
	 O9K/a2J3oKDKGagSFvt6WBuvzyppGMTLPm+ouyklWV5dxY5RtKn8B5qXwCDss9GKWw
	 Km5L1cUbUaxHdWgcLU1KHGQ2PfFFWL+NkUVBT0y62Ev6ZxcJyw/yJhmWX18u+t5ZqD
	 AshOCaLB9VemUibN1trxEueawe4jlh1oAIWI7Oa/aAxtgU1tEudPu5f+yb9TDixqqn
	 V3G28sjUPFuYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94759E98E10
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183809358.6308.14042317526864661691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c278f704a1abfa7384544bed7b8148f8d6037da0ddb053add6b070c3d426255
Date: Mon, 23 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771838093
