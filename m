Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F83818B04
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726416354; cv=none; b=bGssUsYLVMN3FzBSJ++e3lkO1NQNSZmAeQ1/XbYglNLWV36JiP3CXpYn/7xiVdkU7e+ls1ZBhtMwTLBoPGcWyi2og6uphV0jabi7wmntlUNyCqJNbZ+J7hkbO955f++Z3/PYFjZ5uanYrFWSJADQHnEiqoFZz47naypzEh8hRY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726416354; c=relaxed/simple;
	bh=xlxYxwV2KbErOJ763LtOI899RmM+UPXss2EtxTmRu+8=;
	h=To:Subject:From:Message-Id:Date; b=YCUCjWag1AYf+vvwE/8SpEp/b5ajZ9QAkWuVIz/S7O4YEXPdRYlSPlu2WGe+TNBw1fkOYfC5GR3UU8h7mLoGGRgMAeVtzWMrPrM8IAk6eTpk1CHK82BiPKNCFwcC0pDyXDevWsN8fwbOW5UxeejreZDbULAIhXHNFJAoypObX1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bbsm8MlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bbsm8MlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726416353;
	bh=xlxYxwV2KbErOJ763LtOI899RmM+UPXss2EtxTmRu+8=;
	h=To:Subject:From:Date:From;
	b=Bbsm8MlYMsh5ULIghBlBFt9PMIwqS83OKAkfHw6EyLgX19yehhhU+ocquNMD17p8k
	 CFzTHewrPGEkJajlBP2brSparw5R4A5r208u1DRd1yFTKuu6EdX7kWtRx3mxLNvD+J
	 B45KsFAaToap8ZgwhNvLXswkhEtW0ocgCO60kHH3Ax3OVS0tPdfHiU072QEJLTYsiM
	 6FtTKqUMVUpoSoG4hGkE84QSZ3dM8xzPTi2bkdaCG1NuXbeJzwiM/TzwlIZCLDsZQ0
	 zBvcvG2QZuXO4yj7BFaZTbSkC9VZdKjU7bAE66kIfALz7zDqC+/4WXMtFozsmj6ebQ
	 1SkMa/+2X45QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99837C3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641635359.22548.5164521605083508371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fd60c74b924ac3d64a280164842c5d82020cc131e7f0b8f0a07f3c50f85c03
Date: Sun, 15 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726416353
