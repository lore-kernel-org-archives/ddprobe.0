Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5933E51C5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775151334; cv=none; b=ObRWcmVhMk+spEpume5L4vIICTO+vne9s4WMHB+Z3EHe5okTy4gkkC6B0NPp/xAPdgRzC2CkiZKdnhE/muT33DpWQMG0a6wNtY9/Mqi/cPA3PWl9ZM3YtFI/HzOsKpn+U2i1nOc9XfJ4EH66NcFa78hTRQhKbXuoY4nZAEtuTwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775151334; c=relaxed/simple;
	bh=Gxum+VH9kmDomaOKrHUGnchvXDnJMyJ1IUVkVV1U9E4=;
	h=To:Subject:From:Message-Id:Date; b=DBgTtJ4/sHKqCIgprrQLTSN3MdzMKQrO+UfJAtO6CvYZsrsgQZb5DWxIvddBfQf1LKWwuIYysvAmkvF7iggel+fdYssQ5Mzb7W/55yInOG2RlGasKGgXK+tpFHpkz6PgSiAEdvzqbeTRzwdH+1zT5BGhpTDgVGHO6LXSs06iB3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcddj9Gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcddj9Gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37B6C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775151333;
	bh=Gxum+VH9kmDomaOKrHUGnchvXDnJMyJ1IUVkVV1U9E4=;
	h=To:Subject:From:Date:From;
	b=gcddj9GjX+phMOjK5on6Sg2IsZiwyX6lEHnVeEOjFHG8wqtHi1U+SpIaNsjnFsLrJ
	 yeZwQZ62gkhPMidFQSZ11Pybd795nuY9rVbespPqvxPfX+QpErC+u8GDs3KvjaJTim
	 2VDIIAbiUdr7NyakzN1CiXqigCcZnoa5snXtWaw5HBsekolTCtef3EALzR/SNItJ/u
	 e1cQBHjx/I6O83vWt5wAshC5xcCCZ1sUuYfV83YNAydtkiBLf5nWrVcraBJlThBWgS
	 8jYaPlKxj81AyIi/xeQRxWUn33yg053L03RzQp3r9RWkbcfGi2M8CcfugCT5b+OjgP
	 AZASKLNxQhwNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18D6D6AAF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515133369.9841.9184496529589434980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb07e286b0336179f2579428f2e3672bf9779d005254d7b219bc02d0f5cbe21
Date: Thu, 02 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775151333
