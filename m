Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2812F35E4E0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757609994; cv=none; b=BQ4+9HXKCvJBAoFnQPIqN0BErildQem81774NN3OCh+Agl9GI2y+rnTAWIYXFJgv+izeM6iJaaUdVjjIwK7oveb8P28YIxM5rWku1lu8i7EFs2We5Zj6FuWbEM/VTSaZwl+iUefQM5b52kCFofYJce8ab54dVmRQe4dPBgXx71w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757609994; c=relaxed/simple;
	bh=P65QA9MbkQrsdHucY8w+CLqc7be3UM+6t72INi7ffpo=;
	h=To:Subject:From:Message-Id:Date; b=OGVd3FPqIKf990vu393PwjaSn+cdWWPdBPyP5lPB98w6wf7VxtnD6YQxYdwoneF0pSRMqbpd0C0UhC8t68EwwLCPmCeKcC054bNaJZUxLs3wsFZ8WS69uLHtnSXmRaGoLLbpxvUWDt1nNex30Z1Xyq50HCK211u8RhbLoS+dpYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7/DWhQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7/DWhQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF6C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757609993;
	bh=P65QA9MbkQrsdHucY8w+CLqc7be3UM+6t72INi7ffpo=;
	h=To:Subject:From:Date:From;
	b=L7/DWhQxHzSDwrkSXFZP02I/SQGc6PBegB5avL0Erwxr2qJOVx9V27+6e2ypvjc1g
	 urLiKQZceylgMO1ysN78Tw1t04JFnyMTi6rNb8LmrmgRiN7Yp8mMRlFWulwlKtpHtV
	 c1gSE8tfsP4BNVfbc4l2r4I+QHvnX/yaOmEiZFdyoQuHrFkcgKmDlkaUHfZ/+gIcrE
	 8nb6Q04VmjUEFYh/rUSF7Sys9XlnbjLGEwEAFBTBpqN45O2Of31G6pPmyLEfblE6Yk
	 zuREgLOqpGd10JmssCF2uC4ws26csyxH5LQYNlmJ/i3Jp0X2n9C5J5GQgeQL0eH3Eb
	 JOd2kpP/cI8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E17CAC58F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760999358.3727.9387678356613887401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1dea8402c2631f4e632f3ec92a4a294062049ba2bfed784d21407f0a9f17985
Date: Thu, 11 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757609993
