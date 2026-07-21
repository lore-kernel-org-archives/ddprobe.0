Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454693F7AA8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784596714; cv=none; b=U+oIrtx7d6O+67Qyb0uoLKPwB2hsNsYSwYuvMt1RSqNeq9e0A8q0MDlV34DXhO7l13Os5OpGo1AbJu74kMUKs4OAzgSZEU3Je6p+VZTFoXlVuKOg3S2g9c0zkIFiJ9iUEi+Tx/STo2xChBL76bfDVZ/nUTPgdhJ88YFx7KVvgt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784596714; c=relaxed/simple;
	bh=O9J7UrzGcQxIW0uP7H9LB79PbSQcwmI7AtWYZT+mBg4=;
	h=To:Subject:From:Message-Id:Date; b=vEoHy5cwvIdAeFAw1FgSvJvT9pCTAgiw1QQszB9Uy12LAl3IGsNC/67G3pP55eFIOhOc6CgF13X/xst8yiq9Rem+FfxiUm7+Y19D8C392HkXB/R9ewPEBtoKz4cIHtG2msvHyfJX9IhpCvzAtsCAg33D2LL8Zstts+Mp960Exxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na4TFvvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na4TFvvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE97CC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784596713;
	bh=O9J7UrzGcQxIW0uP7H9LB79PbSQcwmI7AtWYZT+mBg4=;
	h=To:Subject:From:Date:From;
	b=Na4TFvvu0DzIV3qPuF6EIYmRJ3iyYjM56AKPA+cKfFaRYNZQ7x7luk94s5DBI44NA
	 Bh/G6hnEBzem30rcdyjqL5LyZkT73SXHCK6pGvWYrU18Zk+i+vBwMBaNiuypP5uowP
	 h/5oVHyHZ6mlAU0jMpyJEpcOIoUtLDhqS0JHAihahHgLyFhJDw8iuCO2QaTxkBDeCC
	 JyC47OEvx9FIEHQVW1Jp22DcIvZr+16xDoWiMK7J5A6WUi8xazbeC0wgFsywRNkhWX
	 TLaGiPdFnbIdz7W489AJ3+Cj58qffgSck8dMgq+VTbfVHzUU/xc6c2D2RusBxLvq5T
	 APMw42Ndt6ENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBCC44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459671369.1822.872513947332307465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8824fdef260906da8034c504ae4f7139daa049246203d40854e3dabb46e2f003
Date: Tue, 21 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784596713
