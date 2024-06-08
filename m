Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8963228FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717808243; cv=none; b=W63yspkedTq1HrZ+GcD3X1s5/Z+82M92eBIQJRnvwnTIxwLIEVaJZm0cHlvaH0NDHC8whNl+6szE4IzsRz0rsPta+9oo+rcKgI90i1qLHTmwDC600Q/q8PPtyjfeTo7h7S/edR+09PoAb3thCXE2u2emRgloGiLofYE8uwe0IKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717808243; c=relaxed/simple;
	bh=xaB/sWMkC8w5qKDts8J7w4tAXbvuLAUq5wSOJ9MtxUE=;
	h=To:Subject:From:Message-Id:Date; b=R5YzmKNKGMQKhy3ItVFYo7khoY2A3YXFKU7QdUdkbX3OXhwdYdDK6i5jvStM/G/JhYnTyfb7CSEnLKiEVXeZRSwMkHA3qe7QesfTaQ+uUzam0xJuWn1uCq7iX1EPQuzSWeqsoBbL1qJtR7PQv4oezDGvqba5WnoE1Hm9frsuDYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k630PSlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k630PSlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2893C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717808243;
	bh=xaB/sWMkC8w5qKDts8J7w4tAXbvuLAUq5wSOJ9MtxUE=;
	h=To:Subject:From:Date:From;
	b=k630PSlLtC1a4IFUKU5Ybvh3sayCyOYQja0GynmAJGT900FY2nmqO4lIH8Qk4b0fm
	 cVwPVtlzu9feWvhi6dQqt/Xmlb0GXGdKxDvNJJ9QxXyuS+kX0DSBUXc4v8G3XzmCuN
	 7WeoJq9c42blHj7mbMVtdkkxvDijPuFwhPJis9uI0i8N0y03m2pEJEsraPUxekO/QW
	 VfuKh21fmTbroCdmDYIFJxRnYPmQUdZWwA99nYldf45Va0MUTqbHGgjK/Zwgd7Cb4I
	 LiutxqfDYSGaeIjxliLlKzT7xCBqttNWohA+8XAkc+PBhr5ngAuMsdPnPOW6uDqZQv
	 a1XtC5IoJlDgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6664C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780824282.1675.16290740164491584404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efea5cab592b5d1d15514cd50d0598c84eca3a3efc6785f9208d4cba282b66c
Date: Sat, 08 Jun 2024 00:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717808242
