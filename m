Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7E22877DA
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780912474; cv=none; b=jgXTFSzjkS/j/j11QCceyFYWGpe+ZaAKQ6JQO2QxzVSZh1PfgZGNNw/fuzIvV8/QDpacMs+VT7b5iGe1gxfkF1r03/uc1lK+fcrvCRxsKhqjqDV3oaSHPEEZGodvHDR7Dz7LcSYNF3tyDV9E6oWoFHmvG7ETgPowaRBJ8jwv7Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780912474; c=relaxed/simple;
	bh=mtOvUQjT09EEbboyydCY9Tmc0D9JHWBffY1HnCuLgFg=;
	h=To:Subject:From:Message-Id:Date; b=ioq3ArIH7nwybS8isuEteVHw+OlLzLztE7Gq7c4CEDI13SOaFE75MHf+GZVQhrdRQ3zcCzDfhK5J1ZjVgJlPSrtyR7Wmhs0WfTs3+P/gf0OcwqQQK27hJUGUoVRodt8lDQn8AbsjhzeTf6W+Vy5kfPOPlSTj3m6bFXq9QlX+XPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdCXPN/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdCXPN/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB55CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780912473;
	bh=mtOvUQjT09EEbboyydCY9Tmc0D9JHWBffY1HnCuLgFg=;
	h=To:Subject:From:Date:From;
	b=RdCXPN/qWo07qAvqsbzIQZtlG4i3o2afA7gq6OA/ybq614HEVuy3DY3Nzm4EmeImO
	 S7mPmiwjP7cq7jHxxmdPWrvU6xHWUb/UPNXN/aWOcbZ3kMRuAHx+5i4ztiOreMipDK
	 HAIqlYKHNL/5314FnaitaphssnRyBzqiqsov7dCmYV4fRCQeF5M2T+WyvzssONxaV2
	 FcXIqFOupqp2x8186C0MXaXyGk1I0HynexoBVPS0hwVU8dmjB05hthksbq/xBFbkUW
	 X6akWoyXxx/Z2IOx5RjGx7IYGNdX6UNQCjnIgp/I95I7Td/DJ+weQnz3cRkvZ6ZT83
	 rPSaj7+A1gKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2CCD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091247368.8647.3742223128425638153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b34addbf23cefbd007e1f338e2d9055eb9af85c7ff24804059ddf3394dcdfa
Date: Mon, 08 Jun 2026 09:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780912473
