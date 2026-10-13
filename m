Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C12B4078C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791888034; cv=none; b=WgQDC9W0509tRLPN4jSraC9MpxPx3pm1QhDTanThBqLiwunbZSLisibiIsd7N4F8N+4OAzjHOSHiBxL1BBAJ1K1IkuFkf+yP9M4nzThxr2XQy85k5L+qBK2Hhk9zflcX50enOO1FdgccXQ2llY6I5rLcmRoRbwew/urfho46Q6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791888034; c=relaxed/simple;
	bh=p1fgwOuerQeoxTsctz7PzODatnXiKFtDvLCu8qvRC9w=;
	h=To:Subject:From:Message-Id:Date; b=cy5CY1VQ0N3oS81wh79oOFUgjUoQzsoWmcLGZlQYmRwO9aE7WcwasObuG0/RG3Odpv/WRIdNADL935nsmG5aiQWdTUIaQxpVEDCRy1w6ZdHY/v3XwR8X5TO99UVUcU7w9PyxlnMicDexTHGK+CraGajzEJ+fZYumn8WyiU5m/v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqCoi4R1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqCoi4R1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD368C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791888033;
	bh=p1fgwOuerQeoxTsctz7PzODatnXiKFtDvLCu8qvRC9w=;
	h=To:Subject:From:Date:From;
	b=ZqCoi4R10hB1XsisfIQvU6L0a9bdL2I4Ay4H6SAqHLd6xxb/1YVg4/JorZY1Sn2Xx
	 b52zIktzdEVdBro7TKq7+S4GWvaVl+T/E1l9ryWF3JCgfdWMJIEMsgTUm45vzZCEQG
	 +f+Z0FlGIel47IRd6/RxhDyFH/Fd2QYZ7SMBiIDX5PzNCrcCX5HH7AhaRh6uRUdE/+
	 ZRz76JwZXO6Y03moyJILqCfibY7nrTgwOEDKpt1jBOYoGZM+AQ1DmkGurHcQR9mbgz
	 H3XN+9CFM2qgny9lJMTWU/mt/+e4oXGsdxJJtqMtQ0/2+2IcdKdkIQqSPqUi7nIhA6
	 Lv/KwevNxzG1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A14CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188803373.31632.1850573773265875797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87bea868056c1d04bd280525b911046302c3471f2148474f990e1371772e1cf
Date: Tue, 13 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791888033
