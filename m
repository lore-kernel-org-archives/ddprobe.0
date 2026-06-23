Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ED5374E6C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782210994; cv=none; b=taWv5/hojLI99810R+gfRWb4CJXHI2qq5UZtyi+z9aBu7iS8RZPAhWvERhCnozdp268+HotOg9BS0TxMHcgQc7vT2Da+8aIXLlSsjvlmXl/BzzgmUyeo5uitSC0Rccxp+Z7ZT9eCckZd0He9cnWm6A5tMX4F2OCg2xus5Fd+orM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782210994; c=relaxed/simple;
	bh=SFFI94BbAgP+/USd1u99Wo6GF8eWCYFB2qIJbQNNhVw=;
	h=To:Subject:From:Message-Id:Date; b=Vu57LCR2ejtUs8TyLQSt91Qjggm+ur4zvlU2F0K1IoKYP6oliP+YUPX8tL3UnlYhcRkziwLq6NGrhqUbi8n9PETFaBIe0DZ8GXQhtrYpn/8FTjV2fJ/QKs7KPYc2NVHfchPUA1ikfL3iKBQNYa2CC/rq4GJielwq2sfXCFkvVv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dENJBKIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dENJBKIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C642EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782210993;
	bh=SFFI94BbAgP+/USd1u99Wo6GF8eWCYFB2qIJbQNNhVw=;
	h=To:Subject:From:Date:From;
	b=dENJBKIAjyNzX4EIQ+ZywpoEEBbT8X8335SvmyQg6gP2SclobsjdnnrmpcrZSBU81
	 R3iX9LCXN/ErbNum4KLsydqZshlOteiboCncYx2VmrTtF137Vl3VQU3B662HYBq8CD
	 1anmyGOPLC84Y0IXMamWP+20ChGWUwxnkDNQa8h30zzxR9fYPt3gFhRCVz7gkSpAso
	 oVJ+Cax1E5Jsq5fFKX0wgm7ENSx5Agz49vhSxuQXCtPgPS4iUFf0/H/dmZenqrGTFF
	 U34yd7LsAH8Zi+shGp8dFm2aq4E5UzwCgLhL5SzNHH5Tdl8Fb+V8/vUcbCyaDWQgd/
	 IGkcJtglFXCwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB633CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221099369.32136.11049780576147199818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f3be7679bdad19944176daab43bff4f188ce6a6faab75cccb15464a40ab903
Date: Tue, 23 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782210993
