Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473EB17B4FF
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743472794; cv=none; b=MxqGRkr5TuomqaRxJis/pBI75zsvJMtoadYCwJd9RcKVaONKenQ+mckOw16u2FQMCXD1+xlquNEzT8MplBO5XfQuuc5/f9nT7xKyvNEdthNcasJx7zLmWbHmzYxqpjrK1POOSVnKNHoDAvT/WxaznzZd4mDL1nhy0GQHdHt/Zoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743472794; c=relaxed/simple;
	bh=txB186qXKNctmW82LbhJrVLewPpYqjQ8D2hlezC+cuM=;
	h=To:Subject:From:Message-Id:Date; b=Zu2Fg7faT3+aFeNGKPwx1qomRb1N4Y+chZRttSk3peKu/wQd4ix53VikPU0TsqJrExBg6wqomXELNsdEKKcWDxuJC8Hh21jl/a8A/UVMRUQ/UjvxcY9JqGby/tK8uNRRaPkQPzdTLwFeRtC00uTTkGyA1zVznDG4Qxl4LXodLfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhFMpw10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhFMpw10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB15C4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743472793;
	bh=txB186qXKNctmW82LbhJrVLewPpYqjQ8D2hlezC+cuM=;
	h=To:Subject:From:Date:From;
	b=dhFMpw10ErJTfGac8HimBkQ8nJ2hGrln6bO3Etnr48Unw6lz2FgqWyTDae3alJULL
	 1xVBYwsV3hTuS04alsIQszrdpCIP3v5JyPzOzr3t7fS7zNJo9qnlXx0JOlqTLSIhoc
	 TsTbbwHhWnmAsccEgVmqZtkZynvgPAaNJ0n2USlyyxJTc2Ay0Zqc/3eBmthzHHpM1W
	 3YIxJChnKMOB7rIG2m8pfAN/JNBnFp+MhFFRs5Jy5rnelWE2GlXAaf26m1XcqP1NHQ
	 CMDpv9VCXEIWevUidgt6tFI5PfqAFOCzI6xbr+6+E29jyPffjpGza+v9XtFoCfuu+Q
	 hWFufYbAVcItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95438C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347279359.15267.8095278295754250382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c006a57a265724e92b5b6430ccd9c0a63879de09cec821576a867d7aef9990
Date: Tue, 01 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743472793
