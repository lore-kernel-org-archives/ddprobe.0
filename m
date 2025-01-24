Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633EB21B8F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737716154; cv=none; b=oURXqj8yBqsOd99zNa13anhlGDZyHHKmaawaB5sxx/PnC39ac4+3nF+KFimeKiPf5Zxk4aFquWwy3sa2C2yGiRcFT4pyqghEw5ZiHaPVfRMEHL510bFuozp+ZXW4mQjMp7DEV2F1jv7tXzhMPqrWN9BGuRO9jqGFK9GGeU1lWQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737716154; c=relaxed/simple;
	bh=61qPLFHlqq9xUObHCw/zZ7xKnwD2XKYhyZ0egUZa0Ms=;
	h=To:Subject:From:Message-Id:Date; b=ivIe71wj+OXv1B+peo/SPbLLzvZVR8RpMzmwq5YfeK+maf2YcppvVK2U2Vzf6Tx+EuTOze95ACaWiBye4oy/Pz7WiRTDOdrJFhP/XuovLJJ+/Zuelz0A8BcEqdPvBx5Sb3RaxJD0Ho7vGrK9xN9DcEGVsLEq1TnIsNHf4+aR3x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWGYug9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWGYug9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD2EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737716153;
	bh=61qPLFHlqq9xUObHCw/zZ7xKnwD2XKYhyZ0egUZa0Ms=;
	h=To:Subject:From:Date:From;
	b=cWGYug9CQIvVQU3eZnR3GWHug6RJ/Vupa+DeYgQaY/u3ulu/bbu+TXCvSBpXEidxQ
	 ZD8bTuwo4Hq122JkeUczVw46n9Zvi1GhhYPndgLSNuitKnwQEEl4KiVe8S/0gc6lVE
	 olPswCg0CfRZJtzRxRL2Vr8UxlfXGZZ2wXF+QpFAA2xTpYiZV24J5MwgqyzYoV9LtX
	 2unUJ78IjtdoRX8r20/XGIhQJBYT2YbKHTnxv/AuWnWDgsqqhIglPvuS5jBl5JRu71
	 xgmVl+N/ncsyxQm07VjYbgGDFSMpwUIAXpV4HefrajnZEjCJAMBaHL+Q0HBPlTxytb
	 ry9XsFW30FOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A297DC0218C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771615364.15555.799881806137077419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f91c87506355d1f490f32cc7da62441fb61470a7e5d33cb2d401d4cfb903ee
Date: Fri, 24 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737716153
