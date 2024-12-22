Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B6F7DA8C
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734909954; cv=none; b=k6uWPtGfQ/SEQw+neBn5NjIKXNLxV3c0GMCWBbbnsKotnICe5PhmtUObLJO+D+XSEDmUDTY+aXzWpCVD/eYF7bImW8gcMln6eYBsioT6GcmMl5YdyQirfsPmyVx2MoBzDTQtQnODdBkhLYamH8qUx15r3xMicG4kzbP/uDuA/Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734909954; c=relaxed/simple;
	bh=2+ZDp1rKDFnwTrliM8d/+2eF6oARsFzqdwCWkwya5xk=;
	h=To:Subject:From:Message-Id:Date; b=TtMHEATDFoyjuvez/2d4I5HyQCpO0Q7euj1THXCudHH3LcTZluJjOWbTPd8XwqOWWcMZ7szRDjkBb8Hqa72o8RHq3Sh4LZ1BbSgm9dOAlDAlcZrIKEgzF4nktQq8fNfCFWy+EG9/DywYu47zxBmk0rh3YWD/aoXMnoFBHXRgFxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkMwSa2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkMwSa2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4706C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734909953;
	bh=2+ZDp1rKDFnwTrliM8d/+2eF6oARsFzqdwCWkwya5xk=;
	h=To:Subject:From:Date:From;
	b=VkMwSa2ZJYIfFKWYaD7ZLJVLitUSuE81ABf3peOOQTHU+ohqkaocPkwEpynneMyLb
	 oiULKN/VClFYnksJC7ppcMXDKXlY4mDVxn9n9dR5yx+SNv859qHJYmJVMq4C4spRvv
	 QlvMLtO2h5lj4w56czRvD6x9oxJMAFWt/Aq+DUXcuFhaNX0Cw8c6CCsd+XZB7NYZov
	 wo5c+xzzNtd0AVjzPgxjtNVsqmeVQE129ANur7b5wGIavlggjbOLQPa3b2FVtZznee
	 Lx1lhL2BaqZQA2dX66iQwJ5FgZ5pgaaDCWium2VI1/Wh0aaEpQHfs0gAvIWWLL4D0K
	 RyS2qSRAb+4Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDB8E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490995361.12529.6199697134681373291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa61e06d9950561a8b4a2a3498bf0af6bead95447259867b3494f698b965778
Date: Sun, 22 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734909953
