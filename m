Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452B019CD1D
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779577954; cv=none; b=fhPOwZEvdpQeB2FNE9lxfSnM7KUJCZgIjoiwze5SXO7saWd52Xu026ZcjyNvGkIg5ggKCNHl55n1j5oVU7Swht+OazC7UrFttFoFtOI7k6gtXdJ9c5qb3zh1ALppW5MKOVGfLLgM3BjCNweyhQKMP7/1YJPywhTTWpcXeSAjgP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779577954; c=relaxed/simple;
	bh=qeeywvm5RylkEdpebmn+O1bZqdpt7X81556oUiEiy+0=;
	h=To:Subject:From:Message-Id:Date; b=QTF/o5mSYd+Gk0WDGXCeJ1cBe2OICW0ltu4q3W0ZynkfnW2iLQaYgtmr7UP0nc7HtESGYimUyzI7oaax4kRTwe7dR4iRrvd9VSOvAAfYjv+ZSoTuTAsIo+lwYyQYClyDwTxgOVMmX13SU63ITDFMRivfUggv4PXMmwEW9wplUyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhoLY2bL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhoLY2bL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC571C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779577953;
	bh=qeeywvm5RylkEdpebmn+O1bZqdpt7X81556oUiEiy+0=;
	h=To:Subject:From:Date:From;
	b=QhoLY2bLzciBdwqCHV25mNck9Ev5o5hiwm/5g2WthtLWZFc6VogRAWRLE/TafMuiM
	 Cy3GcGw/PxxFGU8ghmaKEOHPQCQW1UxYMp3MsUkb9O5Dyqpd/cXpINJ5oYt/oOQbU1
	 wePFjjkjpbAown3b2cAx6+mkbWkZgrzffmHK7922Fy4RvqsomCtaI4IdqJGArtUyra
	 X9RO8/BbYPdRnz6ZO9cDGQFmDUEttxYxfOPll1RpQqZSSvLvzbxkocJorMdr7ODpOh
	 PhM75TMo+o6HizrxJnQ7JlnLBxbQe9YGsEBsdaZhXgldmg1j2EDeXJGpdd0KZzEbjM
	 SZ5oA0ws1e3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A7CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957795368.31573.9893967798058779365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6589354fdab59cae9cebc084ef8aed69a6df071616481cbe9dcf449fd556e6
Date: Sat, 23 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779577953
