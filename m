Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDC0824A3
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727715354; cv=none; b=rOSbzjHo0T8qmkrvzTmrHyHIbjuhfmm2MLhvngyHkmRX2I9tCuhBeh+hEMQHwxG2HOAA+aP9OQhwlicREL4wsKfmi/5hjFluINUkf98qokjJnAXgztod7Y4nmSTKxHgbfznYTgUS9LGU8EIL/pF5Eou2lSjjrR64BDh1yGTan1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727715354; c=relaxed/simple;
	bh=w5UCUONOaeHmBae2IdsjNE02y2sdsj3jxVnCVFDj7zQ=;
	h=To:Subject:From:Message-Id:Date; b=d1GAacNp7yzusG08AtVBBDrzq5ixh3hKNI218VoWWlDWTXc0Qn8h/4jNUcH2lJAZsxS0+9c+STNYkKK8njfALEkUp5zJkepybCBr20zKVe4Lz1eLjZ9KnYvBNnq7nKC55RaXjAfK4OlXCUp4luK3WSBeHhr8OWw1wxEQDwxNJBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VA8MM5tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VA8MM5tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A630AC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727715353;
	bh=w5UCUONOaeHmBae2IdsjNE02y2sdsj3jxVnCVFDj7zQ=;
	h=To:Subject:From:Date:From;
	b=VA8MM5tzAY6VK4Jrc2Gwy3YfkRyI6nOO5bwlOXSRaoJdCMQWiXm1YWAnr7N0OtE9d
	 BzB03zU4+Cr9emhhQyEbgUGN2Wnoa4iie63TpGGJvZ18CbYcIJI39g4TmFMtoqqsVQ
	 W9Im0w5xrNPF0zZAaOrC85NypY4TENTrRT2ouUnI+l2Ov0aX5a/5wM4DbqQaspmBu2
	 PtzY0KLS2YtpzXWJJajxB0yFepT8r8XGgqgXvnccP3oGfTwPC5/pr5SClnfVVxXgVn
	 oMnQzSaw8bZWT8KxwdbgOzlkay6ze+u/+6QefaRg3JKxmOqhFG2f7AwHFESHyuo1E2
	 ztdIaFIoWjI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95604CE8374
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771535359.23407.8356552733926925363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30a5410dcbe461ae77d078fdbcec441e9a6651c63cfcb3d37f8c35bca4167c1
Date: Mon, 30 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727715353
