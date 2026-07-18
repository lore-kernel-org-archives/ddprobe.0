Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685093DF01C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784392114; cv=none; b=ti1kz/hxpIKUlZ5jA4ZoHmQ4GdSZvEvQ0Jo0lIdsFggrbgn8NwX2ruPJGEzpMLGcJQpeTSn6YLVMRNSZoKLu0Lq4GhMpmRIg/Kem+tMvQYGwmB+/YBdwdlZK4EpEKGTAOPpIyPGvsB1EDmGQL2qCAJW3aC+sLXKc5uyNt1K2eyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784392114; c=relaxed/simple;
	bh=4BYiKjesZaHFGGryWlhLsnsro9TewYVuy30tqAu71Ag=;
	h=To:Subject:From:Message-Id:Date; b=OF7Mi6Gm2m59/SqgTyxRsyrx+c6ru2BuXfrygkG4FfUs+GyR1CGyjyBAHWgMKq7wl3ZoMMis63lt+4gXQVK99JnO39hmYXczguz+yN09yW2JRg2+b5KC28jjvk07AV2+JjHrDXWAQqSYa+pff9wqss6zpS8WeuNFL83OpWwUh88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNEvBm38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNEvBm38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E8EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784392113;
	bh=4BYiKjesZaHFGGryWlhLsnsro9TewYVuy30tqAu71Ag=;
	h=To:Subject:From:Date:From;
	b=TNEvBm38eOPpVxIAsmVeDQzGiU1y25QiCqVvNjNwkL5MtHOxZnFWRyr3utdiy6mu1
	 0tqRmMijAtOvm4cHwsRpHTRO0gQoy3vw7mWVd/wOwpPQJz7nAxDgDEzgj4do7HUJma
	 4/LnIiKB4N6rE62sougebaBuHbsDzyFrFGqgkv3BJBKj/EfLyeT56bEr+W6c/+mNld
	 FGu/td8ecf7h6apD2wUjvR1nOWQelI8WPdAweZeH0+Uss+r97CU0yCXxGf6RuMDdhB
	 9V3dYCLJPMlF8e7Di2xdC602rSDJV0jP0dU9Ew7MY25FvPLegcf7lgEAC8nqKxb2XN
	 CRBWymBTCfUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD7C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439211369.7711.14663759559240631194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737dc28386594b26eaddff8aba8d487e15b62f768dc2826796fa7b6875de77ff
Date: Sat, 18 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784392113
