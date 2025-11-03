Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148232874E4
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762199394; cv=none; b=Ibjnle4XWOe5b1bIE5tXu1CYY0/hhfHBoU4Agb+bBKkx5qnaXtZ2j5BnTQn/Q03xEhU11xtMjC7dr6UkrA8ez1Qp0lFPgsyFBDKrB0nkcjLpirZvlwo8zfzjteZqTh4+opv4uqrjQVgadmEXQhOgHMjqgoSZKFd/jcJoebxIizo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762199394; c=relaxed/simple;
	bh=bYRx7aq44vjc92dVkpbPjfB+972yFQA9LGK6kzDbijA=;
	h=To:Subject:From:Message-Id:Date; b=jgNuLP2KUHSVLj/A0AtARyyLzYTmV9BlsmVaxHznv5t2Wwkqwmax6Pn4U9+3SjozpgUCrejphH4MU8kjdiFErHw3jR2u3w/A8oPs8hiRCsBpWSD2g6pxU8UxB8O3RE682y9aKY+J30f9sS/QDm5mLNax7LzvaNvOsgeMpn5Q2yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOkVCLEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOkVCLEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB23C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762199393;
	bh=bYRx7aq44vjc92dVkpbPjfB+972yFQA9LGK6kzDbijA=;
	h=To:Subject:From:Date:From;
	b=XOkVCLEVPaRqq6VRYxkpf3cfNZyT1KRnMPENrGusnOoSNRj5/0Ciqa0LmXUnD4fBU
	 cb6uG5cPfw1ph2oY2cdMg5T93cqTmpJ2YODdcC2VdKgvy+bw+02KfS7NLQJFlkfngj
	 Nqgt1BX9LECpy9XBdmyJjon0A24ahTRTLmnjd9yrtBd+hd4SOIG4mxMD50PFCgopSb
	 Lhhue27ayB/jPf5rlbFtxLUD0o8if5f+OJjR/NyioP43dh/7MOxMoM3Dvu1XK2obXs
	 sdwA803fNWK+kkUW5Bcsmfyzd9g89GHV75Udv+ApIj87rmKDlS8ip+/N+lzfIlOLOd
	 pY+JiqZsIK7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92479CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219939357.32522.6873020602834868980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7311e04e184e4948efa224619a2990e9cec66539e53f7cb6f7011ae3fe7cb22
Date: Mon, 03 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762199393
