Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231981E32A2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768749834; cv=none; b=OTJcn4rbegh6ipx42DLLVYqAszfQfp81o1UVHG5k0HYa2JkrU5uTbyds1vW4vwQcNpTxM1z0zdDNCVfoFyvaAZ2FIkQEby3Iod1WpAL8buQE+c1zQQVvD7kScyzrIT7Uk1S8NryLJ3K7wiLufKGzMRgXFurd1G0FID+ZepWv2aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768749834; c=relaxed/simple;
	bh=0rF81NHce0MeDBIYAToQrT0XFWJTBk0WYqAaszTOHUg=;
	h=To:Subject:From:Message-Id:Date; b=RAIAQeuyX6I/dSxEKTcPw80p7i3vF3pDywzdSouBulCjx1tJP5zhUVVzlHo8M6X9JaEYTj+NRGkEkEKx8rh99dw/B7oWjpxFpedCpwY1oEERZPH9LF+b/xzh+9lLEvrJ4Z/UEtlUiohyHy+ZjNye0BrJHmaVQPlJPE7zHYTUMKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqPLhqg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqPLhqg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A289AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768749833;
	bh=0rF81NHce0MeDBIYAToQrT0XFWJTBk0WYqAaszTOHUg=;
	h=To:Subject:From:Date:From;
	b=CqPLhqg3CrTzUFAFfEufnI6lTpd+yLgnAIFsCY90dlnEyOdNf9mzG/i8nB0F8nIEG
	 vgS8U9AdzmJtC3RZ1uHP+JS6K4YwpSxng34WXyehDRzBD+fQDV1OmPy0HGnjnE80Br
	 MW7L7/mEtW5E4PohlVxNiUV5d6iQhRimx1zQnnXgzLCVTLORGeHJxV3siFhbZnDeWd
	 kmtoYzyzMcU7QDGFYkfN3NB20suVcd1H03VRE8OR+8/9ludF4B2BW+Q4Vh12V+sp19
	 YsVph+S3d+9p+TQeKGAphD9V0GSwXjAMdJd/39LaoAN3q01x7Pt3EyhLC3idRke3ig
	 UN0YhTWBKdTOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1BC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874983358.22138.7776958918308195077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dee7620a9bb469c6f555479380e8a85e8d09074e3bb0003bbc9fc4672a12a3b
Date: Sun, 18 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768749833
