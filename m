Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0023F0748
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772208894; cv=none; b=uHW6+5qqetXk/4I9EJ7T7b20pSGs/N5oLFwZ2+eJFehg9mg0ic03Z4J3BF18zs1+pVYjk1psBw8vmWni+eIurBVT8qH+bMt243NR93XT0eMCIflYOgTz3Q+iNhlm8W26EqPtLgbRZax6UrI8azLIFXRhhr+BRK6W3JWb3QS4DjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772208894; c=relaxed/simple;
	bh=mgpTR1Nl+r5ebnS/icCDslG7FNRYbgkvWPjz1G5/wBw=;
	h=To:Subject:From:Message-Id:Date; b=lERQNw0+zePNrwVfiy6+dOZB79xosmtRiAjqGYxIjsQpcUP4cKInsKO7XvL5Qn0qgUosdOL6Hb2fDs+j2wewLbU2QApvwMn/7ENWqNTDusHitKjnSJvH2F9bM2PZ3KG82JvMVmXXtN089apGRDYAvF9BAzR0G8lJFZMDq+LV2A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLvPGvw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLvPGvw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772208893;
	bh=mgpTR1Nl+r5ebnS/icCDslG7FNRYbgkvWPjz1G5/wBw=;
	h=To:Subject:From:Date:From;
	b=qLvPGvw5Bx+S9q/PvrWKlIP/VFFKXUxDOGGtnuyuKfY2TtyJTpc0IBZBfGJxdPWQm
	 7NaiO0UDOw1Co0TcFYSs/97e03mv9P2PoQ+fwiaXU/XPOsevBu/qQN3q76C4j5rihF
	 1697wJdqU9F7Fxp9/jazNMpn+5cqIMhiOU1QRGKxxUwZ9HpvUHI4pqiyMs/rI+pR+C
	 UqmQtYjVrLaUGxZFPerNt8lkq7vP6R3NTTgC0yQta8wQ9mu7g6Iu8DYIzQfLuN24Nk
	 bmps8r/ciC3JfY2sdn5fdjPuSlqV8epOaCX2DRMhvRcnb1bvhwo84IEt4LY0cvdw3a
	 ClsavR1VNn+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A45FEFB6A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220889358.31508.5667387087020307378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbec552a3b7e32c6c0884ddde3f87efcf18285ada1053f6c816a170917f0af7
Date: Fri, 27 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772208893
