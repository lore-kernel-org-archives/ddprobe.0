Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F78113DB9F
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751698794; cv=none; b=SEszzF3zp5OX5aNkLKIekuyOQLoTA5nTbmlRsGTcUEJQspgx9T8i6k3+voUQ0bj0sQ9aKVc8pKWHn2BIeBloXko51DLMhIGb5sAcjqYzVo6FDZOidu2qNs1uJsXM01coVpZR++FJhEJk4+ehBkTRzyzEDgXlm+iEzcKrHYQQlGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751698794; c=relaxed/simple;
	bh=cmau3TG2oOZIctjBSmnURtWjcp87bs73UBvBd4YSGBE=;
	h=To:Subject:From:Message-Id:Date; b=WGD+zqAWCnCesLhgORCx44U21SSXWKEPyB6iAKRXhe0+N1hqcPgvw8hBa3LI5jr/8k6m/O5TqNyuzRtWMR/ugDo/oSU13fj4j0Ytjj8qv+a4ksehFla6VrZmySDEygmybTJ9g0UP+3LS8FK09umbqpvAhCBIWFYw8My0tc6ci4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FM87GbNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM87GbNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751698793;
	bh=cmau3TG2oOZIctjBSmnURtWjcp87bs73UBvBd4YSGBE=;
	h=To:Subject:From:Date:From;
	b=FM87GbNpe8FQPtGGgmUfklhkGtu9yrURICsdj9xOoHert0ZnM5IxnrVJ1pnP0Na1z
	 iUtZhr5cro6wZM8PUOwAkO8PMZXwW7+ue7rLtV+PfPVFuNB83kdFLokVNyRPVhEKYW
	 Tr0ttuE2CSCVnQQqecstmbvphufbdAhLCqF/c9gFrqufDLEI9VbSAnuJt0mJbhe5Oh
	 fBh1dPk4DeQrsxBfZBEdaVMvxVZXgzslFIwAPPZ1Ft5F0kYHi1q2ytLlhqwIqadNGL
	 MqdYJNBK+1b9VbrHAZr1tUAmKzPALYjgie3jHxDaqNiWUhAVzRXIl4Xhqvj/q76qEi
	 vRrxbTyvYQvPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA7C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169879357.15234.11231906571398525312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81c50f698820ec58be5998968199aa8b091dc2188b424842f8947d3f0e0c79f
Date: Sat, 05 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751698793
