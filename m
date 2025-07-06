Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C15F28F5
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751762994; cv=none; b=C/WQRnN21gI6nRlPIdFpeN8tpA3QU2oXTtX5TR0a8+0YbiGNcJhP/DrXsooUdAcC87GHe2iYFeomuR6IkTeRXZhwuOvRsvlnyQFGWLsybN2ZzPLBPdeGCw4i0LhXXnlSILwCESBLS+TFWu58YBVSXGh4DHRwbzekhvzYNTnDcEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751762994; c=relaxed/simple;
	bh=DbWXkZTu4w28F+WfrZE9u9AqaB678WVc+NF9RgWx4qE=;
	h=To:Subject:From:Message-Id:Date; b=ujfi9i7uKgsRLvT+bjt911fjbpmNIn4ox4PDEhlvRDZlA7jQIDAO6C9v5ObbeZamRpZzbUFR3u7NBXyzkSk8Fu08m1mW5Cy5z6qQ5jyecqP1xLElzOftu/v5dT2I+lqPKpdJCkZyDfyvDIMPEPpxqlQgPrSgSW2ejW5ahd5iIAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRKXMcyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRKXMcyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751762993;
	bh=DbWXkZTu4w28F+WfrZE9u9AqaB678WVc+NF9RgWx4qE=;
	h=To:Subject:From:Date:From;
	b=iRKXMcyHv3T+pe6gbjBT91q8NTJ16vzFLRlp5gCPs5pyzpsFV65NsGsOSWlBfBiCM
	 cdGC5TCURVnlmu8n8Doa+se1p1G5/6YDTnuIRVGZvL0k5ZQSuwEmaFsv5bp83RbA/+
	 LUi5S3Sj+/HJkGhdQgEzubY9ELImvphZ63MpOTM0O/1KYsXEwCT0IrsigVzAkdhnAX
	 y+3b7Oh3NEGIx6Rzso7t+K4u/yqaSQHngqePEPRyP5DUeKAHeXjyrLgkaCRk3zF/+7
	 196zsgGFhB71SR9zhbCH3xcvaEfqHC1quKbJtXR1SwaN6HaPgA5oDzm3Em4LE+x/Qd
	 zXAoDAio3MjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91887C83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176299357.31316.11657889310624771528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251e1ddfaecbe69350be794d1a9e01850b341c354a638b616144495a11fa0082
Date: Sun, 06 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751762993
