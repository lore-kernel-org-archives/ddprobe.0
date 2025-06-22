Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056381C5D62
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750587595; cv=none; b=Z0oik5TEHuDQmofqjREDO1qn65b6yvmI3K9h9frsP1znRhugABrbSHST6QPTTZm0MYAwV2DKMb9dXCgFjjDZ7WFtqYR25+aA9rGtzobsoO/ezIXtgwyQyPC2jaR5bG2cuxoguZoRdUa1BPlBM/nP2DApiCLjkKDXLnC2sTM9V0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750587595; c=relaxed/simple;
	bh=Ei0jwBUVXt+O58h4+MJkLwwf+e6wwvOIOJfJ5BUUvIM=;
	h=To:Subject:From:Message-Id:Date; b=hcd33V4FAWArVUq5fymnJ84YQwMnVERDHb3M0+Y16o7ISbu0oSGsHukYPBVbtN5PWGpnUETih1mA3BDB+j6ux1TFL4PXEzBJA+VuxdA4DM4LNnHWw17qWkQg9MceQQEueKHE8UeMwKg4G5EzbmL3dtHSogv58inq92i6/H59kz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU8TGsRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU8TGsRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4206C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750587593;
	bh=Ei0jwBUVXt+O58h4+MJkLwwf+e6wwvOIOJfJ5BUUvIM=;
	h=To:Subject:From:Date:From;
	b=aU8TGsRoudAsKoJ66nV9FQQm/dXgqY5s4fCNiUvaOHPvycRNvMNx52NruVbdI85u6
	 p/TEEHKxzTLzrl7H74WqNkcLhE8THGHYrqlHlRKD08wwrsGpStPJdVMeaQ/xqVtkiQ
	 k6RR+dfs7eeWpz86KiRzcrfyMG5V0LlwVdTSjO5ApxO0pi5zj6/qpyo2+pvyEBEoFi
	 RyhIJbP5LgDRj/zgoRILXHyEyYxDzPYaULC7zYo2AdQ9qv/zZWDxNJgh0wDy/4EJqw
	 CG72O/tN/Gj7ZT2zqxFQn1k6JeMR2JlsEvWJkAcX0PhYSTO+qfFuI6uydH3Zrx5aun
	 WKS9WsfQp8K3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F24C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058759358.9137.633262741344158306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cbd0fccc8712c6c1034beb823f42906bdaba549f82d9dc8de4da1d0feafb7e
Date: Sun, 22 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750587593
