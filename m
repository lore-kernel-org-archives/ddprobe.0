Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285502C11E7
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787408434; cv=none; b=HqtU04UjxOdgYiSQXdkVqz8uTJE4GUvZ5AAJjofTyoz73JINifCT4RAVtmREDuVR4IDcK6rMecuUvJ3tJYddpSZSfQILcKwKgYnkQ1YBGQbHF3FKykAeUcH+QlYJESTO36I9y2ZmX+vuAeT5lR8BMdCw3cMb22e1NMfvV8gpxck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787408434; c=relaxed/simple;
	bh=w834VVjQZ3t2uFJF/2dK2skSNB9uUuzwNrfRozLldC8=;
	h=To:Subject:From:Message-Id:Date; b=gtZOvbe/TYrD4FZoMOfGcgy5JojH3upVUxd8dwFX24FZOj2boFiNfoOSjsZjEnXF02WdS5pQohh7rhchIrszdWMv8s9hktU3CM+ZV8uue7VQ1gTLnG7T5BGcuMDenLilEQ4gmhrWIGVMhxJ2GQvayC/CiyuG388L7zz2z7ClYRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V49jThng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V49jThng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EF4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787408433;
	bh=w834VVjQZ3t2uFJF/2dK2skSNB9uUuzwNrfRozLldC8=;
	h=To:Subject:From:Date:From;
	b=V49jThngg+ZKw0f3tfyS9suK6NWx942axOpVYKkRZupwnozsJv3ptf3g8yrGBprqh
	 u3OxNEN3qqwrm1NGn4/GXHBZPZK11KoWtp1slnHIYgQtqWYUVTDURYiyPrPKzOq/lV
	 DG1uDExDvUKCFF1xt51CqmDmpIFXYH1gWyWm9ma+QjNheOVj8YX5OilVwuRlawApB6
	 2oB5BwK5WL9WWJcU7nsCDMfXQ///k23gevQbDbuGZ2QQMSqzoIq/NfedP38qZJ1i9S
	 IZ+wbm91TZ2nlLGsWbxC+Km5QsQA8d46+ypolDu6BDjc3M42Ja3dvvv5Z8vIW5GOAj
	 +vQlYqZ//nzcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A4C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740843368.31166.12297505593829093631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bc25da32e61c7cebf7cf8431e9b7951cd5523becb44b67b3278ce6625d2da0
Date: Sat, 22 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787408433
