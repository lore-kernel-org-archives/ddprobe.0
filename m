Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3825520322
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760576994; cv=none; b=lDNazF0r+n0mdFNPfJ71RRXEUuLugssGKp+WQ6viaT25oENbefguBH3BLf/kms8xPO8MQUB7AFa4cG1+xIu9pbxiR7ePTO0Q48QSNyXyh4A48zNSSEVPzTnKOUU86U+4KWsOcNZo8tQr6qpcHGu0jIY5xeioW3p1WPNTtsGRNZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760576994; c=relaxed/simple;
	bh=L/1dSZ4snUtpXlCbGXjVw+c4lXNUZTfFSk4BhToYFy8=;
	h=To:Subject:From:Message-Id:Date; b=kd9WLJg4T3CEsInscQLJlKD2TVRcMXtJumrA9orA+UXfFTs6Hsf+QdtvK31KqtDxEnS6Inw4jXEQEeCJiDigaYpXjRxDuMtLPIpzmskHTOOKDgx5qacqTZtntoFVkYYKkj5Qox1Fnxy6MNib3NzPLnyzJ3xtW1FBELScRT8iG8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUohdXfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUohdXfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC0C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760576993;
	bh=L/1dSZ4snUtpXlCbGXjVw+c4lXNUZTfFSk4BhToYFy8=;
	h=To:Subject:From:Date:From;
	b=AUohdXfdnem0z9BUVFlyebRgDVkAeWBk1D5+uwli+7nOSdXY8feiQr/lm87dbf0O9
	 sk/Hn4S/ASFxDq3PHC9x+bOD5IfBYVWhcDAMwuwSvLnnkxfkjO8Sd7Xk7j7XtP5Psw
	 3zRbn4mLMZLC2g3Qs1m6mMJ4N03LKGfzdw8WTP2KhJVKI50h/owCkfMwV5jYjJlabr
	 hl7Gj3RsmCiNGsHIxI7+3+BRqKjI03xbEKGg7iX00WW+IbYqc2xK0uWfCQEEPyWIIw
	 b03xWZcrtN82LYCUA+w5CrToLQhf/ISf8M5ZpAmMW2vDEMwgzUVnYXETbaVE+RoQKd
	 7XNHlwpws79qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057699357.28908.8718604168015762221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa18c461937d40c2040e42c3c6485a156c059d32d0a32ae049329320912694d1
Date: Thu, 16 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760576993
