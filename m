Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B82F744B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755124794; cv=none; b=OuwW0yJG6YrM7l4dL3AkTlp1yN1OoyQWy8DkS3YAAknAn6CRe4LZ+th2iD0NzWpHgvS+zA1VqyDOIrc2bGZuISToJD2XKZDSmWqHsl9yI1WzzwO2q6x4G3xmWO1v4R0lLJnXHwjba59tdd/jZC8kNscjsVR7YUG32qnxs+vEP+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755124794; c=relaxed/simple;
	bh=RQBOpOvnu0oltjxZ6yuvTF6tt/VTZs3XiHSCufLmpEw=;
	h=To:Subject:From:Message-Id:Date; b=tVs4e5o6JJ2GVf7Uxfj5nqWr85U6eMa54Eyyu98/SBn/JAhNFDiPCJeDwMxJsGCrOe54Zhp1I+an8tYoA95hmM6lMRlUnO8Zns++nEKZA5YRVyn5o6ts51fDFDlohYEz5JvkqannFAgz+dLNbafLEIVKkRer3hbAsgJodQL5Byw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHc6CLWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHc6CLWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5449C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755124793;
	bh=RQBOpOvnu0oltjxZ6yuvTF6tt/VTZs3XiHSCufLmpEw=;
	h=To:Subject:From:Date:From;
	b=DHc6CLWm2IbQHFuPmZP4bkLlIqtO5xhTzJuKWyKcAAduvO/590OjkiEk0aC+VmskV
	 3WOqe9hZ9U/qMepKfwo08j3vtmOrnj+Y3jkegCOGQH9yC81aMH5YVdDWEA50gLZpYA
	 p0wm8N4BJbqHrM4huBWRI8Ee9PoT7ADNLXlsq7EA1VP5IrROuLUZMnYCxqlSYLXM4+
	 +5G/0fStAsjaPLu5Ntl26R4SzI/lrsEEXx38nfL/BNdymFEE9wA5Ywbk/iJ8+O5Ruo
	 s0rdioOu+rq+D8fRE7Gk0Jc+LuKA+T+mHwMISy91FXKsHGVJF20lfjpnR9aXNRpZpE
	 J+S3yUn3gEJ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE6C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512479357.25145.10616246978943468581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45ba56ae552a60f9461436f50303e69ea86bd2906ff3657d9fb70e2c69ae3c4
Date: Wed, 13 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755124793
