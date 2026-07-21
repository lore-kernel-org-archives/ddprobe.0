Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B179377ECE
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784642314; cv=none; b=NpPoNTGg+q5xMz5VGmSoBTu6BAL/GaSB59cdlSxkBjJ2Pg5UcvwRYx+sWaZF1LCKEMNgl/L+eGIDSCwDJwo1FsdgxuCAO235PmkaLAR/xyxNhNo6Gtgl5aHWeG58uF4hoqTWtXSSSqwb8WYsdtXyjbQw20cWHt/GL9QuuJc8taU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784642314; c=relaxed/simple;
	bh=Df9UbFh8Dn8+KLchazStYp0RHuhFztU8VXb1BZtb1UE=;
	h=To:Subject:From:Message-Id:Date; b=YY1dimQRgIRGtKjwwpGchECxJXhBQQQ1aJ/Q8XPyx+HAJwxWXG8yLww+JqNpYgVjP0Mc/TwEKncahmJsHXKDvNz0QjI2tWxcXmVN6pqDkM7tzVZGlGi0fKNNazgyC02OzM7+RvQlrJCzOrl3715II5MOBoXPcP7mAoK1YLI1h4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3MIL92a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3MIL92a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDE5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784642313;
	bh=Df9UbFh8Dn8+KLchazStYp0RHuhFztU8VXb1BZtb1UE=;
	h=To:Subject:From:Date:From;
	b=V3MIL92atwyGdHgrU6sLlZwvhbstz6rvqEmafcDptcfCWqF6uCo6zU3hNtVMYXzem
	 29JqKCTZoHeQlq1Ul40KDVdVGfbdekHBtZHXY6gYck4pBOxqL39ar1oLdW1DCH92lB
	 hu6O/t/yzEFoaYIc7YGLPBUVerwAGnDoKDP1vXw1Kx9OUYTKxIRyolwf0A+kRqiz9k
	 lcE0oVbq9ood5kNbyUYx+T2Ya2qGH+5HUfB3OOhnhe5VxpS+JTu2t+V2obdwZMwiXW
	 E8sa/iHHr0dp8+FibJbgf8DJzuUWYpoEwoKTHVPtV/hU+oOChXS4XXvVA9LoW68dMT
	 6fYEOR2v1uE9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDEC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464231368.24563.18019660311639594858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d272800eee6049ba5bfc12c455cbb659d1c27ff4c353ce351a5cef7e006359
Date: Tue, 21 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784642313
