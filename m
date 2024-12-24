Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B227702
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735028154; cv=none; b=j0PpPugsmv+YJnDG5fiUkSYSU2oho6DhXYhWQSSmOKm0a5AFLBDMYTWYLDi3PBWS8a+VtFqSz3CAGoZ11+LSURvYWau2MoX37Wk2VdvEkpOsevIlt/W/YysJAlFyOHlikSQxoSkaSeWDOwmx2K5ih7AlXMkOZr0LSCX1nzeKrjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735028154; c=relaxed/simple;
	bh=d9o0zhR47N5DkrQ6i4Ou3g8j11y5hpNE9HZ7tReo2zo=;
	h=To:Subject:From:Message-Id:Date; b=SX8/gius6plt3sSYc1T/KwGbVlW+oZ+j147Rrouj0dT/7ZndMAvsTRYnhGUTLtwdxaKR0LQ6yBpykxBCgDuDD7I/SPOKnSdEEorROi1ICT6QKCWSBiDYa3w0r/HBzq2NTrs0TelhsYxawHiKlpZn4MYatJO60hu0YABMBFGx8Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA0oaYZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA0oaYZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68FAC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735028153;
	bh=d9o0zhR47N5DkrQ6i4Ou3g8j11y5hpNE9HZ7tReo2zo=;
	h=To:Subject:From:Date:From;
	b=kA0oaYZghYX8yuOIA/RwEj/YTM3YUyatAMwxJ26Fh62CR1BGhWxlgjbgD0azlC/li
	 6ziPojGR+45kCr/hImVFj9u6Aps0miKIw7TjIsiuOMV86JT++PJLdasW9CMKatRjt5
	 ZNdtgvaSHqloGVc47XdahNArP8jsKEaxgbrYRtUsxx+7wlxO/XJtasgfu8daN99fYP
	 130Axeyvj4IAWUt9Of77C+KDHd95diPUoqgO5hHBOBBn6CfsNwlRRO0wKzPiuOXWdG
	 nq9JxHY2Z8xVdtpc/2eqGruIoCKEXfBz1piDIl2mfmdWx56sRjxCf8qsYL349hfw4/
	 66yUMiOTyIwaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7FE77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502815359.30420.8924141558121071330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea208fe6863e785a5974a5f97fd6128e37fa04035b5ba9cb094670fce6933c59
Date: Tue, 24 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735028153
