Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686DC36EAB0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788807036; cv=none; b=gNiBHThtS61+eXjbh3q3kkYkDxDEZMdtVpUkp0LHkFh5IWOqOBzBFHUCE3SEzYUNRcyIUT6e5TM595GPFoqfHhg6wZmO8eFgKmek52hnoJh/kMrFC2efzfgcujrPi7k7VqzbVLNavLxMQETfUKKOQ3ohz7s4BC17FYzQaUzJ+1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788807036; c=relaxed/simple;
	bh=mdo6wF3ZnBaXqTZQFsKWBVm7q9fNvPrVjQkXDeSfGew=;
	h=To:Subject:From:Message-Id:Date; b=IxT0Jnpvsqe0Ds5VRMmvO/TwRfODN0bzG0rA/9HFFeQ753xwygiL36Z5GHE1efmVkhKaARnpvnzfPLAbXBDD2xgd16yEZMm6U9hZ7UlQtOlusQ9eeo89bPIsQ8jD43sBAhiZ+YGuM8yCWOLbba3cUWpkjePQLuQgHKjTRhcVHXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZoOydMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZoOydMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8DFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788807033;
	bh=mdo6wF3ZnBaXqTZQFsKWBVm7q9fNvPrVjQkXDeSfGew=;
	h=To:Subject:From:Date:From;
	b=jZoOydMn1X391qRBwin7lp69n4pR9shy4Gqt+Ls5q8mjQEVTBh3uDK3cvO1pHCXZ2
	 Sy1PBy1VIFxV81ba6WpMUcEW5oM5k/ZxijjZDrnzo28E5DxDYxVk92Dx4LVyxM+7n4
	 PQzWjcG3602edPI7FrbV1mi5zvP6xYC0q8e0IljiLHjEfbWz2UPUo45VF7Nu62SBUm
	 oWqFN6civi/3IKeB4zvs8itCmNwWjZo5h23tqA/AJWrCiaEQ/LGIM1iV3GzclRtyVk
	 I3zVbWG5+xyXGF40XDTmSYVpolKhfQpxMaDlE8osGPv6RA/lJPbT/0jVMAPR09hONS
	 7B/CeDIfFrmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADED6C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880703370.17867.8364510136488665981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5744ad5063b939995be097bafcc6711ee7c1ff778075c47952f3eaa77d664746
Date: Mon, 07 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788807033
