Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C685261B9E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785283234; cv=none; b=Jh2QMd9ToMrX1xSk1x+EwsfI9kNj7pE3zk+q4VTv2++nbZxMEJh5rS2RQqMMjmHvv46F3r2G0zdA1BzsyF87h/djeLbQeIGxXAyRHcwxrU4xh63XaYCeOjPwnmtGrrFn+ylaETI2XUGYpk2op6SLYj0h9pOEt18XQXcMr+AjFsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785283234; c=relaxed/simple;
	bh=aGEGWM68LVUni4QxykF8G53FFswNzqWLyAA0FjjRjlc=;
	h=To:Subject:From:Message-Id:Date; b=Xhmrg5EcI9xHII22ZrzU0DufcrM0cMu+kF1Ff1gjYiwxL3OWEH/tpLC7K3dTf2BtGMLDUvBl6A9+yvnECQ86iZS5f0JmErMFxYIy05ctEZc3+qHnqkSbjEXFOSOZLN0mXocMHbfDfaNQxm4QVy9GQrPpIZMLa0TILlOxIeED1F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIweSxUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIweSxUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAC7C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785283233;
	bh=aGEGWM68LVUni4QxykF8G53FFswNzqWLyAA0FjjRjlc=;
	h=To:Subject:From:Date:From;
	b=qIweSxUer6M13ScK5iVm57WCAor66MKNc3uu9Ep3OOn90Y34VozY+YZmzV91sXCNy
	 oIkR/+Y1TG7uq3Qwo+E34heBChbMB/989k5/7cFOgid0QTzLd8lbPKyInU2OcUInpe
	 87xTQi3nmTYdEEQp/0K7+w/wyDvaYJHMnzkCvv+CfEkbj2rtWQv+f/ClU1K6LzULVJ
	 ZZKArZ0ER0J7VynLcvnCqYG3ESlSw2OLVEarWU1mtfp9q01VTShiQX4Q//UiWAoN51
	 2Gcnc+XE7aEyq5pRrfOYw0VpmkuhbUG5nvhkdRqzMs3nBz9pZKjBaLnbJGTze0uax+
	 5jYK+rWYClaFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50E0C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528323370.5144.14153324083092904376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abba96511b6b915cbe882d4561327370e57b4bfba45660c1ebec8981ae441780
Date: Wed, 29 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785283233
