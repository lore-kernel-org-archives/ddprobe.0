Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3743B71C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792256434; cv=none; b=oSPuRiBz6Vi8g3xDVic6wv2DRUBbahe4IExN1JyHvM8/uzmZ9LMjvLhrejwYbkymJxHXmpQbEtJE6++RPQffZ9rV3IILPcu1NcKvY1kVfDWMmKQvkw7wDmRu20eIyeDwouIsMrGNf89rYoSQH6sEVtzTRdG72G9SVvHSCf4NpOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792256434; c=relaxed/simple;
	bh=gmRWKkwsuiie0AZC2TX9FJkAQjL22E0lRexhO1oV4qI=;
	h=To:Subject:From:Message-Id:Date; b=cuX1UqG37csPiJQFpOoHrKbnCa876+igBkzMUNmiX/wefkWy3D5vR3MQ1pCubFAPSXspECQfUE0Uk1i/vS8qHpDiiIlH+nSSYhXe43GddjYV3tnvywAU6WaH4Xk1WWIX/NeCvXTsoEu7EwotXE7nm6SjTQnPxQhLay0/r9XLT60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osd/fpqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osd/fpqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1591C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792256433;
	bh=gmRWKkwsuiie0AZC2TX9FJkAQjL22E0lRexhO1oV4qI=;
	h=To:Subject:From:Date:From;
	b=osd/fpqO4eYgt6+gou4UhsuRPO5wB9Ek057LkA+a7VE4hyKNAcftG/c1DOkmbtIb7
	 kJlys2HEBrvq5Q1ka9sJTRbSw2V26d+40Sh7gBjg4Y/zzmg+9kRJsMKvM9W28hxwRV
	 TRg4MpHKVGotsX/1p0itcFQDXD1TKUHIyhKTqyAQnN8mVfjf6BTf0wQOW9Jd/tjJ8e
	 TpT5KAchSS3b3SiFWuGdJyzIa8gRIbEVRluIwBdJ8ySBWNqIcRV/K0b/vbhYHzKvtk
	 8zZGgLaAGxN7LDxeq4Bz7KPikWGB0pbL9X1/NkTMPntOxDdEGRNvad8NOzs2A5+rXG
	 IkQziK+4NGJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2DFCCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225643374.3439.18086804880283317078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5023d72067e069e717e401af1d0c598ae2aabbfb2975ca160161afe798738c53
Date: Sat, 17 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792256433
