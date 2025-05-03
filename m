Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA741AAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746299994; cv=none; b=Qv62H7cq/lWtgi+jN/50LHVqysVdsU2MXLtChc7ePmJzX2BHhPM/XE3CQ0ut/9ppvgMYBq9atks192r+4K/RcleXodGTOvimoZRxbVb87nWg/0DCQoWpPKCyszBKWHm+YXVRdQbeFWQPkIiNxE26mJkR2CXpu59AVGoUvgkMRvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746299994; c=relaxed/simple;
	bh=KFYz80743vocXDilquBphPxd1B2PTuiB21FDcIVNB1s=;
	h=To:Subject:From:Message-Id:Date; b=H3UF7VH+YYSy802MRC6EASdPvggLNDxn3f2KrSty1aFaNhZ9c4ItWzSgXwB+oqhya7vqBsd2YvqAA+BDxN7IETHHhGX5FA9ZCBDq5i0HvxLXLHTGBX8G71uCqRN7en+nRfcod7V+5CqQ2FPLQbBfQnzt4LzVElSVbkOva9X0h2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn8uSt8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn8uSt8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16DBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746299993;
	bh=KFYz80743vocXDilquBphPxd1B2PTuiB21FDcIVNB1s=;
	h=To:Subject:From:Date:From;
	b=jn8uSt8rk9E3vI/L0NFkJwwxQVUjwn8KvDKn/FAebxAjGDl6jNaPLIMlVWx5G0IUb
	 BvOOFX5ogUgd4MyoN2ddwHkWyU5RgA4JO+GJpZ3+3gB3lMDzepY58oVK4wHF2jBY2N
	 2sgMtSYOoJhKhUC7Pd8GnCqcs7/hSLqvBxjPS90spx++jQzMYWcIW8wrCYAZqV+jlW
	 aimpHzw0sl743EShO+v8piKhgwueKkeUC0lABDsvEPCFaNqACI5uBmLnUzDd2+IKJY
	 j8OsFUPaRqpShSy6NAtMHXut3nn3QDcB/C2knS5kG0/h0btcQsB4yWd9rmV3OVgdq1
	 AxhKKIS4b7HbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DEC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629999357.7066.13908390789708399402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5877807e98f4ea7beffbe314d2b1ef2da8c792d66d442f4cb61eb0068f6f75ae
Date: Sat, 03 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746299993
