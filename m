Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C6E40EBB1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792182034; cv=none; b=hwNbSsplSqitoxq1+JCEw2rs5j92uchbcbrryvumWtu2FTwSlzM6ukdz9sUxZjdYdKTfVaQSiJd9l1dpjfGOIiqbRfIAo+YseRHFtznfUcRvmij5rXHMAOaH957OtoBv5x0aell++zRrJzWlJKoWsUnol+X899E3ww1wAj/1thI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792182034; c=relaxed/simple;
	bh=sAiP8j0woKzLkSKCEu/kxaN1i+6ahA32+YPfWPZFBXs=;
	h=To:Subject:From:Message-Id:Date; b=dbzmnD02Vdw0JDqHxVdS8Bi4Jo5v5kdYKV6QWn1UKJcJqhYCFwWTXp3ZpV0Jb//20M61Uwpz455K61ATmBQjha5saBNZNkRWrpT1Kh1waLtGj7bPROa4KzS6/2P3CBr/5mu5jN+lWauzac3NNMgrWeMMQLvR+8D5RDJLevlMZI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9ipfgoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9ipfgoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3232C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792182033;
	bh=sAiP8j0woKzLkSKCEu/kxaN1i+6ahA32+YPfWPZFBXs=;
	h=To:Subject:From:Date:From;
	b=s9ipfgoiTyl4UxXM7/SeUoVQNHk4VmZBMbHLKYF2wxeZiUF5Tld5g8KcO9toil5Mf
	 CBBQ//vOlYUNf2caWLlq1tpxdaWp/X51GCyYCbowUE5/nDyORQU4dbKBjLhGIFB+GR
	 E0K/hc+KRoaQp/yCMBs3kFPC0HeU4EfQ3OZyq9b6i2T7iMwKEozJSJuq9P+OdgNaAS
	 0f2H0RFpg/6YrJWkNyzs1P/FXXThLkXRERXBP6KhiTPlje+ElAA9+1jJTAIrkegN6U
	 Pjj2mTeTzPsQl9uH11Xq13z/7LqBZdUxopky8jCCeNJelRSoi4rypu4d2hHhgVGI/X
	 Ty3ADc9aRCl+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B872DCCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218203373.23901.10789713897987197135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a21ff79981ba58dc5479bff6b266fc25d20461ff08f37b3324b464e6533d578
Date: Fri, 16 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792182033
