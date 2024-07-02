Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B47B178381
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719939923; cv=none; b=P2XkhUSpJumLmnP/xxTJZSOJ4XWFzUjykiGfp1zZeqHwgTOJ5uCxfaQK2QmzmBPFwczMmVaMAdwhsbglQZkHlIhLHqO0NUzjHrQzbiPOo3Rcd5ggUuOdbmJw7v92KK3wRvJkBb6GvN5UinYsE9IfGz+3Ldq+BXhbQPUICotFJCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719939923; c=relaxed/simple;
	bh=7xGTSFAttF5cEcIp5Qy28DsrQUNlPshSL/otmVyvOfI=;
	h=To:Subject:From:Message-Id:Date; b=oVegsURyd6Q2068nCk/u0CMi3DIguPPn2cmzlHOd+R7s9nIcm8t7qeYUVwcVGWtzyjGTIVDMoZK/4ddQyp13Twkk78V/yjw11F0XEHf4+5A7XnGyO9uGlG2wpU6QY4li9TbjJ9Zw1po9O0UjqGlPiAuFOChwfuTPao2tvlTgHlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXyMSub2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXyMSub2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE6BCC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719939922;
	bh=7xGTSFAttF5cEcIp5Qy28DsrQUNlPshSL/otmVyvOfI=;
	h=To:Subject:From:Date:From;
	b=iXyMSub2ZrULihRN3WuvMcwBn4bbsaVoIpvvBhqiGpXyckaxwjcoujnn3npS8OFnH
	 U/dbloQHEra2XWSCZtChI00Hl5KkEe2HuTBxqcsMOZvRzD2s9JfNYJ/wAdm10uotFu
	 mrneInHjdpI+6L1/1SIQHuls6WF2mog3pxo4Qxsle0vMbqkU5q/k2JjqNMS0zyb/lr
	 9oJNdXgiY68RZ3G4LIzXf7vZfbAstcjuwygBaThSUVXzMGbzGPWHHbYeH65S73WKhl
	 DHbgG3XgdzMnuRrP9VBP10huiWqB8pXcqGZqykmwK1zUOYDHLJrQrUOhB7QzT4GnBl
	 /VUx9BXTAJElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9794C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993992278.28752.9030897311510234968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbc976d44419e8c8def121cbd5fbb20798ca92736c592a61f6880e40807d2e3
Date: Tue, 02 Jul 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719939922
