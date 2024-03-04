Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA96E25565
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709543896; cv=none; b=PlAS9ERGyU6uMENHsUdwwRJIs9R8j/l5iez1K8AsdAKlj+qmLk4wK0jxYumcmy3wwhhPbZiVjWd2qo7W2Mlkg/OGJHpPQJiTSeXiHDpjqXt5T6MXhlSm1o3ILmAV2k0T07kcEQ7wx08ZnSv2KL+8esjowCKxJbiKisvfJOCDeno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709543896; c=relaxed/simple;
	bh=0TS8WFVPnPYtu0UMWzP8nXSf9JOHoT5GlKGnCo/b2jc=;
	h=To:Subject:From:Message-Id:Date; b=GsXbUDryRueOnX37RiP4VvrIS5j5QndDB/6vBlTHgGzreTU4fE+bHfH5dZIVyq7RmUNyMGfr3mFsE/2HptM27z4m68OBAOK5jrqW+z+kvRIfSzF/CRxRJybZvM7JjPTvN8CTay3FJDcKDXpJp3yEsy7Xb3tljMZhQ/EyGbwQLjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeduM0DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeduM0DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B13BC433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709543896;
	bh=0TS8WFVPnPYtu0UMWzP8nXSf9JOHoT5GlKGnCo/b2jc=;
	h=To:Subject:From:Date:From;
	b=HeduM0DF4bKuxHaCZVD12yGu5iqv4SKkvQWRrzSzLm3ZQv2YRqzsoTzJFUmKYgjVT
	 ry2/cvmQl1VFQ7M5bliw6wl9nJbuCR0GhVX3d/9Mp0veC2Nh/2mvdSUK9UVJpt5jvh
	 h9ltpWUHr++n9UKhGaQqSoC5DVAD87gtDzF9+/Ns+FmcFvTxJB9AnpAvLj2rlSZlgL
	 vSL/bngxdVtwasDyXB5T4X7JHdgUGwBqTvkAaKWy0W+YRrAnk8UcWaZpRMqgGMroAj
	 av4eYWpIQdMEYBShxWlUkx/vw4/wSliCi25r+igVu4EwieD838qTUR9ugCX0Z2wgzy
	 3zWeL7kNvGoWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F562C54E41
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170954389638.31752.17533017116237911704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f65062106e0942baa59f2f3c42ab03301c87fe05c2fcf0c763571974fdb4ea
Date: Mon, 04 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709543896
