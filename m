Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E50319CD17
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745599194; cv=none; b=pp2HHO4kHGNEWkvSzy7qM/ohM6cu064QAQVcId/D3sTkU8hOyDX/MhhfiTFMPOQ3UMZNvcgi10RuOz8fq5Jpc4ZcX7cSeHx/pRYrhhxahpDhHZHKY/Hq87sx6geXyLd+DmiQvUZA6HAn9zzje4O8TGaL56VettdJKSGakKjyRMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745599194; c=relaxed/simple;
	bh=shGd4vXNjS950OnA175p4qO/4rQl3o5JvWtDUEpM7qU=;
	h=To:Subject:From:Message-Id:Date; b=Dm63ZBd5pkCQttMVHaOf+JtkcursWM4xmw6NwZad/y4md2m6/KSHU9T9gh4SJB4jeXqzR5nQd3/BJLxSTSA30d1CAmgU9U8CeZR+0hUpk/NAZoY8ajgQm5He6pnQja1elc9h1qf6fkfI/BLJelaQuVT2PunXYiDMBleIG/h8R6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/A94zUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/A94zUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBBCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745599193;
	bh=shGd4vXNjS950OnA175p4qO/4rQl3o5JvWtDUEpM7qU=;
	h=To:Subject:From:Date:From;
	b=P/A94zUGXda6rGm9fMfKQqtjPSqJvTVv8SYxC5RWhH9WYjAiHlqQ500wFT6QDxo6M
	 xcMphPamsypdlDHOyIDSU6kZm0SRFkIwXW0tpyGuK/Kq21dNA3vHDz0o+d63jn36pU
	 yRhbLyYcEE6hr4Q5cstXIK6y4ub1/CQ1hJ9Vs3gdbpvnDcpWtXbNXsWdzioOYiOZOp
	 I4aBMSge85vGm17eY2CAFXUzxohG0xBpJhnh9FgMnOoWe1pUnxctdEMwk7/Rpp24MS
	 h4hBrnH3AtsvOxu4V9GgtxVcLiBwhW2lfxw0goK+36ulUSemhNj2AVbyrC0Jna0CDw
	 x46hCaY4OQ9fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F118C369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559919357.16422.4377704388386045039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace9e79418a28cc57f74a7ef26f9f49938edd4c2d6d3f29cf998c8d7651f6c02
Date: Fri, 25 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745599193
