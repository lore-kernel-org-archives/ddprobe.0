Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F60872629
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762091394; cv=none; b=dqUs+FqGuNT5V+1puU6GcvrkLR7WW4Pc37GuyINI5AXhhC5/6lJ4H8ZUWtllDhsNu34D/+/B0YHuTCvIOcjhue7xgA6a6W2amxSA3qKx04Z84GvBNqAP4PDconzS9yadHoI0KaZJePBIjomuYxHCK0/l3A6pdGmySdiKbA5K2GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762091394; c=relaxed/simple;
	bh=8wFXubWDEBXzP6VxVpz3hYkZBNXNsuaJH+LzjtwceSU=;
	h=To:Subject:From:Message-Id:Date; b=t7Z16ndHRoDeS4TbWGTKmP0D4gPviYJqOXskdKNU+y2/FEJAe7KJWUxi2rfFZeoPcUUTnirD4Bek9JiM2f7u8j0oX+tiEBh1SRQwGd3+9QzhdBwNn8oyub4+kql2fMF1gOnhOG3irw5KSLIkwCuO+Fs93xPUEa8WLbOgqdSoZ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugQ28kjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugQ28kjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ABBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762091393;
	bh=8wFXubWDEBXzP6VxVpz3hYkZBNXNsuaJH+LzjtwceSU=;
	h=To:Subject:From:Date:From;
	b=ugQ28kjVVTNBoeR2EEi7Pc6PgPBDil34+Nlo3SQjEMU3ICAZ7uXnm8PsGY7GajZXu
	 UuPvp0MytgeWN+U5qMPhVxuIe8nUTeSYGLK68/n1T8Xdll3P/C+J/u1x3SCOK3/Gyi
	 g3f66VBtZc8/shQsN26iy9lUDR5z4+VvxBJH1hjswtMbnzS6KL/F1E05PY4ptDXbE1
	 mefBCiWDNN1Ajh0bhuys08t5U4H105PV+HzTItqZK+IVlA6Px3R/LLIL7g0pZixkgn
	 EFSwDgsigLK6eJZCaq0HmLxWa74oGUuV1QwuN2jmRAFS59oEeeT0jIs82qGoHdUfmb
	 xNHucmwSrCwKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407ECCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209139358.9697.2094383308594867292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61306dd8c7077dc27d70a9775a34d2b3ad7cf92f8400717d77c558b8bc6692cf
Date: Sun, 02 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762091393
