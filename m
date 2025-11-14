Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F52285CAA
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763093994; cv=none; b=ENTf/oM+OfUvC5UTQqiDOvMJR4mmiNQRaKVgc8cz0WDXAHjrtmeJvmbBkwfBZsMaI09nlYzqlvwwc+Lze0Bob9+Ey8hab+qayJpblUqd00H9r1nW/g/nxgmgFiP/A13A5k796fVH+kqBW2GURMezuK5r3X+7TwpXhcC2Zqp+1YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763093994; c=relaxed/simple;
	bh=z4OaVzYOTdwq7mx4TQcUUgmi7PxurnW7DW89DmNllWs=;
	h=To:Subject:From:Message-Id:Date; b=gc8HAKJg4sfKE7xjTA9gYOUJtwSsVpm9d4V2YPc446kRCzvytvBUNdIHAI/lcprAtFINolxIGITwfxIXNgUxC+JE/ciAT3OgdoqL+cyYzbLF8KPUz+5DATYFb97UTLEDWSFJnohrXIk97wsgEXSday6H0z5QBdjsFkdaPHtKdXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU406QW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU406QW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3120C116B1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763093993;
	bh=z4OaVzYOTdwq7mx4TQcUUgmi7PxurnW7DW89DmNllWs=;
	h=To:Subject:From:Date:From;
	b=RU406QW0rt4tVmHnK487RNYC5X0CS99liUZ4x498WWx2ReOai3/vidUjEEAD8nDmh
	 ixl2/5pIvup+a2sAE+mjobmOzjH0keMOQSXTHE1auMi9cAfhyQqwOZ0b4C5GEN5jHq
	 99ynB7SLD4emV1gOpgv3X+dmPjc/xEbiicoWvqHsWz59YqhxOn1F4heHxembilaQ0L
	 7Geq5Ns5ttspwmw7eLpNTGFkFLXKOYAqEycuMOkHgNFVEhDnYEhYvruIIIpp/voNI/
	 AOTiF3SArqH1TuFLvfZqzLHSvZ9z7l8Zw2pVuNmS1cZpjqufSvxlhMfi8ixhZVHZex
	 jn+pW+tDr7ttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B016CDE00B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309399359.29789.5985848451591534667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f9d340354014bcf528db43a97e1b5f7813c5c007977707b9f774685480137e
Date: Fri, 14 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763093993
