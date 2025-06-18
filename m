Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262FD1F1505
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750219794; cv=none; b=MKbXnLOqgM5eJ8+yi9sFcXaEE9ovN59ObVUXPMfWMirfpm8VN5lQ5gm8nApCIHiln8MVbtKfytJgJXgFhAEkOTuBWQubPLheW7IXnD3dwrPyIf1t65YpggLY9vUptFMXFjTkagcg3iONMpil7erDDjEV6AsC6zm6BQjQKqZymGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750219794; c=relaxed/simple;
	bh=nqHbcRtKJYBPWgLf46UoQVp8hXQr7G5t3Hc02sMFEU0=;
	h=To:Subject:From:Message-Id:Date; b=Hqwyjzo0vQ5e+Vjn05GX7cAXENwqQVJgStIsgLQ/5ItLflUHUGvrWyzlaykcpKZAD30S5APTv9bgfN0FNCjmRWBGXy8luPEu8YsbzdsCJjhI7UVMBsT+/yxxMLIMnTJRCeyXOgP+HOt2Fm3C9HGC1lq8INxn2YVmBHxi2neBmIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+bPYLVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+bPYLVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A126CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750219793;
	bh=nqHbcRtKJYBPWgLf46UoQVp8hXQr7G5t3Hc02sMFEU0=;
	h=To:Subject:From:Date:From;
	b=D+bPYLVTAb4fO3iwkLHpUep5fO2PEQIgJ8k9ngSSjJjcRFvq2GdKUaGa5Ts0W95gL
	 1N2Sep9KP+ZN7icMiF23ZJ7VKF/Sf4Kops+hmoKaLMbkXcVNmonNQ4EOHwhev1/L4k
	 DZnoiu87+ylbZTDyo7Uo8cgOWWFuA9CXKEJAfu+XDRtU21tAwkowf0dnMkD9ZxfkqM
	 Y+PWnZD2GxrnFaOc75Xx3pe2f0/IcU2asRy8Cw2xHxcmlC53+p1ekB0iDoFiFKk1e0
	 n6SvbBUfYnntiZJ3AqBZx7/4isOYpj21eDWZYIkYnocW94w5s0Vk/Wf6Inx/9nYmvk
	 yh/Cz4m7JgFGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90274C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021979358.29749.13281281429646870660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65c783f46734e543c4e356b518975b5ce3ae66f54580b273c6f6e61d733b05a
Date: Wed, 18 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750219793
