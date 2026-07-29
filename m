Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4110A263F34
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785287434; cv=none; b=X3+ssgyST9G+q8/Xoxk9bNT44KVvJAzJXpb3W3SYPgf7OUKETdMBHQsXFepzb4oKUa3+0OOoat0FCjg6nGe3jshf0lvEki1LeB4gz/dMtmPc3nzrzy24oRNANTkDpSN0Ofn8ghJF3DW/uS6lWzBzwR3WagBmk3uOELW0RTADl2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785287434; c=relaxed/simple;
	bh=uTR+dL7Jc9gCYF0KX45h7KqRSzKLCcozujyN1h8VkY4=;
	h=To:Subject:From:Message-Id:Date; b=utpxiX5KHoRpyYIoO/Ei5KswK6Z/eIBkZLzFyp4KcH1o2lQrOvhjYjfmkh4ZM4gnra0y7xI4kAZDtlDhBlLYI1zLVXOxClIkYH9v72NNN2iOy5Gjy+D8A2j79KB1Q6lccj8rVYwDQzdy/SETJEVQLzxi6h1u9ElheUusVaWUh8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBbjTSIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBbjTSIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5077C2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785287433;
	bh=uTR+dL7Jc9gCYF0KX45h7KqRSzKLCcozujyN1h8VkY4=;
	h=To:Subject:From:Date:From;
	b=RBbjTSIoANLjB1I8cF42bEkXk+9IoMqooRnoHcr/77x6cI0f6o+YpbaTZx3P84ts7
	 h7VbzBDd8i/9HdzhboDv1f2B7DNMmKF3xgWdLEL+tqAwS9rigqLeThr2v43bymkZpl
	 hm9Dq1M64fQqnr80AGGc2DXsLO/mM1nBoFMrgWaWi+j+CT2YeWL+5kXVf3RjTV/99Q
	 iCCqrwF34r/PHtGXd3qNiJqp4SwmQMsJZd5EH4GsUwcCvMmb6nUE0BXCIl5IV3ZjkF
	 LaNriWW46FvbTyfBXYEtEncsJKxnToOOsTOdz6a8JfEBZdsrsUSOEFQ4oq+4Ke+Ss3
	 jH7ZHKZsKgK7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C0C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528743368.28534.17187474508193825329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e141ec04bcc296ec22a18c8a64eaf3e1b3c1de9252030429aa9adda2f15ed926
Date: Wed, 29 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785287433
