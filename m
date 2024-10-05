Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418D325777
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728093954; cv=none; b=WdKAMw9wsTuMViLknY8bls/HnNndCPJ+tGnze/ubM08n0PPE9a0T+zEvSPlPyoa42WlG+vDf+QtRxycgkajAbOX5b0KOiG+7pLw2VT5k9Efcf9Q5sw1VPMnKe57razlHx6+RbMvefrVP3HwWeTuD+WCTcGz9whFuYmR+N7vElCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728093954; c=relaxed/simple;
	bh=bEgirUiMM2z/9UoAt6M2NVUToT3z+RhcoC0eiUYT+ng=;
	h=To:Subject:From:Message-Id:Date; b=XABFEs4L6hg8YtBbTBQuh56P9Ijj0IMRC1/lKmk1SXqV0XTybnF/YkxMa8bUuTcxlrC6ubTo8QPiVwy116RUj500ucGEg+SKw7Gbh9hn512fu6ttnWHwPbb0uPe/89ffbC4HBQOKpCjUOkZZTGj7Av3+57rcRZQjih3LEgJwmSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb6ibb4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb6ibb4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77FCC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728093953;
	bh=bEgirUiMM2z/9UoAt6M2NVUToT3z+RhcoC0eiUYT+ng=;
	h=To:Subject:From:Date:From;
	b=Cb6ibb4hoEltF6yctM5CpGa9vX1cwBVXnaGIvIBXt2+vSrttBQ6cVX3IC5ILcEsvP
	 Lc8Z6kFcRu3h4eiEgRY1PCprkAGg1WGXI/t5Vk6NMYcK1ovLyYh7IPeWmhTj7y8vdg
	 Yywa38PfknrmG5JLy7VB7mkBBFMPHlA3FBy14RizaV7GhD/gQwHTWA9mPj6VTRzMLO
	 xWkFPIhzg/1J0pKLnJ5z4TE3TI9XTbGsTRRUsbgfLTG/prW7T6fXDvh1blTohWj0pu
	 PS/OQ106l6PQAcbKQENbir0P9pk/UTwhTbRvyYt58L82rg5GmHwXglHwLJ8inEsfIw
	 q2cxhLGlGPsKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAA5CF8868
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809395367.16009.11259481941976901808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1057d0d0a89861f016876cfaf4f6baee2e3c09fa856f90430092215d9523106
Date: Sat, 05 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728093953
