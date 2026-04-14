Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE5425332E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776145054; cv=none; b=uThbK/wzqXb+AOeqBCiaQW1ZthGMwQHB4IMbSfWL56cp1K738LAK0Rd28dOEML1y6ftuVve2/6xr6MMAci2wwkCwCs3UxTbmgn9xa9OlCxD2sWTuiwWA9KpNhVLLOYIOUjZxnxyz390p/0RzV5ohlhGLZhOoibUKSarvKKi3wNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776145054; c=relaxed/simple;
	bh=YH6kAgULLIwtkEKisdr/g5bxWV71QzqNrx+9ARQMAkE=;
	h=To:Subject:From:Message-Id:Date; b=jC82HhR8I9XLgPfpbmlLDZqQFls/AD/Uv0yQ21f7OlkAD2a0S5RuAYV6IJ0PkXftQbi9c5IpoRO/kw8YOkL+oZ6z8AThufwFPdAvnzw9YOeDisq+Bo3qEf/hyGLGFq7SgrToKQE77dGRDfUiwY44JF0PI2+4qa7SdYFJU601+ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZJOkfFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZJOkfFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E89C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776145053;
	bh=YH6kAgULLIwtkEKisdr/g5bxWV71QzqNrx+9ARQMAkE=;
	h=To:Subject:From:Date:From;
	b=MZJOkfFK3GWLqhKSoHeq1tzgA+TztAJ00t2qQ5ifHPIVcUpTCirzF+ISco1K34PZX
	 C2qNwoDcfa0//nnIHQ+bC+tSD8C7ydgsuGLdXhrMFVHly7pGPxwy92HIKxqHoHg6VH
	 GvTIjmitCVEnhk/MqW8kSYo+wd1YxcN8ZE+fCXQgzpUhYRM5PvmfS9m66UGv7xMaQX
	 hrF2P2PxE9hM9Inf6WksKT+3AnOcLb65tYE1KTB6rQFBP5Q7iyOw8AlutkMlJpRcgo
	 QhOJH2MEPMXJh3jNdemeHXoI7bwRmbNWRCVj9QfChUi6tPywXeQhP752711cxviBZH
	 oEPXgOjLQM2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9792F531EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614505368.1102.11178101076124672566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2305c7382f785a951404ba88d90fabab56108a598d350cf382ebaea01668d7
Date: Tue, 14 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776145053
