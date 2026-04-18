Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19012BD11
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776484054; cv=none; b=Aa9DL8zRzn3p0YXPDLNei+Yq683bVjLqAXdlm2gueOJ3famZQuG+7N1BOCCV7KxDDexK6x+HRa3fJBZStqa0+dT5vscJa0S73px9qHleFROiwvYeSZVVk+lDgkF49T4VDCvaqr8mhUobtAuP8ZJK6c8Ge4nxmAlCOs9Nfd4KgrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776484054; c=relaxed/simple;
	bh=ndLJciK1k1dB7aZStdaizlqq7P+onFcZEr6YINF88pI=;
	h=To:Subject:From:Message-Id:Date; b=qjSVYCo6zQ7n+EARi0mdmShhW6U3GaAZ2wdDdf0avMhepd+ZkHrOwfT/yyY8GByo2u1ceGb3ihG46xOYk2yc7BBHVFbtC8r3HuOlSWSzo+wVk0W4M7YVWFc/cIPCzR3QSdFhOd5IhYwCNjVgVzUiNIQsTZUJ9EA732B3LS2ceQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOXgrFVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOXgrFVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E09C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776484053;
	bh=ndLJciK1k1dB7aZStdaizlqq7P+onFcZEr6YINF88pI=;
	h=To:Subject:From:Date:From;
	b=qOXgrFVCGzrK3cyWjdN8ROOE2ZITt9cdB4zReAMTskPkIjGBn1sWDpA9dOMi58zt2
	 7J+BBNHUCdu/Eg0DmoH8JHxeC2t1uU7mreCHEQq5edINf/ELEuhvQ/nLsq5lV5hBKI
	 Qt/yp2WPLeWJ9DZ1/d8gN2rjD3eGho6ypmtLhAWM4PY/piCSVcNsSfO60nVr0yjWtN
	 odAeCaoq9Amvz9cD+Q3kHypp4VZkIht8Z5CiOI/KB7C7a4MdC37Oc896gxXt7KbDy1
	 afloHMpLbzxdDDMi3bewWO/P5lGkqkglC6bs7BNa6yaY/4wG1q6CTzYjdPUoxY4yqS
	 cRNOeTNbNoJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA61F99C78
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648405368.23068.4798927437786028190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e37c1a5c2c0c4a30930c7d64a7508878b39e67edcf457c0f8f8f5a8838d7de2
Date: Sat, 18 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776484053
