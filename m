Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DAF45023
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724036154; cv=none; b=LtSLn1a96u7cc4p6UcDMcQ8s5hQoYjl27UXaoZJPjNm1Q4fHX9BLmsZk8wl3rH/YcBLUlCCIKmJGD9b8lZwnlyex10KEFLecukmvaK8u3G/RJY+PR1m7LU4DF8iI1IkC7A7fGe29JaJrkLJb3Euam3jCFmu5nqsEy2bfbQg4vlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724036154; c=relaxed/simple;
	bh=mUhWtX7Q4zr4fBcAtLyVALQloxlNgUkHanZemC+ofEg=;
	h=To:Subject:From:Message-Id:Date; b=cc72vPU3U6i7wwzKlmhhW63OegVzrFJQCD2pABxGrOA2GDt0CKai9LAHbT8IIQSdO5alS2d2TezKRVyQSr5ZzscXGtcEja/DcF2jw0aGufrbNTTbBtuLJv1OODBZzK000wsT2Xur1wvyhFSGke9cTQSS1vJ79lyjKIErh96hlTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL4WYXbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL4WYXbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D12C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724036153;
	bh=mUhWtX7Q4zr4fBcAtLyVALQloxlNgUkHanZemC+ofEg=;
	h=To:Subject:From:Date:From;
	b=BL4WYXbLN1Ys/tOZUj5o/CVlHn1oj62sN4J4WGhS9629KcuojcYr4ncQQZqpekbPC
	 835D83gTqvlKp9YOftcqO2YDyh8htTrHj/3DeKF/i8eIE4Ci47IROPIs5Va/yQg8Xq
	 KE6lj+uOCChkNbgCkH5tHgVC+425/0a4kCOWpSGsrCi1evkBb+PgFLtiGSsL6j7An2
	 UXIY85eV6hXpRr0VJD914ZK3yuH2BBTCIIfKn5nCw3AjW9Z3b6Q6OYMwSJqYqyXm4q
	 A8qlwGcsOwxn2iWGD/RdraZsgZzfLErLrIHd+0HSQdBNMN5Nzkuev6dThVAjDdmcFs
	 +m9tHvnH9V1Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BFAC52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403615365.18222.16662500329260705191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff176b19c743fac6f1406a7802107aebd8b7b263da7d22ed75506bfc4158e6a
Date: Mon, 19 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724036153
