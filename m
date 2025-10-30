Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF64230BCB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832794; cv=none; b=XE1+pTMkCOeNrL8P+xq41U0P6MiJQWj18o/wgjHEnIATXldKMChWqFEGqHUI8UXWsgvOzrG99xqP5unThilX+l+Db/JPHdELX/dCuvOnCsPCAYnz2DjKuJqqg9K4vXsjzqahCT/+jSDxmRkMf9NZDISDaSZlVrKk3PYT0Y6MXHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832794; c=relaxed/simple;
	bh=4jwnqn6NSDQR9IccPsA2DNBuwbuGO1W7C4Lz/S7ll+o=;
	h=To:Subject:From:Message-Id:Date; b=ZPfXQbEn1RmRStmWNw6tZFL+4qxYv/LAbfnrar1kyaDr3wBmCd6Ag7KkSrGgXt3s/R/ZgA4npcdNorbJIJUEtPnd03i4tTwUx8cVBUrNOWUDR59HjrGKKRY4FZlAzbUfwIXFOLOJuO9e36tnjrJey6XWryQU724w8XxbXTfhDz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqDMK7ZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqDMK7ZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED9C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761832793;
	bh=4jwnqn6NSDQR9IccPsA2DNBuwbuGO1W7C4Lz/S7ll+o=;
	h=To:Subject:From:Date:From;
	b=hqDMK7ZHw1K8NrPb7BsHuDaQLwnxjnQmlHGVGY3Lu1v/EZKtX/6WfMDyLuepVuyLI
	 LXfMJUhm61NqXsPuGGpTyiku0qyPvlCDF1YojbtTUm+DAqZnk+7iLV8CfaaCcuXxPD
	 tFq1D/L+iPwmszekz3OxMzShNWN8k8GWLjW7cWVMZr5iU8HQL6rYJrhY/cwLxUivdn
	 KWA1/y9r/lFfbUMBZIwbDhgy39fYxJWdSi6IlLDIwZqLLh26GCRDvL58MREMfWbaMT
	 hvDQjg7WNYOxsDb0mMdOfsY8mV+446kfbSyhyqVVlX4RWyPLLoTx+C4Dx0M0MVQ9BX
	 bS+Sd8Z5nLgNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92525CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183279359.8787.12897294227276498533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d569acdaf65e4e3c1588e68af8e87885d99eba55da55cbf001e561ecab6e20da
Date: Thu, 30 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761832793
