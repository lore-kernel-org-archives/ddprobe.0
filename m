Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48717376
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748137794; cv=none; b=R2pLt6lRDJ9UB2n1xtcFfiSdRCYtl5Om2lLNfZ2fBLzEEiXccXHfdAM3NGWESwEq2/URjpFdRgNvccHJjuyjcg3AjKgVIV5rIZROan3iIr5fmSU5O0PGUinEKAgjZAF5L/HT0qRnqngsry39PvKm0luMUn5/WoQX5wokSlC85oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748137794; c=relaxed/simple;
	bh=AikW6S72Pc8CgPlTowtn3oZa49AHfP5XgbqllSh9MeE=;
	h=To:Subject:From:Message-Id:Date; b=O0n7PNGYpf9an/1ybAF800G61NjxVSYd3T5nw47j1hV5/Xhx+UuDbD4KwHX3zoNzRoevJyKElX3ZunKiWAxEXLGJSonbg3QN6zViAy9APXy+wA0NmyrucZrsjGnNYhS+auv28zCr1nHAqtngg8JnmHb3EWwwvhmHyZLvUBkaGYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTK3tX7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTK3tX7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1371C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748137793;
	bh=AikW6S72Pc8CgPlTowtn3oZa49AHfP5XgbqllSh9MeE=;
	h=To:Subject:From:Date:From;
	b=LTK3tX7t0koZSLnu2kJjzOW7hqAWuTVtPqDYp1UHKi0JGCg932qyYH9nvEeAuPKIh
	 /jPtdO56Agjx0UVd/+BRA0D4XtLKcFW2t5nVBz0Vc6SM7X8yCCN945LdKkGN5WTWVq
	 xcXJBM6X2p0whkzjTYND1hQyixiEnuLz/4u8mZyvn+ZIeVUkk/EoRcW57j/e+UDRso
	 DCn7/ohusISH3vF4yDn7Poyr3W0Ie6CWSyWukdFD4vTY0NmZNiSigS7lUt4nMSJNOd
	 15lj0zX5o41hth3xD02/OMKMbdK2XvuSUMoW/6aLWpPROsz2Kpn2TKkVwxIc8C5eSe
	 cZOZ4jcUPNztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDD9C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813779357.5359.715222715971875570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f5f9ed6b89911a0ca898cb87912a951e6dabab6a43bb3b8a46c36160addfe0
Date: Sun, 25 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748137793
