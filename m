Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AB9BA21
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774586694; cv=none; b=TyhbNQQacnqQqnEqgU37ExfXWkyBYPj7POY/pZQGUwYPtpEfteRUod09vq4t8Iju1FPuWVxPNCmVn/cFQ612REHj16CvV19m3jvygU6JI5h+N0IJQPZoYo/GvvugmWVF5s7fzW4aovOFj5ujUQe/vLepJTfFvwhD6BYvKyFf4Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774586694; c=relaxed/simple;
	bh=x4VjRdRJu/CNdB1vtga3aAFnrXoYy6fcJwQJ9hA5daE=;
	h=To:Subject:From:Message-Id:Date; b=BTF7XdQvZoOhOocFTn0osRvia9014fu6vax2g1e+Bq8anxRnEjNOU4sKobtWz8ym8ldRZ05GSeF4k+SdAWpI/iZPukYm9HRE+x7vV61lWU5QM9r/r3cCoCmDE5eHKZnDw9BJM9hBScWe7Bgr5ou3st+ngYuxZtHY+8Jk+KASWyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPKLlJcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPKLlJcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D7AC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774586693;
	bh=x4VjRdRJu/CNdB1vtga3aAFnrXoYy6fcJwQJ9hA5daE=;
	h=To:Subject:From:Date:From;
	b=ZPKLlJcxLEatJqQdDlRZIzbH+9rqboouPUqkaKNcYzhZMJj6az1HdcBrxoqNW4iPP
	 JWYcLGqXqFx1+hPsU3rtiRcCbF2NHG7OJbg3P8xtdTHuSAOZq9NIJnGTtwTgx2kRun
	 B56VohH/jf69zczbOJJcXPU96tQENJ1gtKeveR0NFytRbYGgYk7AUSHhu735DuGnRa
	 OpO3idhF5801vtFIZAoAra8iw04cSfPrPK+4+61qquZLcGAeJ57O6KQzmdxEeANCLY
	 haopAjLbIHys6y647x96gZUXDY+9QRkL09lz0908J/yuLZnEOviv71JS11A/Sgu7qb
	 HNbWg8gli7PFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9007510BA426
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458669358.8397.8859331532075492422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd5da1c9abf0da60f61459e21628910d86e28dee5d439e9574c4e388f874fb5
Date: Fri, 27 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774586693
