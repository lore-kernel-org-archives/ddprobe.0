Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFA740800B
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779981157; cv=none; b=L0FzXxRmnJyaCbHpm0EAE/iBbma0940Csdr8cb5nNrmBT61BssBYtbczt1z8xTsUGDjALjqD+mP7e9dgth//38zA5bFmyXiS8OLWQkwqyQM4n6xmJMV0j5+heI5kiWeAigU7rPYe6axB8pgFABVoyiEJj5cOf+v6BNQKeHqyKrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779981157; c=relaxed/simple;
	bh=4BwGgsTD7Ur86agv+2RFEAbmm9TQcvbSlcWM1g9yUUU=;
	h=To:Subject:From:Message-Id:Date; b=PJW7h/rSTJnKVzUvD1nknwEaNcJR5Fu/LhlAHS8/pxvtNPCiVpQdZJcjuSwFRT/7VQKvQk2OrCdHKPRER1ZK2Rbu65Y4bCBbjR4ZGkAE6YcRV/NJp4AmpLKmyXs88A3lpMyL1s3fwjpcgNteAq0J6eMIO5T1mJ8JQiOIpxfEuNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl9IZ/OC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl9IZ/OC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C534AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779981153;
	bh=4BwGgsTD7Ur86agv+2RFEAbmm9TQcvbSlcWM1g9yUUU=;
	h=To:Subject:From:Date:From;
	b=Xl9IZ/OCbqaO5Fpnen8ThB0cyAb+Ho8+h961WISPZY1R7vkr4o/aE+oWlxFK/PAXB
	 lNQjU1E3InVvMMisCSqJmHRZFULFYEXCw90P/4/MRwyjpCotXpwlJEfegEcD6ayA05
	 Yt6cipOKrkZ2uvCIMHAj9WYIOxmZ9l4LGxgIotdEO0YcSTcP8SfozlYClFDfXOSZCz
	 0CGriutUWCSc2Cg9HGcaeH9VyjeAZyx9REMMsycAcXtwNPmg7t9ua3BypTavOtunTh
	 EvM8VO4AvuCmvMmvqlNOaakKeOa/Cxj/KZzQ49N8W2ClKWoZ8i2dhPyBDifAR/5W2v
	 59igEtCUQXVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E1CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998115368.11438.5422057766080401767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b676b8422e1775b5cf0fce7ef7972f7b755d35ae7bd1c2d30a8d19210569c90
Date: Thu, 28 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779981153
