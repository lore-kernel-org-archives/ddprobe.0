Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375BB242D70
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887694; cv=none; b=jUTLeld4safo7ToT8axxt+h/ztdD5uAeO4DfATAOsQW1QUgcF25fMzADlG/bu2yC4QavR8gpqFoO75PQYw7mNRwS4q1prFQP9HD2BjDlzV/E37JqfODLm6XgFUQUzYrAVOvVuPe6EojOD65it/6NunbVvZoK0upBRkq+86E3uBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887694; c=relaxed/simple;
	bh=Kqbxum1k6g/59WuxMfRWxq9kK5gRUklnvU/wqPy0Fa4=;
	h=To:Subject:From:Message-Id:Date; b=n1IHLtCcgJJcn3s/OFuXTumAzD0uVAga/Z/jDtOvOrokPZ/+hqZMz8K2oHAtTZwMtoXECdPMNrp+ML06JNQ1k6a1+ydjRETd9uPN6wP8aDL1vwhB/aZDWwqAaTBSiXfAleuP+Di5vPFlMDWrNWghTSwAgpq5L0uWwcJ5j0ZVsz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBatulth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBatulth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB81C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770887693;
	bh=Kqbxum1k6g/59WuxMfRWxq9kK5gRUklnvU/wqPy0Fa4=;
	h=To:Subject:From:Date:From;
	b=nBatulthxnAEDe/L8WWaLpFfP/5SBPG+JFNrKDbgPmVvEzmjieta01TTg0lxh6hEM
	 OYDWcPhHbyxyrgFsNk3YrXRWxSKBKEoHJSGkyR72ycGfiJZ44oB3wJNPUGZLECI4sk
	 OxGOnM3oDSbAABO4iEhS6Jh6U+XFUhdtqZW/J0xkrNQt9W7zsqGd0FHDjaPfsDjeT4
	 v/QUI6vhnqFQ1wqtxQmD5QJmHhxOkGVHC9X2lFvE5cSR6Sy1WQURq/wLrgBVYy9OC7
	 pn017AsA3XFoGsYMZAlraLLXBJmEfsMafXJVShDPacn/26bZW9337di0lOrijwHpYn
	 gd+a8Fu+nHgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9922DEB48EC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088769361.18826.15319864065728204622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03dfdd0dcab245d04907b4f733f83f29aeb63c00a223e2dca83d2a42387929d
Date: Thu, 12 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770887693
