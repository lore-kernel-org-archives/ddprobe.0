Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49989188A3A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743750594; cv=none; b=ZBOCnCorZ5KraeD7aPkwTo9y6j1TqCkNlHqDwdwhgjs905j9xcFr0RvrTiAjDzTdLL/GPxAws5XWuqOQjiRD3J/x2kHhR5J6eakCbhRMQNjOcIwSJHflx3K0QeL0GqGCuCfqyPIqa5JIwxyR1eBWjXdygLYu/w8QtgsR9QSUNRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743750594; c=relaxed/simple;
	bh=z2IBuXJNydQzOMGdBJrnrX6s2pw/mpGL3vuQTJsC0AI=;
	h=To:Subject:From:Message-Id:Date; b=MeUrFs9c64/W0I61I0aZAz3OM5lK+UXTFcGq5f9P2KusET6ndowmK0YpCBbleHiivnHo9WH/O24x03I8fAHbyaK5CCrC6Z2oLRVbRLpI2rE+G7jVG/+T8KHdVPDo0m+lofFp5+rze2MWlwgHrpSHhg9DDRjK/4oqsxi1T0Ypwek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZPzCTyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZPzCTyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF289C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743750593;
	bh=z2IBuXJNydQzOMGdBJrnrX6s2pw/mpGL3vuQTJsC0AI=;
	h=To:Subject:From:Date:From;
	b=QZPzCTyDS7u2Wqc+NQQEkZb335jyfa+MxhJjFgfcPYrkf7JhALjUBsfo+9degSEDP
	 rqTQUzkXxZn5PHxuUrcMbAksChrAK2WDlDJQqN6WQ6zH9k/liRdD/ea4NPo2nBo8iA
	 4o7a6D+HNnQq65zGq9hvhPVM+Ika7X1912RZ8et7SxmclUWJ45mk2fQXBMMTCZTbLt
	 Gf+Iz7LnXh9+agvEyfzwOGoW05iMntoftgwySLHfYMCEnJTo+vn5uqeJE4hybGpvV6
	 S23PTPyDHhNH86h6gHGIejsXeTvjRfHDDUg9XLhrxd0wRDP9qIqBkJJpzSulgTUQ1/
	 HvWOP0MgENQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A99FC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375059361.28362.5138937324137694677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9841f8781acbaba0bf61eaf606028ddf0e814837f99907ba980631d69686af
Date: Fri, 04 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743750593
