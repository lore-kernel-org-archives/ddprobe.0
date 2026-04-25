Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3873F83A14
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777150054; cv=none; b=kpgmW9ZjfXajAETC9FGP3nG2POHm2enPx8S4MhsXgPu8lJ+kokqN4pzAX+o4fyFTzMsYJaKvfRlWr7tI5XtRW34MYtCJJIEBfSTg0cn1SRn6+0m2J3Khmls3QqhfUbTaX+vIxAQ+riZK8KkHy0axwF+BFtDpmpRno4I5kjB7TSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777150054; c=relaxed/simple;
	bh=fsPvEB6RC89JZGqsjEfq/MVurGkyB3PGQSn9XMsenZI=;
	h=To:Subject:From:Message-Id:Date; b=lggobIPkWntebaNgEu6kqf9iRvaBje+I+2kgdUpSQHx9PWjDB2d3fF54QEvH/xp08RtHXuFDEDPAjbL+aw3tM/9I3xjV2WXa9zUYq7rqgDxVc8P9Exck98Najxtl6TahAwKcr8gOXbHDbJ+RTqWGngB7B5TNGWbXmu7og7pfYaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pE0jSrCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE0jSrCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE1AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777150053;
	bh=fsPvEB6RC89JZGqsjEfq/MVurGkyB3PGQSn9XMsenZI=;
	h=To:Subject:From:Date:From;
	b=pE0jSrCJ2nlMW89KY8Z1NPoKvi0yIGu+01btss6i/KqOaITa/n8kyX/N21YfZDUb1
	 MfdjtkuTJY5k5LVjXVWHms9WiFyqAu6R7FbZrMZ+szCoQT1sloX11tWegzUDCa+NL+
	 RttoE7IoFZLiTVJ4nNd0bGTYgjQ7y23RY8MdABEsSCykQEWlfbm45x0d5G4O5nirMV
	 nXrYinl0y8sl+hVvGq3ZgLeKt6moT3WQ0QIZc/InkjxvmwL5ndSJvM223pzMn1BJ2q
	 vVNc3QMm55oxuBGg2UKOMBPGnJR71pE81/IQ5o3BWBKbaUHJvOLPID5btvdD0MLEP6
	 MS59Ss3t1Q2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC4DFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715005368.9308.483950998665350556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e128bd38693a6f85db466ed767e511986458ba45a0c6cdaa4a0782634b6396be
Date: Sat, 25 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777150053
