Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CB4363C6F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781720194; cv=none; b=Z8+EMl05vfxwc/SNzUFxxvxFXD0tAqfAfN8Oc1RqlLLMseQIZsPl+igB5VsdJMqV72+9dZQBPbthodfDhrLSrfryxeUXEooYMj6wvo3tmMgHb646yNQLxGVBwdbAlyip2xmI1/Ne8+rH/4CFJSAMetdbk8gpX6BVOkgpV0cydO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781720194; c=relaxed/simple;
	bh=vDLd8LSfIYQThjCyRWgvv4c+0qr2Uj89+9pmuWpEllE=;
	h=To:Subject:From:Message-Id:Date; b=jdzKeChw6o47q3fiZRqK1d56ADeXpRAvtUoiTRX8BzUTbRh/R7wPkUID+Z/zRY8i+y/H8oS9gRvsW+ZGQldmrzQOScvMchFq2xCSFsAyURBSRfPcVsT+7ZyGsWJP1FwjaXnGcT2WJNwfYnmI698VNBpJgTd3ER34bULXP2zQhZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmAO4bCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmAO4bCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD931C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781720193;
	bh=vDLd8LSfIYQThjCyRWgvv4c+0qr2Uj89+9pmuWpEllE=;
	h=To:Subject:From:Date:From;
	b=DmAO4bCT/AeX6LayFnfse88QoYa6A14fA6gz5+1lRc0+NkrJI+/cMDZulpMngUxj3
	 1Wa5YRyXPwYV9dE6TUuOxxLEj/DZ9Vnpnlr3a98Hr1mq+Pj+uLrW4ni4yiQQlvmtxm
	 dQH6JNx1rC3FpU8kgLZjvazyRCI6iTrHcue0L4TTUEX80S6tugS8f4ZLCSuGj0bZSG
	 O1bLwhIDAEcTUpXBXnD/oV7j3jlBDFwQiVC7DcGniwrKWj1zAetrbjwB0zAwptc111
	 j8kEeF9ZrTUwIC/7eAWk9zI6qgbZtjVOrZRoxoUzCDzDDBq79zkMtTC7o9WxHry8jF
	 6u6khadZYc/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B348DCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172019372.12175.9664756626908275621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000e5f324acf51fc85c725d30d3ea01d59ce15054b06b71dc5a9bd383b7e2311
Date: Wed, 17 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781720193
