Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258C627586C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767672834; cv=none; b=rm7Us/T/zs5vYrrYsMU8NcLx2LRVULKxOnRhpWRiDzIiad38wBfWfOv4hGZ7b1rPHHUqDV2uOlpfEEpoEvA4zcBgZeiIW+msVKtkJVQ9tNDU8fq8xxGST9WjUH3fJ67ANGFumOkG34YLIzjrfzGLm546swfb4dHqTC1wkEse7Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767672834; c=relaxed/simple;
	bh=V10N4Qz8QQe8lS2EWJgwticl0VR77cK6wO0z9vinxl0=;
	h=To:Subject:From:Message-Id:Date; b=jaNfDe7xhVZSX6GhQpNhqDaYny8Dn015EBk62DY0+nQpk7c4z+GgiW9I5+bq7RdhkFl47aoxaowPT77OZx+heS6wDvyhfEQyv9z+1V4/rnAWkC3bOVvMpyf2EtmZDbzFBGnHu3YbJNAP0gdgcTPK950to3QBJfoEn4a2WJFikGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsgtHNhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsgtHNhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767672833;
	bh=V10N4Qz8QQe8lS2EWJgwticl0VR77cK6wO0z9vinxl0=;
	h=To:Subject:From:Date:From;
	b=KsgtHNhTfN1Baj5gxDK6YIgpkmk2ObBxxlR40xdYWxfZKr7NpsxrFhHPxj546iCWU
	 nYYRBeCNqecaZ/QHxLIb+zspIkPBipuUTZIArmpYBzI2gY/AwTAcNPssNtHyNX48eO
	 42zklJHFVND1Oc8Axlkif4WF4hpS6s/WWO3uhReot7vMrxyMicX0IxbgiZUGX+QGcY
	 CdJmP1COM7giQ86UowBLJUeaa/MM2MldFIRE/4/pBLwdhdNGGLyT+QYFSnBQR0GsrF
	 OrzPJyn7ikM7QrlrSqq3XzSrwgwcYymFtLh9F2c8QSKEUBNGGJsBKygpiJCnFOtpJ+
	 gwxCPnNGj3Myw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A5CD0430
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767283357.8390.8195975892013505646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c13898e0a24f41175df4caa8e4d486d726097341b2311897643ca6451d4bf84
Date: Tue, 06 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767672833
