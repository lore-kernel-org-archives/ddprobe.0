Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0654B40DFB9
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773156294; cv=none; b=iKbqWt869SmrccYNRyk/M7NaWeJXvvlAsY12onVqjO3dqx5V52Ldgwo9DGNmOJsexDXOB1IQZe9A+UnyMBsRwQ9Jv2ltMYKp4ggmVobxFsM8XjMLfFt3hCYnMTDDmWUafTv4aNfmXqvHH3SgUOaTUDYY/+6AY15mm5EEzFm7+aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773156294; c=relaxed/simple;
	bh=fhR31g5OxjPsD/8oRx0FTQm5OOul0wYqpkLjq/xybVU=;
	h=To:Subject:From:Message-Id:Date; b=hPuIu4Mlrq/Jky0EAUZ2iPFUiD0oWbdE51Jub2FH+6HqOGZ534LurBKIje0rqWdMXD9POav/ZnRDjXOKk4DJlQIx3PczqUQAOzYDvVItBr1nqXfbi47nGLNpeFNmqSYs2vUEdwjd96LMxaLL1W9odV/SrS1jgmWyr2cNi8FwsLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcUJEod0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcUJEod0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF6C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773156293;
	bh=fhR31g5OxjPsD/8oRx0FTQm5OOul0wYqpkLjq/xybVU=;
	h=To:Subject:From:Date:From;
	b=BcUJEod0mW0uPSD5CHeSPzb1r0ozpfX8QxisaRpk/Tq+mp3kC2/yaOuMwZxt7/5r4
	 2RW4h4aoHeJP6pTUpnv7ZS9wLtOp8D5b05IXwhTXO929IUSd/QcMnJ0/SixQnlcs/e
	 3O/Q6CJKcdFvZrkAHkgMIhqRi1SOTJyO8voogVJkz4LiZUOhGECpez2aa4ARcyQzk8
	 LVMHHI3TsD9eOXVVWFSCjYPWPTdkG39oH0IKCM3CIRgisPhVnl6TnAnyNln4lNdxSy
	 aEhACXr5A1qJCSoC8DHTJy/eJCSD9hQBJAS5LaO8+0Ht4cgbf650tJ4OOZdO5uiDf3
	 Pi9f86lJMi+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC9EB1071
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315629358.16981.17575231629702301933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a05308f7f582315410082eb4126717934f5cca86078694e88203ec03fde025
Date: Tue, 10 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773156293
