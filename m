Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E2839060A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784624914; cv=none; b=smaQz/vYyYrxpywF8zxHDClWn70YiwiN4kEhSaUyZG2nJZ8Og+h/xwbYTuwxHqIvdBCV6xyhZGmWPoaLg0IHTK0qsYHTQtBPKXkm0s50blE+Y7yHs9eAY2fa+D3LfKWPguDfQqcw4+vEbUDrMElTKkZqcKSwZzUoOQeEjJq9paU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784624914; c=relaxed/simple;
	bh=Ss5KOeVG7dfYJFftRUoBn6matKW4ks72n0mq5g8NVKQ=;
	h=To:Subject:From:Message-Id:Date; b=MEdY55SDiJHu1i976I+PRQjpMAaN4UizD5uDGZOAMtAFD8rwPs8rXYon+pFHX19s9eheYxHwEotIJcSWhAp2TaTpcHpunzFrlOH5imtSQ/k8+gqxC2qghh8M8BjMximUCuguIFVolh3zrYFuq1I4wFJidGRrZtHDYNxpwpx6Kgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWldmgKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWldmgKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E40C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784624913;
	bh=Ss5KOeVG7dfYJFftRUoBn6matKW4ks72n0mq5g8NVKQ=;
	h=To:Subject:From:Date:From;
	b=GWldmgKDUQ8xQ6c2Psgcg3X+OeuHwNIbX6pqWbPQZMTZxjHebUXLreicjARRQud9J
	 c3rfBWqMHlqexTAfwZjuoQh7SFoUAWpmrzVfXFp9d830ttatjtw22SMWFUSu/A/14e
	 r082zUqYrHG6IahQjtXnJMuSsSX2EtWl2ai24l6eXxiD/267+ao2P9F8ko3MRXQG8+
	 MoNY0ks80fzR5UIdcxNKGSflGoPKRKsVbBRoLugvnAMrSvbZdHtNlG/pzr5BMf9CwZ
	 S+opGRl2bJb1NTGAx+o2RgY02RDedfzz8+6vBBg79gK2ZPxrBDG9TNDlNnarsujpER
	 DC2BRySv8VVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B0AC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462491371.1696.2420549966857365530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b79dfa42cefdd63d04315a7a913937ddc2081f15150f0a424024a599659f024
Date: Tue, 21 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784624913
