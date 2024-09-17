Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C6E171099
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726583754; cv=none; b=NMen0kth/3P0ma2Cc6p3wehJgXjLJvXY6qOrGhkcJ+eynsDriPbeaebQjeIQZ9CStmt45KVyXqqUyY+44I5VBYqv+ca4U8OXSJUdcAlckd2kujQjCiJrG7Yv9mm3xa60co8dmjfTcDdkHCOb9hztdDfT7ZfUtYKsW6JHyXeMwyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726583754; c=relaxed/simple;
	bh=thnTC92IYlVdr4Lofvi0lCSXdHbCVAJnQeCMG/J0Igg=;
	h=To:Subject:From:Message-Id:Date; b=E8cfOahgvJSauFPxUaeK4ZZ0NRMDs4vLwMwB/DLxNnYR7g89Y9dRrtd8U98KZSaTX/COYCNJ6C5w2c29ItrmhCd7A+wLW3oPdr51LFIXmSn3cQGfKMaoFmuhV39upZqHX9GYgZT6EWPJJ1EoEpiKKDp0kRwKGDG8LSYvctpUGDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuPlKKk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuPlKKk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3052C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726583753;
	bh=thnTC92IYlVdr4Lofvi0lCSXdHbCVAJnQeCMG/J0Igg=;
	h=To:Subject:From:Date:From;
	b=PuPlKKk11onq1iuuFmKTG6Ab9+jstoeWiaeijprwHEec2Mi2ULqlBC/HIqOItDZlK
	 DnvcgQb0O6QGWF8Ze4VDGxJA5Q8wvVyfJrGWOyuJ4D4OMt/i57UUv0mOu6RPdCty91
	 Z1jO+Q61F6jH6DNywbfGcMQMEYhtg/za44e2DVztgGfUkEGNzb46xG0ecRbdZfAABd
	 g2Mie4bbFRd4TGoODcD+RkkHaVFfsUOHAi9qewphZxnC0BUwPaJfLbl6IkITjyCm+v
	 w6zcwg/1Yo3hUnxQAZ7rUp4lSrD14NpX9g7751SFoDa+YogZsbcYzll2/SHW3zBUCS
	 AFJooJsD4DmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93652EE6426
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658375359.26242.598436288154715434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110feaa4effd70d0fa0da38f0730fa432a63d892d5b439201f2e5c541355bd9d
Date: Tue, 17 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726583753
