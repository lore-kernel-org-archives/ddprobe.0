Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263472500A8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733210154; cv=none; b=BTIMaSXZppr20q7jr4SVeXXbOF8gJqB8/z7Zqw8931Qoqm5uEo5sMAKMq/nsBLbWpG+6E/NLq3ATeWJVTpCn8jVhJaH76uV8r1oSwRHX5ZTP77WHRp/jzIHrEA0mRSqgvMCRD6OX4D87dZTFrmHt0kr6melsnRa+VmoWvpGhxnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733210154; c=relaxed/simple;
	bh=CX7MKpNKz9b0PPFtsEkuYjH4zjFza8TSZA4PEJ3imnw=;
	h=To:Subject:From:Message-Id:Date; b=syE+i0dz1qHjMiMX2ofHmyULyDb5LoCUQdIzqsmuJrLVBp1o2I5GjXLZkBlIZOm5gp4QCzdCCYd+Rf8GOOoymk51yOzoq0pWAa6lFkiIZdH/N2uNR2QaA7o+z7GXfUxIsTB3uYrpppXaxJKJ4P05ulzadASgLKgmchs7vxDFoEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXoIoMcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXoIoMcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD86AC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733210153;
	bh=CX7MKpNKz9b0PPFtsEkuYjH4zjFza8TSZA4PEJ3imnw=;
	h=To:Subject:From:Date:From;
	b=kXoIoMcuiOtIQiSf0PW0uaVNzqWX8S5npJFBMDK3G6i9ejn4MuPDelACL5ZvZxJ/3
	 +fYO3ABAZNuSUfR14wR1BkApDcP80C3Fw13zkX9Ot319YQwd7JPbTeK/chVaSGU0L5
	 oWUXTg8H893d9SpyPL/NnnKnczw22Q8Gp/peaO2yRBXW3U1lZraN9fVOrCnI2MuKC0
	 gB87P79gvk7YqvPNMPzZVfeRLo/KgVtV46bIkPz5q5iF0DQKHAEq5A6559E2uzdbas
	 1JI3RsjgYZXNLeGh/gyopa0DUngShgHLy/nNnhMlAGbGjlJKw2VKg0BLyOn5WZj0qC
	 U0fYtEZ0c7foQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FF1E6C60E
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321015359.7306.15756860494523395649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d7f519be6a87ad1354f3f895ba17584f72d4ec08d1ce735c794a359ee3702e
Date: Tue, 03 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733210153
