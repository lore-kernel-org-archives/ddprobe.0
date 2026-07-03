Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1DC13D8B1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783052914; cv=none; b=BNK0EH4w6Kp6S/Ja7XA3PS5+aHqaUfzZUwWdBHBdzHDazfCIevXeJlpAOCwZs4FCf0RCYgpmX8SPu0hePJsNEZqwPX0RiYlm18qPp6mO7/AKbHbUMn3y5CgBtNws4/3JNyaImwGpLwGsYFM8Hyrs9JzgV+bHsFiOSvxDrYLVvXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783052914; c=relaxed/simple;
	bh=fh7oWBGjUTscY16mvu92qJKZcA3aUuBB6flRyfBLypc=;
	h=To:Subject:From:Message-Id:Date; b=LkWaRZWxnQ3GnLAyA/ihMsULmMZk68+3zZ4MIn4+aUBjWZKBlg/W9h19vEHECSOyflzqHaHrMICwN6rWh59wKEjnJIAx/z93lxQr7KTKvrwGaQHr6Y2445zAQmjg2mgEwm6Fa+URLGHujVO5uEC8LXfLWcYBME6x9onV1wkOqKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfRShdVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfRShdVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE95C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783052913;
	bh=fh7oWBGjUTscY16mvu92qJKZcA3aUuBB6flRyfBLypc=;
	h=To:Subject:From:Date:From;
	b=pfRShdVAWSvGb4r9bw+nxaaQ1Ao3jdsNGMQJ3PXiM0DFsYVVDFYIwCpWVDtxiq8VY
	 UyZqeCGCqhJQx33MQIR+rDFtEGpUwA6y5RzaCcsJ8Sjg7AVxACWt16FlBI0HDhBKKd
	 O6cC91L4H8mLJ9YVFR6LlRG65DUjzlaFYxpxz9PZOZi5ZYjUTOHTQSsZQp6Co/Xjtu
	 UHnMeQfPEFrIQEZqo1vJppQXU2bcczHutaDsxrM3jsaCfDmOSxjiDfkFjAZQSZVsrN
	 KpZVrNsjrZrorZhvute/UB3EDAnZRmXB6cCA6EvxruFFJ7x9tYMbLJMKGfEWyfen9y
	 kzqN/FA1c3DQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3F0C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305291369.28080.7599501421429798558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c7bca3056fc1a9b57faf065979ab7169345227f04afa64909a2cd0d28cc028
Date: Fri, 03 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783052913
