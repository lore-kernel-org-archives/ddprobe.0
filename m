Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12EAB64E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720997423; cv=none; b=SdwwLWvsfzGV1hfrJzMMeybIjWJ/Lsy9Vft4aPiHVCs91VDYqqcwy4RYwPbSqC/YOgz8rsE04qPXMtOsZltPNr8Fzwp9wjMfF8F4sB9wifDvyqkAV8xKMQXlguNx2ndkyZDW6sagmyaynHVkWvr5I/dVDWrxIY9QqyVT3b2iD0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720997423; c=relaxed/simple;
	bh=xc8fbjniISmPv2aZ+wmiyEMuuf2vaD++Up8Q2CRt93A=;
	h=To:Subject:From:Message-Id:Date; b=HDNrMwZ/TpKgr+TAzXyLwbVzP4/18Uw+B0s9sZBHYf5/YlYebc12BQALks0Z11zPnRWuqYKn/rkFZP1tZvpv06tuJ/XSRUB8t6diPHMJnDnzS6dpDtf0uAOCp+/sCTiNqZyUQ9D4y61SMVciS6SXYlqy2xGoGjRta9Hk8HfYx0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZO9mbw+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZO9mbw+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 412A2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720997423;
	bh=xc8fbjniISmPv2aZ+wmiyEMuuf2vaD++Up8Q2CRt93A=;
	h=To:Subject:From:Date:From;
	b=ZO9mbw+QRpGCh0MdhxuVuPEl4hKoIhe49mkMmGmvrBRxV39+UnZLSufNpbh/1cSfb
	 Diw7WQcXVNe8pp/TE57wuOHcAYIc95XgmRfPyaQBKUyc7W/FwDuyjd4QK1YlLi/8x4
	 oLQpsBNcJttUo2zVF3skiwZmScN3707aQ8QEkHqYdccvnFjaTbbzdQe7eQv3yBB1dB
	 E0fq3+/pTrEYZ6zTP6uB7ItwMDGnsqAhNQ51dTu7x18XaBrFytw9LgxK6pkq29YKbW
	 +tcvMsxtzLv1KjKIUmrFAB3iQlewme6bVmuTttywWbk27zxFQRDcI/BihNoRtIyYNo
	 vripSykmetWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16E21C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:50:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099742303.15005.17020905244973997940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf8e3889df73b84219c9f5fa12f6823c58870de7e1133414da918c2e144126b
Date: Sun, 14 Jul 2024 22:50:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720997423
