Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAEA70823
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752343796; cv=none; b=RMcgKpDQRQkzCD+Vd070RiqKoDeRjm4R6eCvGsDzSjqAu2cyloNQtY3wOQU5TVLbL806Y5rJs2RQEJx33PtmQbulni0VJiSXyCgDIe0Jy8CiFI4X2LW3QbXHWwbr+xGPn/h6itDIwBtBwwpSTY3e6+pbMD+jVhNl/+hXgCNyIrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752343796; c=relaxed/simple;
	bh=1MmuQRyWc/8nCO/RJ2x1WSmvb9PQzXsUGU3ePtxtVQg=;
	h=To:Subject:From:Message-Id:Date; b=t2E+tosyw524ZS8JrmZCL5TkFjiCkjUkVO80ZoftkukBGABnL6/ah21N9k/BDCY06P2wyN350DG1t2GaNz7QpOsa70kGzYAdxzfCKM8vNRfTo8lujpkesA7PKuo/7hMnMiUFQ6sVf2b8z4PrOXYbJBsibH+9pBDk4QL3APzRTkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWcAZkEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWcAZkEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ED5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752343793;
	bh=1MmuQRyWc/8nCO/RJ2x1WSmvb9PQzXsUGU3ePtxtVQg=;
	h=To:Subject:From:Date:From;
	b=jWcAZkEz2ZmKIFlmFh1H9eIxUHJfpQVnAlte/BVASlugY32cFt2Y0joPumr+BvMr+
	 RfIsNqNmy8HueIewGN+mA6XVhR1h8xDnvFMhMFY+b/Wt7k2JQEA0uJXjxumuLczJLa
	 mx2aa+L8uCmb9WjcPaDPFLh7RSAieaNEHv9ZZ4qkGnb3/J7BAH/BKPlM68gx/fS8/4
	 GyLepxA9Tfu3CNxXuYumImG13Ubzf1ALVbTEM5u9/6eDcVY6eds1V5tuvMfXbLccUT
	 UMxLrHY2c7FKFJQ30YW7dbez6IndaErhK1tAVLxPUmpolsJ+oBjrQiHuzgsaV5x4VJ
	 0XcZCNuNCNZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E57C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234379357.29456.16040798366962611244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685f691e6e82c35884d47ab3a4fd708a60fa0fc4acdd486f29699f9f2e7deafb
Date: Sat, 12 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752343793
