Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543266A33F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714306943; cv=none; b=GKP7oT8JpnVEk6inB+4NOZEl3WDgLKbhChBv53VJjrz+QNH6roaukPl/bGbGhcaKwNScha1wfH1BTNbu7VLlSB9Zu0K3indm9aIAyZbi//QqhbygNINuqNimyha3FNrP+AL7sChrVJOZ5vojWZaUE9TTP740aYfdj1dFnkUVKms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714306943; c=relaxed/simple;
	bh=sU7KSd6mO+3YfPD//gkS7nvsE5z42du6zaEZ3Z2g+N0=;
	h=To:Subject:From:Message-Id:Date; b=avzlfiJMxT863+hb7DoWvdYQga9bTlqCy02Df1X1Qb8vWvb0a7cXPkFOkIY/wiTReeKzq2gSyI7SjhdAUwZT70b35g0aEXa0+oIvSfrInmZ84jKTZd0/Bs6PgOfyxucnC+foCN1wbFnryQxD6ozQQoedUoUyoYIrMbydL1ZuTVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KInngUrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KInngUrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD977C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714306942;
	bh=sU7KSd6mO+3YfPD//gkS7nvsE5z42du6zaEZ3Z2g+N0=;
	h=To:Subject:From:Date:From;
	b=KInngUrgJ/VkUC4E9pdy9mJpk+/3uGsk6xLd7uRuQDZwBhVJdLT7uyxWE/7V2icJi
	 Cc26cwyteSF8o8IWpOWd1zhhsB8euFp7Ovr0MyASc4+tA9UHLEvqfoUbCEZIsXPSBs
	 b+qpQvqgW3oPuJ1EwEZUVMjbfs/ROyTjgZBp5ocANUnUfW8v69qVdHwa5ZKBd5bCsI
	 QV0P9CVcY6TNmq7f10cJW/P/zuD//zK5AXCAZDPlyGmMA1CQcX4nAlLJ/rM0gbaDqu
	 YyYs2I0Mq18U33FyPXLKeWAVL2CPQSI4jthaMULrnRLLqjamWIkiRoiIWC4Kolu370
	 VBGjciLhgdFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADF4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430694275.27817.9280784272259648975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28446ce7ee9bc26bf36bfc81f1fa92660b12ac3e2421cb795f8a0747b934518d
Date: Sun, 28 Apr 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714306942
