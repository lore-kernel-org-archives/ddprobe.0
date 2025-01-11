Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22722634
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736618154; cv=none; b=e8ukscgkQEGlo5YsuO3Fcsl2YD+BY9cBVD/EC3joLiN0VYNSwT3zv/ndWEhcFOvxhGRlBpigfY8UqmgbGherBsEmXdaSIMTj8a6SCvevyRARtAoCRcUw4URPL0ZtqXkUxusHqRonunzMmWxxczO5qntEEE3qvpegd822LRGU3W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736618154; c=relaxed/simple;
	bh=iAbFb4sJg20CIu2RXHS8Ap/GxPZ7L/GpOZR3Vc/qX6I=;
	h=To:Subject:From:Message-Id:Date; b=IF/gqHSlaOJZL1+7hOEqJC0E9hUO4zqeaPG/oDvIQOBjwt5vh7TlGqSVplEbVhqjjFIP0ipN/acyHFWIZCih88JrpvLHGmFlZEmmr4cR1G/vbyG28xY2515K3rHLjAO6D8XHuDJOSJk2SeuV0fWNQX7Kn4l+qUyihQx+F9TXAE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRbjGxkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRbjGxkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D6C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736618153;
	bh=iAbFb4sJg20CIu2RXHS8Ap/GxPZ7L/GpOZR3Vc/qX6I=;
	h=To:Subject:From:Date:From;
	b=rRbjGxkfOPHuf1tocBoj/sO0VVj7+lbA3lsw7O4vPDe0sTSqgL1DpSCxZx8EhS33S
	 fMFZ33JT6GhIaEC74PRXaRsNXk0I835/75eah+6LG+55Lh24YMD/IQpr1boJOYn0IN
	 q9WFScBdk2zf5crRlJWWhE2z61X5DP3b3y7lWqGeEl1crQoE/Zxaxg/+XOx+I27JLM
	 hoRw7jfo0LPp6vKj8fMMZI+HxeR0XeIUPeoRAn/YssG/RepVjn/R5uFPYFsXNN81EX
	 OhcbCRgROsUnajtl7lTYKNm6DBoegHO485tTJ/ggk83GA2wgihlKyVByrXXKShjb4Q
	 6cTPczaNL30xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91059E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661815358.26739.16624759755083290289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b109932b96cb8e6a1aa248fdb2bd594a6902d1e07cc58dd84d7a8909ea2d20dc
Date: Sat, 11 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736618153
