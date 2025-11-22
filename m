Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186748CFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763802714; cv=none; b=EK0ZvwRpaohB4M5YkULb38CBYN18mk8GRGOjMUxKNifPk9ajEYCYhimNwO0dk0lnk+tYWA/FHUpc5nMibMGu798JYeoF01iFJuRprGIF4k4Gy0uM+8jXz6lEe7qyQSy36t80BbjGFvlqRtmMn5f7nUA2ezUrIwegaElG9oogX5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763802714; c=relaxed/simple;
	bh=LNoISeXww0nYhwB/cXdDqoWa+zU6dO2/1l/TyATWLSc=;
	h=To:Subject:From:Message-Id:Date; b=d3COW61kiJI6FO7wSmk7JZUOvSPDu16aHJlyjLmGd1BtumL/tOf7AJrLbe13BHWE+EbHZh2SIlcAze/fcdRvVLu0QP8XXe7z4GgIS4xNTg7o3Tz2vCuir1vYPVYFsFqB3+lEjPBpwocUVVb1AGVKqAwlfF/I0njEBrxO2fScmco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLQ+/8mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLQ+/8mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CC1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763802713;
	bh=LNoISeXww0nYhwB/cXdDqoWa+zU6dO2/1l/TyATWLSc=;
	h=To:Subject:From:Date:From;
	b=TLQ+/8mnZrCmJpaG7YOPPmwAsjebWYqJ+xLJ0xcoAnuttzrjP/ShVQksQjVsy6yx+
	 9ylFvQgDyEl6Kqo/SpKJ+SrWV2W3YudbHlCuGDKPScD7B0HzdvJ0n5RhKWGxGMnBrI
	 VcDLJ1DWu0rFNWye3bkeiUMbqCq2NytCaCRGXve/TEKXnVBPCjAclMwiHCDx4Z2Czh
	 /TOZzoQSffISLlEnA5HDbC/gf5c47njxjKPbSE7Qy2DcNfjvCukV74c9OSeNfaYB8Z
	 IPPH8+LNg8kqhV9X/Cd50k56C65rAYOPOImoE7ITtGxBVbf0w+BtmlafiKhOxWSKTS
	 yEGFpMamMSniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972CCCFC521
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380271358.11133.9038242588338351215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4544b2c4d043191853110f7690df8c04cb15bcc34970216b92c36e70285af834
Date: Sat, 22 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763802713
