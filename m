Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8AB946F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751254195; cv=none; b=VAmEI3D1S0pPdJS3/ogyqx2FCcLa2mjXI6ujXZlpDtYn3fjjjCyrjWDYnWt8aXIlapTREFuWn/bsIjF6i7+2/8mkOMWlS/lqQM4fv10hjIVzXjy3EQ2QWJonvq+vDyYlHmLc3/JzEUyef259fq8GwWxKCQ/59G8OD/qZT0h6P9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751254195; c=relaxed/simple;
	bh=a3lLa9lvy6WHap7AD2W2cVU4+cEnlRKgIxdycl4i7+k=;
	h=To:Subject:From:Message-Id:Date; b=d1pqdIW45DVdIF2e5FyRYVPQHaFSMYuhWVh6F5lEc0B5urEh+JbCbyXLGxP+Xzst5ibDBB3Gm7mqaAeduAbLcwWobf+jlgtIPNH2uwI2Cra55oNPjLNuBJXG7fRKMWfhxZkGT1XcBsze8XVzhIiAmW50eCGq5lVQw8Ozo5IxRH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJafDeXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJafDeXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751254193;
	bh=a3lLa9lvy6WHap7AD2W2cVU4+cEnlRKgIxdycl4i7+k=;
	h=To:Subject:From:Date:From;
	b=lJafDeXT9mszZwqzVqCm8KpxVz8irQUFIVtBgPwa+34ecdmp87KsNKXoaxdCrt6rz
	 8Gpe2EAxqZ5vPRXSg79S/yPp8tht7a8Qgrufz5sQzjAP5j8CyvXdHCUY97BEUHyxW2
	 hWxx5PS8MwEfxKEo+zGSyHGwnbme01YCK2JiP4flb8P2RqhaecrOLlbBgQ3fMadSIt
	 d8TruFQtPeOsv7YnwAIGI1sqpZSSMw6DbrAmI6mSZyrP8wNmf4Fo1gsCYWWhxd+Ewu
	 f9mCV5LjomnilZjc7ZzQhENTW92mVqj3+3C9KK19T0kUE0GV6Vp2AOO1fp/HDz5JB0
	 di4kWkrgMTltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C47C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125419357.24393.375847795213571271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85df6bd321624df857d2d29223fe23ed209d017313ef6e3a52049c71a2043b51
Date: Mon, 30 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751254193
