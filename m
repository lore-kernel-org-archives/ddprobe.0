Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2B2313534
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779653554; cv=none; b=JhJilXjqnyldPt0jFVhCRSLNPHb4qTYmC/qktp/mK34J50qA360wlRlyqJkOlx8BclyaVjb7MCUbDyFAo3F0AvFrXaZcCorjDYkkDE82gEhceqT6M9pCv+kS3hMhEWIvZVN7OdlNzjdMAJ1huAw3brB1Vb280fkgMcW24oBfR2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779653554; c=relaxed/simple;
	bh=r1F8xXgtu9fsgWD0uQvmUEkX4diMhaD+7uahdfn6kcg=;
	h=To:Subject:From:Message-Id:Date; b=A5fi9IB2bzbDoOts6c1DnhluukMsJ7y7WqiQnlBLaXB3R///w4WeXlFOJWkGKbvj3DRsYQLhNClKR8fpH9e5WYeoKW3lnENdce3ks8b9xusNblIJzeyjJCnS6MaTXG6qwZxEvqGlno/BzNfFgzzjFfyymMRfulNXBRkuLEvUIJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/f9VaNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/f9VaNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83E5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779653553;
	bh=r1F8xXgtu9fsgWD0uQvmUEkX4diMhaD+7uahdfn6kcg=;
	h=To:Subject:From:Date:From;
	b=E/f9VaNkHbl/OlBdivl8EzV7lJspX3amYM9JRkHC6gqbhUTn7pprgUS/NCtqNXygj
	 fdbVIIQ/JT9h115j+8un+R9SplqJVZveF8hfOyuW7EZ+OzvnEhr+VQNLm4xuV1Pq37
	 k6vh7wHir3xjCHQVtpOPLu5HmY4HZ6+YZOQxXv8aFXoVUq4U3imdF803KAoJQUCDZK
	 HWJYRU+j1Fv+KHFcrfGR3M5vPf2SSUV4krBqKpY19HxBt/PBTLtcsLVj4Lz16Nbscs
	 B4i9BpLOfLf1j0P1PlFWCUHi5MxiTepTLBPuuIrfyG+oUsqfnZlD3hDO/bPt/hu04d
	 8mEP+wTmjoHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A842FCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965355368.30747.15370446684539227454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc77cafa3f4df8b02d7811a0af1345a6a1ca122dce323f76a79872d25be3c12
Date: Sun, 24 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779653553
