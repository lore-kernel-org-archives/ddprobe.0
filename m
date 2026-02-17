Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3788A36AB5D
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771337694; cv=none; b=oziSvJ9SHDbXsYwWJeb30BSRMnW7uLoJ+HGRPWhK8Ewd4p2Xe3nYCwgOHHYyZq0pQ3C5Dg4tW1nm48BUXpgECwB/1UK/xcL2TPprhqWQu3Vm0KNIKYXlJZyU9kF886R1uxuSY6oFCs43PyvwC4VW7fbth4CoKgrCY/uruB1UNls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771337694; c=relaxed/simple;
	bh=UxU6D9Arx0PffJe6myzRO0Pg7rGYXm2Q+6qRzPk0dxQ=;
	h=To:Subject:From:Message-Id:Date; b=UCFxDL+ZUZGE7MTtBPpsL4cwcxd9HMCnJdZLMxOBAfR75gbZP72S9mVPa4CM8Cj/AX1LK9+355+HOEqJhIofAPm9XiKYoNaU1HsyidAt8Sy3Q5UysWxC736+ezne52ZJ/W7SA6jfSuCM5WmYIGRl5tkllxAMNUj4mu2tnwKH6b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M403ATBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M403ATBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8C1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771337693;
	bh=UxU6D9Arx0PffJe6myzRO0Pg7rGYXm2Q+6qRzPk0dxQ=;
	h=To:Subject:From:Date:From;
	b=M403ATBASFPiOH/udWjUSXnYHSAGe2P0dG/k0K8YA09z/8oJ6lMEBXFRyOh5I0g7Z
	 uPUxR4LKp6LrA9XmLH8ExX90o/XLBFA6DCqp3XGKFVUvqIxlxXw+MAsFv1Ww3wlXwu
	 W/B9hrJZzSxLuSUSu81szZAtyD2p4vpLy3W3cjtFQEMcIW9ho1o9LDCeyFDkE3YZgi
	 TQpD3lO+rvEc1bVEFUhi2iowOlsv+MGAPf5zP3mQhzhXd/Gq8kEM7rm+EbX55HiUAR
	 P7z1iznn5erd/EWPhmTiVdwFmAXpnSW9gUzgV8Rmxvkhsd6eXkzYpXCBL3Vtd2FRf4
	 +xDH7ZyaCCRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B34E909A9
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133769361.9524.14681046278118842701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b5c6aaa9053102dfb24911d0d641a51f9c73b127642704f2f27f96091557dc
Date: Tue, 17 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771337693
