Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9082ED154
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789891834; cv=none; b=jYwXUtYwJTr0G9RIThL6XlEOw6DZhFPoqO2kdLeSlLjN3U9ZYQx3dwrHg8HNto9eAi0wdPFKPme4ltxYPgFhaYAG7hz5I3tyja5P0oNaguJM4fA5GnawMKOX1QUJnLu1r5O0kD0sa41ZRzc0BegBN/EbjNcXBiVVANi8Mvwq6LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789891834; c=relaxed/simple;
	bh=l1VzadKbW3eKAM1yomDSh1Yb4BjCwxdVhaNpYAcYDsk=;
	h=To:Subject:From:Message-Id:Date; b=pY1YTTBJHarneAsb6H6rqOH2X3RkIGbqPddpN8Ll6j3n3zzJ+2VY9w7hGzc3W23w7nfqYwuER2agEFIsXLVjQeOZdU96V6tBmZDcESiXpMhe2kIfydWb6H7zuCqPj51HsQ7xsjICilV1UNUi3eFCz2k/9GvRQjRa9WmE+xcCzVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKALNcwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKALNcwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8F6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789891833;
	bh=l1VzadKbW3eKAM1yomDSh1Yb4BjCwxdVhaNpYAcYDsk=;
	h=To:Subject:From:Date:From;
	b=JKALNcwyPpY6bKl8yoQsw4b+E12Fmsr88Jk+834Beke085tBg4LX1CXL66ctn3qA5
	 Tn4IXZ+T/c4HSRFw2qDhPqgdPUjoHrb98ldbAVsv/5mFmVpONMDN3yqRB8rJ+Rc3Lc
	 SdfIBnIb6wDzV5ZPJb6H8V72ukiyl44H1craeEz31SHQV5oijmXtZAtJo+f4uoFzn0
	 u22LjAsvn6wDFWxhP/vbaRSDR7X1s/O10RPQD5OnECRl4TFaOxrvCf7Khc4DZSMzN/
	 509lyf0P63NSmqYTmE/DyHQSainJK/+zSRCYUjAEkyFrs7s849hTwtMWWJc2OhoZcz
	 q3xVPrQv727xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57DC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989183368.17164.5894412978956695074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72390f0d85a2f1f0ec1cda6bbc87715a0ec140a1fb94e5028e4146a38a6934d0
Date: Sun, 20 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789891833
