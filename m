Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796D3939AE
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779827554; cv=none; b=GS40Z4YMd2pZHaHybzEcsHYuAu0KudTGE3ywzplomutHjfj3RMc1FjQWbJY6E7tJy2s2x2zrf8VYCqUD1u+cr1w+6kKsFrHrN3fJmX3zqnpd/2IQmXqVIjpqEIZqiNSwfpuru8Dlp641zbyNF1DG//yfhtitPTAi5pZNz6yM8eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779827554; c=relaxed/simple;
	bh=IgTMqP8YBPel3IafooTJNrcqqrDi/Ti8csaps7KxZTI=;
	h=To:Subject:From:Message-Id:Date; b=hq2Gr4hssUrIOrTdeOFd67ATW1SMt63/+7Pt8CLePz57eWwCWy2c1jqSyHyXEjbPTyAqW/wqCSM5vJnkC7Of7Nb7DCkeR+Cr73tVIZGLYdI7b1wSsE19IZ6De/BVIWAHprszrSITn/E69Rjn9Ysj5ohrv+4eKsIB7sJAf/OaCB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2n30ltc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2n30ltc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C409FC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779827553;
	bh=IgTMqP8YBPel3IafooTJNrcqqrDi/Ti8csaps7KxZTI=;
	h=To:Subject:From:Date:From;
	b=b2n30ltclV7VWw57kMerSftdl+F0V11LkbkOnlFOu2LHhKKXcPAu11BvD/C9l6z67
	 yIrK5hOHAKyHr4lxjW/Mb+mooip4UHOk8RsjsMfIOtB3F4HEt+CDyOEgEdJ0ybBBM/
	 SrIhv4d2G0A6LDk0sAG/iqtn6RrARFjsascVCj7sHdm2l5jryRG/tuCt9SWh7+Fcqy
	 thsGsv9qv1nze78AZzAdJycsgCrELn5KaYf07EBHGHzxRD2pbvR3MmLVLYU6RH9nFW
	 3FuAaLWpcYuE60RC77lscPz+frApxD8R/T+xOV58KVxLd57ILiR/tVWkQiYVtI9xOj
	 /gSQcD3DwIORw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA21CCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982755368.20686.10958377202633978786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd90ae0f9a3040bf283388b19227669b993510ae1f0f368f8ecb59c3a641c9b5
Date: Tue, 26 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779827553
