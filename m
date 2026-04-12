Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2040C1C68F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776008254; cv=none; b=JnNa9QtzmcltlWQV+ehNeBy9gqmr/qUfpem32qWtdtybeMio96yi1rF4ZRI/eblwWqTlyfQ9RxvmnsdR8HpkSfT8EXDZp3eYVcpD9E2HtbFs5Q0ClhRyfWB2Lp0sc8KveA1XOAD8kCS5FbpnMpM1tZRiJg0lbzmbwO+Wxbz6BFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776008254; c=relaxed/simple;
	bh=BcG09Nxe3zRQAqw0o8eaBxdOMXz6yY8eu/ziiFQLR8k=;
	h=To:Subject:From:Message-Id:Date; b=M1aQRlj9OG57irN1kXFN536+Xr9Ww/lrqnZrkuywp6gda+PDV4/gBcEoTpdrxlSp03bxX+IpC3r9ntF1ntFzovE9MQnLEN73P5/VNHBnN6XolhHfHh0CfqfdVUCWcSPnmKCnzDCQdHaiXkQmvtgP91tQCsrcz2dboX10r8zjJD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ornCXdjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ornCXdjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6643C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776008253;
	bh=BcG09Nxe3zRQAqw0o8eaBxdOMXz6yY8eu/ziiFQLR8k=;
	h=To:Subject:From:Date:From;
	b=ornCXdjFYDJaRfWPqpfhsrEZOYoS4CsjPxqcQzQDdv56qAB4D/GRT3EaSRW6tXGTS
	 YbGd+sdKl1CBLtATcYmbSGi1ZVWze4OEtT70VX8lY4lkywlq3NI+DioGVJmZN+Te+G
	 WPIu8eKbiaKqpw8X6AeQT4mm1MPmxMUgTlCph85VIM6TX9uNAb2NttyKMy/PMZKRmp
	 jg6JgfQB1xDxIwVmoBNcm8h+SEHzH6IoVaJXsBpaOUxlj8Qa0W5CgNfcyGcFXWswTH
	 J6bDiRciIq/fuvJyB26aZ327M6zAzL1HkFGUKihcCU3YAMyZXkc+aEw6EU3cuqHJBN
	 AFvOMwjBf90JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ACBE937E4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600825368.24781.13636777354841793209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701efd28529324914aad05bebd1d85a61fa4c48442367fe68809b55fbbd93b38
Date: Sun, 12 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776008253
