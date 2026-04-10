Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AD5E55A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775797654; cv=none; b=qzV6l0bzXeKBbK5jeMdZxegpTkgnSs5V1pYGDUE9FoxmG3AwpMg29fOZ9zdRz5CqDA0cEBMC8btwRZlpRpBvPzA8dCBVKBuAwZZem7l0qsYOmG2Yf6gwlvi0CP4AKoErUv8lzBJOGUVtLKyEEALv9Q+Ct1qQeJPRzLsd3n1NkWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775797654; c=relaxed/simple;
	bh=tAlteQATZl0DSIBVciLGq2sBr3+yvl2hFNrx9lqEOdw=;
	h=To:Subject:From:Message-Id:Date; b=Bqh6myOGVJoGJmr/XY/vnmc94KyME3WjP8/0uy/nx34b0iK3zCnD2p8pMm4gJmpwZShVezF+E5OYj+bvG6c7VNTeXkv/H5s0Z/5j4Qz4xSM+w8TKvvt3YAx100yIH8OYX0Lk/lx8/Fyz7eSXxBdSY7FlKcF5It8mjQnYPu5Q08o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7LeOdyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7LeOdyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12A0C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775797653;
	bh=tAlteQATZl0DSIBVciLGq2sBr3+yvl2hFNrx9lqEOdw=;
	h=To:Subject:From:Date:From;
	b=Z7LeOdyG6XqV8dDbOg5hqEDc/LrjK306iD/t7TiFBETAZmdm3fM12xqN0mqK6jo0g
	 ENjVOYjHxgsaGrieLeehb51JnUSLxLII6hoUX5JCBNXB4gILvB+u04Ln9epC/1+Ls1
	 zrH31WwqbMVt7zcLfm1Yfjhrc7yTDK8Cmiz4ww7G9Zv4ja9A0Z1nwvAuqvAjgN4OgY
	 t3l9GuYhqrjy47lIyyN7qnO7lJl7kaV0oKNYYdd3FPjsvplHKpcl+ysR4jnczCqepQ
	 U1bajJVceKoj9a+6BT5kKJ2jsScZaIuECs1utVPKDvfBo+lemnbPgKfWovzhKR6jwJ
	 aON91f1/PFyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9421F36BAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579765368.8855.17438751832428934017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eda110eef550e86fce40c3db4c16e5153a2ecafc8587a5c51af7d639295c325
Date: Fri, 10 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775797653
