Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE8E1534FB
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738454153; cv=none; b=CHxY6oVjW0odnP9h/tJeVYIfRIPRKgvkUB5IrBC/618uzJvKS9boUhXMVYfBTodwhqedxLmFtyZpkZKfpCZVgKcA8Ouz7FrhqaJH9bH6075Uyh5xo5vO4iY+SkD8ogZ4Hy3Afvh9rxVm4JmoLzCYI+wqDs5z+P+7JapZ5+LH4g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738454153; c=relaxed/simple;
	bh=hl83fn8TbARb8RO6keBy+//JGkSK0WVCxygtscOU4FU=;
	h=To:Subject:From:Message-Id:Date; b=HArl4jJrh6cakOd7KmfpGwyHsfTqL2Qs2QwXznQN5RigDthpxsYXFLFbctcEhxnHFfuQZrwxazHJbUHDNfKSERzYQkykRW9E0Dp6S+FjM0NezNDnqyfYZOR4bY1LpvhdUZQeGduPaVjBZj967f9LGWYkLCzzRTw3eEx0qeILoRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpWa2Vsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpWa2Vsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF26AC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738454153;
	bh=hl83fn8TbARb8RO6keBy+//JGkSK0WVCxygtscOU4FU=;
	h=To:Subject:From:Date:From;
	b=FpWa2VsfRuCuEoM8MEYnqIzm1Oub8Zl7+4/7qNKEIx6uIumQmX9Mt1zPX8F4OSCn4
	 mZpdyS8LXe0Z3DoUMmYaDm7YxpxrtZ1QxaADNQY6nziQPs3n4azX5/awzy2XGg5tp3
	 jLFKavXZjpLULCHEIYRMaQh5Io/9Z56tj9XvI8ZtkC3bPe1Gql7kG+XZjk0IMQCT7z
	 lvY4Y/bHs0CadKHEaawb8rxxy10KiX1yt4elT9GK8d+JkroafBI89kDhbAdnELYgFr
	 35FL/31yJ17bZz36FZtfkAYr59A1P6C4hOjNz8gsXhTim5RvikvKYal+ZMNKhmvC/M
	 ftqYbNGR0COLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A7C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845415358.22015.15619403977827313748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc900b5a6a9c8f63d0c5a9b2040d877ad9869f323b0910cc452109ad82427fa9
Date: Sat, 01 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738454153
