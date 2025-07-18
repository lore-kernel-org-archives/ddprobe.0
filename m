Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3012A433AD
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752814794; cv=none; b=PLsbsZ9yGnngknCZIzb5wVuLYqr+vr1InP5wUB+w9sO7SfOpz46rPrYW6JaIC6QVfyUHvpLt+mniM84dBOexs8ZsUpqh+VNsgq1vcLQb0tbJgBKPAn+Om1W+88UmCjQvCGPMNQKIFcfKZFiQxHqUMpXTdmt6pNT94cx2j14KRM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752814794; c=relaxed/simple;
	bh=an5pDL1Ofsk5InIy8oXPEDfE777yX6BctdwpztDCBJs=;
	h=To:Subject:From:Message-Id:Date; b=Kqk8VZuMtqc/23im8kv34Qv+cj6npsRirwphxOVduow/VvOVdbFvfLaUP+qOOfmrVgN+Bh/Ioi9U9Qmo7hvMBjpfprS2P9DlOmPikSLj+5jTcCVOX0ShqgcTHTqp8h6L5fy6ID1ntPwR264qGSzZOgL6cD1cNRcMEf0ywyP0ClM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/iPCNOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/iPCNOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7976C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752814793;
	bh=an5pDL1Ofsk5InIy8oXPEDfE777yX6BctdwpztDCBJs=;
	h=To:Subject:From:Date:From;
	b=i/iPCNOeSnpz8rzsWBoHlyzog4dwdQ2w3dkED9VVnoD5OQ8oVt3wFN7SzN4adw2JE
	 wRh0Ncc2hlGmKG1sbgZCwxde3V4Gn0PhYPbyTYI4o1buAYT3kejhvAlp0kiUn5xqYW
	 HBWKrIpgdub+eqczV8ejG245rf15tre5o1+jAlOvF3WxWpLO9dbeYxm5hpSlKZDJIw
	 P8wA9Odo2uRpmmVKTcachSa7zx+yQdRkuFqtnoCkNKFCB2aFpPs5OTqNGthGomgs0/
	 nUK1nLg4yN5Tem9hfDQWCW7RQrr6QTSQlEPgkB5wCaasrgmZenvj8SWMjHkrVyXnf7
	 OoEH6p7CI6+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94959C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281479359.22389.11016713291104657329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c387f7e52fd60058ed84beb77fa1e1984bf1368c2539be73f0227a0824122ff
Date: Fri, 18 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752814793
