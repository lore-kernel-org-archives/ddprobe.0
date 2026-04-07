Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127A033B955
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775573734; cv=none; b=YzSqI9HF2Fz95mXPYducZA/YBpQfuzvEpZV6z65s6MM/PobKIjn/Nj/BCtO6T9Hdl/DDrTcrxMXn5OJOMCiopAi32bbtFd49fIHs3gJbB3/bD9DpW60BW+rbFpAlDnswtWDdVj2/Zi063+EisEwNlWi3xDJ61hn2BweEKYKc5/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775573734; c=relaxed/simple;
	bh=A8qkkCY+CHaoVbT0Q+lgpRekkCK1btqdVMxeVYXCCYM=;
	h=To:Subject:From:Message-Id:Date; b=gP2xjYb1rftBho4viR/btnEMOEMg4eAin3GfrGOqc8ToQuUEZ8bzadIQJk1pCwIOjJQDoZV56i7fM9lfj7T/Rcv2s/FB1q06ku5H+91aEN1h7X+OriuVUNhVjVuaCIZ/er9k86Koc4q48zK/wyEV+lQ8nZ7sxfx53vKTtoc98FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuAx3Shn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuAx3Shn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC289C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775573733;
	bh=A8qkkCY+CHaoVbT0Q+lgpRekkCK1btqdVMxeVYXCCYM=;
	h=To:Subject:From:Date:From;
	b=uuAx3ShnYX41RwWUf9YdGYumC3qqVr6t0BbTvf/536EkMRUNi0MKLXtfTlR223qO0
	 AbZ8vvq5xh5XZQaP/4hnLVxI9CTy+XLwMt76SgJG4FyCE6CqydKMbp0McJ3xUVOGbj
	 a9GSCHYWNrpihC6anzBCcakiWjPUWUcbCYCnR0lX60yd6votfw2t1dbQ8RoNh5cClj
	 R6vJZuwdaYVrWSJew8EQzsXGhYOV9rEEF43cgQ796uKNlxjQ62FMgT5f3OJ46vIiM4
	 EQsrfsWPEMh1MnmqgPW0CkdzcmfX7jiT0csK2wmp3XTtF/ETm+VDoCsokzvX0Uz3mV
	 71whg2qOSC09g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDB5FEEF55
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557373369.29449.8169537491060115319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3624517d95c863a2129f80579d15cec2e68d76a2f198670d29b9c1753fd43bbd
Date: Tue, 07 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775573733
