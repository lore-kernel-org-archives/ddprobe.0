Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AF02B9DD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720645043; cv=none; b=SmAmITcY9PWWKdyCz+FqwNvYIiU0fxBlZtV9q6OFjcUJq0V0WLHkPg5lqWWHMOj+P1k93aKrMUf9tCyxfTjH42PlXy4vZC5mCpSofRfPhgCA3WLJAgi57JLCKNvP51V2+rAMRvTJE1oXbgWjwMzshl5fb1JNLdyvVorliQTv+Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720645043; c=relaxed/simple;
	bh=zGh8xgtFHeFoGHh2t9KXvB1i8U3xUo+fWkHgtW500G4=;
	h=To:Subject:From:Message-Id:Date; b=OfQnqZySfELQhV1ndhdxmpVaxLf7jzK1Ng/SgdCVgt4kehmMaLknyYYt65y2M+hxFuADWDSJm2VkH2e5GEDCXR9ZsMVMuxjNQrTpHuMOE3OrEkVAzO5Dn0wZk4mzJOfNKdkiGD2OLb+ACcbBiDipRNQlo8zd4a7njF0CBbs+0fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BP+Kl46E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BP+Kl46E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D519AC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720645042;
	bh=zGh8xgtFHeFoGHh2t9KXvB1i8U3xUo+fWkHgtW500G4=;
	h=To:Subject:From:Date:From;
	b=BP+Kl46EqREVjMIiby/J2NFUgqxDEYOUrcnpvlB6CytTNLL7US8FztFQS9JM4Ku/U
	 a0o1xIwWpqU/9cI8DNwwZiGPin+/p1hwNuqQnW/UbLTaVWvJOrYCVl3R1YsIQ/FqGy
	 JgBOpLo2Fz8qh94pPO8ts8f7TcexWHj1qLYIXfddviGRt95ima9MBA6rr3Qf1DX4kT
	 51MUWnGED5waLISqo/7hyJkXLm72OwtTKC6DYIRwKr9+A9auRds7YwIYv00fUw3rYp
	 n77SZnqQOE3vRbrHtOnRhkYuVTbqOWOV52MH9a3vEcZBnWcfgf8xLemvp2ujG5/Bqv
	 dE5nfkoFyJNEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BB5C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064504276.4415.2579895606313683570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de496799fdc91b69b5223be7bbb878cecaf98cfa5c4e1024f1857b42077e264f
Date: Wed, 10 Jul 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720645042
