Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8B436E48C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791483634; cv=none; b=fKWIx5LeddGBmu84FnDMP7Y4CLA4zUBlBLRHCfK7EEt/Jb6AzCUbei9gZDS3aLbZW9r1qi4etHqvYfjTL/ad1x7MRnS5nPU3svQrPhvDfpsLIem2I9jHApaRf8hv9sN+kFNnE6JwcJQtreFqmUS0vUf0vXdvwViYgX4RjB6w68g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791483634; c=relaxed/simple;
	bh=moF9NdZyGD8h2eZoOdCOiRy5z9g25NKjz9QtAOsPVP4=;
	h=To:Subject:From:Message-Id:Date; b=P8ygWpNUz9LCr3XuPlBlhazGmQ8KbaZhbcxLWwX4yLQbpRC5yWebM4m6XRyWy908Xrzhrf4wNlMkJlLlnN+6z5FtXhF2ihCf40oQua2YWqPgyCU/ZKuNb58P3F6DaquMf9n1QMxB1+mn/YUz0S38fSkX565O9h1++a+P9vqWJmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNlJqYZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNlJqYZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F48C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791483633;
	bh=moF9NdZyGD8h2eZoOdCOiRy5z9g25NKjz9QtAOsPVP4=;
	h=To:Subject:From:Date:From;
	b=WNlJqYZ4E/87QLl1z6m0EUu5j0nApRobTbQ4Dokho09ZAz9MOm4OPAckeiif+KxnB
	 cXXwfSxLZ7T2cHAYonzS+S+GYtVXFa9Ymadf1uKa5gmxKGgn/Yp4SBZ4JPApXa/WvG
	 7YfD936xyU35LCjbUkcFqFm2L9/m5z7XzlmEhOYeBe6x0R/mkEVPkydoMWBcCZaRwL
	 uq5MpD4+jWBBq4MlypoDe51u9VDs/F3aXuOJWBgyzmIlxpxhkx6cGKhuAPAsVZptMJ
	 3UQr87QTuCP+wdMCeAmAf9V4wDjcbox5Et5eTDC4rifT+w+A92RtoeGaDO0F1+W+DW
	 gre8bGU+D8qNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD052CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148363368.23627.16553188357758059253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d0008c201445c61d7d2eea968d9e91692665cfa21083c65d3dcae4eaee4b21
Date: Thu, 08 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791483633
