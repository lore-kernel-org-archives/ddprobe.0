Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D5B217648
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746570594; cv=none; b=bY3eFY+cx/h//BB1gEMwUWnW4w55AwsRBpK+c9NihBHnId6gxmkqoon/FWAKlDy8xtICtJjwGzvHlm117BbzqYSHWoVNaFrs+em3jO9BVrZR9rVGAfotO06RXhWhqH1PGm2JwDZMiBfAKoFfNQBRfY+ZijoOzLm23bwF18YJBzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746570594; c=relaxed/simple;
	bh=ng3kRiwoV5g+YQL+bsCXdbyu/PqgTyewQtq6mf3T3l4=;
	h=To:Subject:From:Message-Id:Date; b=gvzXBc17EeHsbXZ/oAvAxLXIGD3lkAJRPTERT4UQ9gP6RvbJE0uZ0u1p0qeY2CbTrd9lpfV8bX4I0tmBMh+9rvBUQjhx0cYB4kv+bVlOYtMkcIfWQjIWGoIU9cQiLzCSsn0YJAqmCQBeYN0AKF1NLkUf8MU3F8mytqGgfnRk668=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPw9iGFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPw9iGFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CDBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746570593;
	bh=ng3kRiwoV5g+YQL+bsCXdbyu/PqgTyewQtq6mf3T3l4=;
	h=To:Subject:From:Date:From;
	b=tPw9iGFTRhU130MIWwT06Tru4kc5QXNtmd3vL9kN+AH8EkKGm4oW5RyRLCizgRBzY
	 7ITtyPlYuevUqSHhyc8wuw23Fp7+Sqp1l/Bv7U8p5ZThhG2sYTS+ae6MfbD/vWp9Oy
	 x18LQ4rjY3N7PGVCND6PRcKG6m3UOL+7U6lxFAiclgGzXvnpi3u52OWlB64pjoe4qk
	 7XidVz+dVcTaW2UhWLo2b1sHhtjOyBdH4uqgpd9hoc/xoG5ybcS1qbnLiBbbtpn5vg
	 JSg4J6ACBYk6jwHEOS9os3FgCQLhXg4T5cuCU1Zz3EEovGq80Mvf0O4a04S2CL6mfv
	 twaI7ntf9ji7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD7DC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657059357.21577.12771869162896778902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6827c04d169ecd79e683234ff31447f49ac4483b44ec24f99962d09ed8d739e0
Date: Tue, 06 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746570593
