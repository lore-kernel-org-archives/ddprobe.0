Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C610C148
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759441794; cv=none; b=OCvZOXfyKom9sH5TsfRZwFeTI3issAgaMxFfXpC9Rx1dS+iHx5QhXPJ7epP+fgiTfshCsEIufCgJRUR/Xgl9ROL97t8XtZiJZvXBKcKsuP9K2Z7gtSz5SDr1iSHudprbjfTqcFiO6qL+SAUqOj/IcHPxe6pkYg4uyyxYFQbRul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759441794; c=relaxed/simple;
	bh=9hDLm4+H5VlWhOLyO7L4/P/PXNoCNuRGtn5yU08seck=;
	h=To:Subject:From:Message-Id:Date; b=KFiQ4l4xhO808ryGmmB4Lt3Cd2EJoamPW7avRakWUSpTf2vFDKrnuJNmzAa8ucIV+bSFnLe2ziQ4Nocox1CF9Ma14yVE39WubWUJkrOwVvm6FjYfErf58KfZyKLzfKLxkHn4YurxAGbYnVKVWMAKK+MgdD794yj+8LQfO098UKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcfoQFuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcfoQFuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1453C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759441793;
	bh=9hDLm4+H5VlWhOLyO7L4/P/PXNoCNuRGtn5yU08seck=;
	h=To:Subject:From:Date:From;
	b=gcfoQFuVfBSWyj5LTkjSBe5vjpFq+uLId28YvBpiKymYHCwsEjuWVJYBZvFZHnPx8
	 /vdr3/tVXWWEG0Kf9qzZp5MZn7RtVtYY0Fy4oyTO5XnCRqDDPzj2IOYTRXZ13UbMrO
	 60KxYSSuooIjRSbSvhoLpratXZ6xewDRJOJMkG5h+W+GGladntQi0szJ7VT7loh2Gu
	 qzzKVA4QpFqbjBl0oSBXic4zCG5YX9ZT5P8iJRJOY2Jw5sEDKoazZ4wbFwCa+u0j2m
	 KnOCRNKpfxILcMvzCKRgo582boUvJ8waSUx+X9RLIjDRiRaSouL0p4BbEBN8V4IZwn
	 MFaJbtyQTlNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE00CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944179357.22179.16186125830577674680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314b4c5b111b48f534cba9176647379ae2f3780a56d828bcf22b3aaa9615dac8
Date: Thu, 02 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759441793
