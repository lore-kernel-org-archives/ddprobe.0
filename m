Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EABD4B04BC
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786174234; cv=none; b=amCZKOfUzVBz6SaO3y+uep+xVj7AX4D0LZL/tRPbE63l9ke590pZOkMDT7oo74zKm91nXSPn/qPisSdq4X7neAMZszsDW6BWFL6jaHHg+ijn5RfHF5uhybsXcyV7Tj2EKq+SySuJoHv37kIyLrN+tgw23kU593YUX1Gb1W253IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786174234; c=relaxed/simple;
	bh=kidaz7SvDQOyt/qDJ/CQIW9OKnXjHSkt1gjfN7p8kVY=;
	h=To:Subject:From:Message-Id:Date; b=f0QjvYw+Z3PV2AFjjYzs2xgbfKHI2r5HjK5jz0JrPSYjPfsctUNlxVqhBFWE3ZQgUdMZmFRG1375NMtiJsbnFRFmpb41OMwPvHFdCdPkAHggqxFe5eQo4uSra8Co0Ku7qvC62NA56R9L3gIm70KfheQCzMhT/Q/SVIMxNm0T/Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAX8C4qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAX8C4qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0CCC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786174233;
	bh=kidaz7SvDQOyt/qDJ/CQIW9OKnXjHSkt1gjfN7p8kVY=;
	h=To:Subject:From:Date:From;
	b=QAX8C4qTerI8r3q2EO8Se6imyHo4jpchFXVEyXpreNB3v3bBwv15g5+Q4l9XrmY3S
	 w8+W3pms1ahTzD8FfCOwP6dMRfftP9lAH5BRje3W8s2dljdS5SdPv55k4jOwODWpVo
	 jCBpEF55YGrPyIvFE592I78+7ueXhDaoyVsqX2BtA6He6U7ersGhH+qc61v1wjl7Fu
	 xF0PLiWzF42TweYIo9Iabz54m9MDX+erqc90QDrO/nI55fIA/cxlb+46JvZOzwpmWG
	 YYp/9QNSEhgySP7qNQSy8MN2bCjFHgAYHMIuEE2xlveZzwoYO/iJ+fAhg9B72g6+7Y
	 YjIp1qwb4+IBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBE4C5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617423369.24203.14926505656306422292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca0ca8640b6ca0c987965d7eba40e7cc89d113b4815f856c39aabd37239336b
Date: Sat, 08 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786174233
