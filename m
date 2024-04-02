Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22FF9463
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712066297; cv=none; b=e/5HYANGlznSO802M4ECXdr3VAcdApYrCc7rqnbrgeKmkPhbjjfG6B++16NXPR6GJnJdJET/e7kXABoIE75rGkuVd0jswqgfGpvd518Wu1+a6kwJR8UMgGnvX+pM7jgZ9Le6NmBKj20hoaR1os5BA1FFEyTFxWyojt6p4cmGEP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712066297; c=relaxed/simple;
	bh=w0UMJ3KAYf29jNdafWgL2W/A6sPD16GPn4+DmaztLPg=;
	h=To:Subject:From:Message-Id:Date; b=sfuUdlY9GjZJIswKZsqxvo68lTt9FxmmZOf+tSqr4kJEHJRPxEtiBr3XEAjh+YG5M3/4m4bjGUE90KySh+m8cYWbW3hAgY+Z1C4dzDHF74bqwYLUqHHrf21ZFPKd0oyYYq+6+qG/a31sJuaqjGgU+i9A9Ycsq0jkdoL3jl7GXGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ/CG0VX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ/CG0VX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E672C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712066296;
	bh=w0UMJ3KAYf29jNdafWgL2W/A6sPD16GPn4+DmaztLPg=;
	h=To:Subject:From:Date:From;
	b=JZ/CG0VXtzJ1IR8Wk9k3xx9x2IcC1KQjqU4X1kKOSKk/ss+790S+Jqxl92g+lh74h
	 IW1ZPW6m/n24pkaLdK+KVwzzcv7AsFCkkbcT1RbvqPU8uqMb7BW1qjLHSrlGuE9aub
	 9UJXYsrYeE3siwVIvz8R6EUX6lXS8ze+6ikj6xf9kCH+X6k15AoFwsHwcdiPJKkRO8
	 ljEeHCrobGW8VcJVcVTE9SVrV5fyK9Oh2KvYJewDvWTq7gAtFa3kL8niHdijhHCnNn
	 ghxNjuwbHWK5MBuW+H+vv7SIOSG2DQ+ujjt0PVPZKo1/bT8wJ+LrAEKR3SzCP7dJ2/
	 8DjDWJwlMRWRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67027CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171206629641.3530.18061051954738258143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e746e74d3186d81c1c826a12ef366a1b8d06821629c9ffcc54aeb96f12ecaece
Date: Tue, 02 Apr 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712066296
