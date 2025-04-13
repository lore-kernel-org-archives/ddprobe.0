Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FACD54764
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744525794; cv=none; b=Tpe/xrGk9T1YWkHBvYqogvUt8UFraHQIKlNvNJtXzCR1Mr0dkHSyi7t3Yc4oxfJLJXUgpFQuQybMQ5qL3JJ/bgM/kHVcd8ws1Xrd1xLE9MIGz7P8fw6Jqe3fWNnvP9IjomNwOpf68RnYsizNwTB/DcQAvyBi4CHEOxF9aJE1jGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744525794; c=relaxed/simple;
	bh=HgH7Mp87OoT30OGV1IfOc43iKPjtnzOghobZGavu4B0=;
	h=To:Subject:From:Message-Id:Date; b=LLlNBUzWZetpV82bBO6NMRfUJm4kdj9e76kfpaMIlwGr4ZQ18O9xTeT/vS1LfSlitiG2XiVgt6ADZ0Z/0R36s4TcBujHEej+xQY8mdwnhhH7Lnw8xzMVr/meahwsyKT7pninvWZ4WLTp3OHzrwWwY4XIlWppHDOLkvhan49oJas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKMVOHy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKMVOHy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0B3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744525793;
	bh=HgH7Mp87OoT30OGV1IfOc43iKPjtnzOghobZGavu4B0=;
	h=To:Subject:From:Date:From;
	b=iKMVOHy/9i2Pa0TBOyNsModlINoPXmVe7zvJR9RE+dlivUiKryDpPxNkcPr2s9YAk
	 2ST4DuVsM8ukW9PBf4D8VnKNRY9doYZF9e88QQ8r0BpFb2aWSFWOQZ4wICuqMknJgr
	 hil0D4Txmiycv+yaZWwI5WzP012yqlaNB2trMy7COVeG7Yu2SYeyC2gUqKWZ16c+sV
	 geC6RH66VW+VcJFHlqexwIDbD9B4xRmt5rHuOD3Ii0QkceEAcFpygr6aPG9PyJM+zT
	 bftHF76ffpmFQ+49y0vHf7xlcA56aLFIlqmZWMyBhbGlLUfziqxAdxLQZbs32p4qpk
	 RRySW45wZ3BaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452579362.6027.1851038662794301787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f504a3f202d15bd2190ef608f5cf8d1bf0b6bedcf7836f080dc977104fbfbb5
Date: Sun, 13 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744525793
