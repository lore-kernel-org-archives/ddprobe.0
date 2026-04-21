Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909533A9C4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776763054; cv=none; b=tbFo5gqwJlsSNpjHo/R1Rf+wDESwkujH7JfWgR06ZsS5709WZyFhIJi+TarX9H0eIbb8RXyi21MXWW2Fu1Nz/DsPQxrNYP0ELxy60qBZRJ/OI7IEE4KRJdbTaMpSBkksdm5ET2BrQXOm0fokygwDxePdArBTTKJeQqAs+FvB4VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776763054; c=relaxed/simple;
	bh=FeHiUpLQFrZMGfeWrDZfUvTzsx+Atk/n1udvv5xztIE=;
	h=To:Subject:From:Message-Id:Date; b=G8SLVlBzJA/ebo4VNssc6UnpzNCxaV4hqpMuC8VxgA3wuP+6OKELpAIDx92o5S3JEuXXp2KTIPtQ7KfSQhzDhjTjsilqMHkMxA9o/Ex9jS2hS3qc1AIxGxuuvqR130xqbucJbkZ/VBPvrUroXtmseuCueiKAqeGGZYizRWULgZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs206hWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs206hWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B622BC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776763053;
	bh=FeHiUpLQFrZMGfeWrDZfUvTzsx+Atk/n1udvv5xztIE=;
	h=To:Subject:From:Date:From;
	b=hs206hWDl3y4Dt7+7a7RI8RW0E2aWnDaupa25mc72vksbjgREbx5EPCaM8S/hSP/7
	 Z/Na3vEILU7DOql7QRkkVpkQLjGbkY4Be0Jm13byHbjDtWcD8VUJpaBjz9QXAMLbL+
	 o34vHyDqlja+a8CKF8+2DzC5wWVyeSYgUzUrMcIsIcTvo69J+1dUQv+N+Zh+I2lYEv
	 B9F1vBftGpGKeShe7BMne+jhEQkRwa3AlWoyFoB5gJGfen2UjPkSfA5J3Wi8Ki8UIE
	 z3JK65Qz3nE/Ax4ub+N0JK5QqglHttRORcRiIcPvBlAloIW5bk9ZmbP+wMKehARASx
	 2wwj89OuWiUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9552F327CC
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676305368.26760.7072593357212290307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ac38bc561e51275db329ccedd2f776bc0edc38dec3d12b12f59f3a62af23b5
Date: Tue, 21 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776763053
