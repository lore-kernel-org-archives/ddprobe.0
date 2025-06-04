Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3719224B26
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749044994; cv=none; b=sPDkK4fW05Z8YPGlKDXdd3F9buNgKm4YYp/MJ4cQa3sA/b8FdQkU5Q/WrY28taX5R5RvThINizVRY9uB4zb7aRK1M7ZDqf518Vs+/x+hAAgNe94eX+XFCYzFw/N0xHHX7as7y3YZkhZK24mJ+aF8lkanMPiisEe5h2KSjhGwICw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749044994; c=relaxed/simple;
	bh=2WnPzenIzKRklZUyiy5xlYrmnEYqaWxscfcMUrNlFO4=;
	h=To:Subject:From:Message-Id:Date; b=OKLa0GFV4v7Qfu6B9nuwqDbiZPrIXZworvUxeE0uZVaO6S536B3WfTj9L3Bd1GyTi/7FgXXkU1/6IzPwItXxyGMYrYW9JsjzCptfwRPoUS449d6FZ6D0lCIwu7c/aazgW9BR8MEWntNVQFkUtsL6gDxnwfWsW38rs6QhygDRfks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8ABtJ2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8ABtJ2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643EC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749044993;
	bh=2WnPzenIzKRklZUyiy5xlYrmnEYqaWxscfcMUrNlFO4=;
	h=To:Subject:From:Date:From;
	b=u8ABtJ2gEZVmFw79QGRl1zG+AvaRilFgEFBDSBUMhxoEGlsJtkj9EoWnnaXGUJ1vE
	 aKbkJQawCPMDJLw3GZNdCLn/Q+eQHe02l2N+YGLyUZHThSCgT8hEbXmFiSr7C6eyu3
	 Tv7xocHNET/z0AJZhnSlW1mLXRgbEdbIUe7iD37lL0Mli/I0Jcjd0BQRNd4e1L/ZJs
	 hfz2sbwM3n7RqXd6ICrljVSeuEC3CxjzOR3jDJkGN+Ky6ZEa2UnzRQu5hZCs3tITeF
	 QfEZqRhhRGpk+yC2luXqRvDjw8hKKCEQuP0ZvEPMkm7ZXRu9N8V2jmxqm7oCZ19+O+
	 dKIl2BQXnveLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C98C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904499358.8551.279282061133414080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaa9c57bfb10bdd0bf784cb4833bb84682d1bc3b1b910f8fc785d013f24c23f
Date: Wed, 04 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749044993
