Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C9C3E51C5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790049634; cv=none; b=SWOlMKP5TQdbp3Pb2iSfmLotz+VjveotgFjakqrNpz5NF5UnjKvZi+72RPC5bvtSMrvHNqEB1mWGEKfFtBTQmF4WYc96BXlZi9Yz4v/+J8z7q/8TOTbOwyjhQZpjvTU6COP4RWH1e46NdwM/CYSwu/mP32TNyvK6Wslmg+QjaCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790049634; c=relaxed/simple;
	bh=fIbnumTEEtAnCaYgjiKOX47EztbE8uMbtJtsgtWVozI=;
	h=To:Subject:From:Message-Id:Date; b=QqTRYPWnVjIiNZNkbSWRSAm4TUjZUuV43uv+R1RZ/hbqOXn5f1gLf5WmpQkdzyfadUeSRp7ORPceYEeAQ3bNBVlCk1GBi6MpFSJQRENoutS24FD54XdcxCZ1+pP4y2WN903mgBiqXtcnuHgC9rsXtVt0289SGBiWJXZjQGwBaaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9a2iVwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9a2iVwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAA6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790049633;
	bh=fIbnumTEEtAnCaYgjiKOX47EztbE8uMbtJtsgtWVozI=;
	h=To:Subject:From:Date:From;
	b=M9a2iVwR7i6lIY0XpXOcjnMWYJwcbrxzQuCrsCattTPWENl7NGZ/mJbkl0U5awjxE
	 VRcIOVvre8dbDXdFouaCkl9SznKGfTEkXvIy1kW0U1wH55rYat3bLbhvsjNbYHq03k
	 Wsjf5PxtaM9ayxQ6dL+fqI/dRwi5HrMUegAvZI1INz3I5EK/s/TsiCO58/XFtc9wbt
	 mvxdKRCjsEvEkU2Kqu4HiSPRiy6f6i79x0ukCbmXV/xcKTaMGRVRpGNgb1ghO41iQW
	 lq/jOvlTYDwgm+2iZretI5+POIN82pHyUhcPoEYaXZNyuHUi7itdr1HkNGk5eDhuPx
	 CSDBHDu+VSFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F27C982DF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004963368.18713.6756090525324468613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c3543f20fcdb6862904e4deda6b12e54debbdc46b48975e9634067cb9fa0f4
Date: Tue, 22 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790049633
