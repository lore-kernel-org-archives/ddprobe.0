Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0581B412A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742984994; cv=none; b=toFyuOdcvMNkB5Scd7AYJVtMPbwI+bGRHZUZr37jR7g1umaesYBrlccBcn6cNiRVLreiXmrntcf7JT/OwAnn6UviLstmUOlLTwhqhjsPV92AmTWcKqQg4PBK9E6CVORFX2PTcQZASYFbRYRRdmwhblC0zhqaemPr+49zG1sG4Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742984994; c=relaxed/simple;
	bh=3hmjFbzAzihDf/y3fNczPOwDTraUnU7Y5rUH+wfcBaU=;
	h=To:Subject:From:Message-Id:Date; b=JeKkglPPvWcsknGP7G2YJpnuQB8wNmLNMYmraVSgzI+fQYQeERKOP9bjJ/9yp5N7BRmIeXtTsNsNkhCymstN4WEhEVhm+kFudWNSBGm0mUYX4cefXlLUXRg78HfTb1YV9YtbtspUz7aPLdB8qBMWEDUMYgsa0rqivuJFAOYN8FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgesT3pQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgesT3pQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD91FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742984993;
	bh=3hmjFbzAzihDf/y3fNczPOwDTraUnU7Y5rUH+wfcBaU=;
	h=To:Subject:From:Date:From;
	b=SgesT3pQuc54MWGu51hYTVChXFQnh2XZ39smoEwkwWEI3myaobB2EcFupuZnz4aAV
	 0cteHTiLJNIdYu6Vvp9N/vANnmSnDjpUDpMxUkOCSrDiy7d+DhMdP8Gt/TJG/Gy9RE
	 df6vn+oDb7xS1eKQ0EcAuLwBsxypJQWhDzKahau74xRic0jVM43lvxsATgN55az75+
	 jeWvjhPqc4YY2bTlc6zu3S42+EdS2OGxhAYkeUW0aD68WwPcBAsIUyutCXQockva4H
	 cT9KFQ/9VOyPR/xyy2lO4wQHTDocz/sz+RK9IxdJjW3Zr3xAoBhyebDD2NOSl6J1Rr
	 YkO+Cu4TcSQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A734EC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298499367.12243.15985014131446030746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595b6e51857bd495f616521f309a432e187fdb499cd3919a076f32f8a6a7b8c4
Date: Wed, 26 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742984993
