Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3466A30E85B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781763394; cv=none; b=MLGoorQuDfo11k2l4EGorMhpzmbLyxPYsO34ccIKqFbN1fHzRLhtKCvtFSjb89W9xrqPifl7R8ECvxdsv5pybB157nK3/rUBXQZmDvoiGfljvZUKVtCCQHTdjhhELH9Tb31rXUTtFiBZ/pYKqZQp9RQ4LEBhqFMIU9XCg1WVpys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781763394; c=relaxed/simple;
	bh=HCAR5lYeyKkOiFBwuIK0ah46oo9DEeYtMllGc4yYvKg=;
	h=To:Subject:From:Message-Id:Date; b=Y+pArn6NOFXZw5cpA4kal/Fn51kbx+RndJFvP+KU98s4ytaoGesfrbt80dJ7dg5zeKHOxksEwWrJt8X+2WRHAfXcb8fbTBeK99v3ejhS9HJpFpjDbzT7roAYfNF7Ew8PpWzLws1PD7w/nwm56SOYX06ok8zctlx9gcYhPs0niPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5++6z8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5++6z8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F91C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781763393;
	bh=HCAR5lYeyKkOiFBwuIK0ah46oo9DEeYtMllGc4yYvKg=;
	h=To:Subject:From:Date:From;
	b=f5++6z8XEctG4QDv58+AL03r/zeWiKnptlkECJLYAyBVJGhbmDE1kJunH3uTd39QJ
	 sAObVt9yESQCGxdQs5hbTr2u5XrLBJjB5Df+pvt7FdRBbL0oUNiwcRVE9aJa14LF9D
	 iiwOnhGs1MMqWUdaqzHFwm6R17Z+Pee4dO9A3To7p0fH+kK9Mi9bAWuq1TgIuo9lcx
	 R0w9gOZ5QbAnjqb1Od2hl8n9LcCX3oALPCQ5fvi81wjRCRtXilteP5wgCX1cVK0pfM
	 XNZboBqA9+joCx7ZWmerYfWrRku0oaoPpDLRaX7+OHHQtZbDmlKlcqtEfjxDHRun/o
	 d2iIP+IbWf40Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC74ACD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176339368.22302.17111834267362751049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512f796e3ba23c08064f619dcde30e7bde71208d0a21757b4025f754a005a8bb
Date: Thu, 18 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781763393
