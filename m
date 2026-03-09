Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC762D978C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773084893; cv=none; b=kN2QeqacDlZemKoDFLtgUgLz7YMttTJQrS5HHv5py1YMvF9yyTx/PZHzDJgTaPUntrrsBsCztK5oF9DAfmQuRN1/9DmZJThjWSCPMuAOQRjAeS3F2+l8TTmUES3osCRD50i2wnuC1b+///SAP5ncAOjsxM3gWD5BWHoRzIzfV1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773084893; c=relaxed/simple;
	bh=f0YWGQtKJX/QHdKBwu6hNLRoll/V+ylO92PJ2mZh12o=;
	h=To:Subject:From:Message-Id:Date; b=SD9uYPpSDlps0gzpKv7aGDALmE1Mx3+g898E+Y6yewXNR+freGFr0ZOU8gexjjXu5YaRfK0QCcWI+sIJQLGawMdJ+yXZwqVYI/NDTqnCaer93U8nsAarEX9or7CgDPA70C1MJm9eZSkapFrkm/vxYzuiUyimJ8nPABtHUnPnet4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObgebPYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObgebPYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7DFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773084893;
	bh=f0YWGQtKJX/QHdKBwu6hNLRoll/V+ylO92PJ2mZh12o=;
	h=To:Subject:From:Date:From;
	b=ObgebPYah4J+Ewjd4mZO1Vps4QW1u9rNHwVgu4HANHSS6u0chg2shMqfckrnWedn3
	 VqlBb5wNLFJK61sUsFTmiTGAL8L5ZfOsQaVh3RH5TE7jOKnjnnBFGSzEXwfWbqoBOu
	 2ubm9uWGcNGsSUoDSPnFgijWGuhPXnjIJVAXlQKZ73b1Se7nf2F2zzAi3woJllgr26
	 b5eTDO5tIFfw/38CPVT4u7Qjr1esKC3FHUok+vyT6BEr3G8gxQPfb+pZVEQpgK0RGD
	 8J9ZmqmajR1cZQTDkjJdPk0gzSnpdL0RGcy5sohD/U0csR8xbE7Sq6Ku4UpQuTxcDM
	 bIhyf+6yltv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED85FCA177
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308489357.1530.5869791265798144238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df926c87cda02b19ca6276561056b3297b612924e938474bd0f37cbfa447b93f
Date: Mon, 09 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773084893
