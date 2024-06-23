Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777A518130C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719156743; cv=none; b=K5TOSgaOBSgyALa75C0QypVOmkIsTNMiZ1nJI+diMUso4E6T0EyCJx06Ad8d4JJFp6DPvMrO7c004ESuBmQ2t8MPcADwaHHnJIbzV6aWtBzzUHAj8AJcjJc5RLTskaTox6qkCwbgQAIshfSETIIyZRSkJWLAqpAltk0ZbIT+I40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719156743; c=relaxed/simple;
	bh=FRtVl0WJ8antlBro33XDxCeZKQW34iCOx0pWTwpH4jI=;
	h=To:Subject:From:Message-Id:Date; b=AFyTGyJMGDw9/RqR5nj+KJVnkI12X1yXq3/NauqX6Na/xr89SjSDAuAInIxlQ5bEkGvP2C6zM9eTPLK6nSpZcHuCtAYFV3EJZeUpl8PU/r00srrooYfxlZJVnjY8uZD0UuTMoeeOx4WOIBiDaweq21K4PQUxLgvnq/f3yBYlM14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OANa5NFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OANa5NFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06F4EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719156743;
	bh=FRtVl0WJ8antlBro33XDxCeZKQW34iCOx0pWTwpH4jI=;
	h=To:Subject:From:Date:From;
	b=OANa5NFkIJ77RSraeNuVNSFvWapVLFZjtkTu6TJyTeCQZ1Ug5Adq2yUx2JY9VKnGF
	 68lX4/68e/Dqj3pdt6GFv3/64AOgBjulSnCuYtqg1yJJzCXYEeBLdBmtXBM5K6HFKD
	 3wdmZ9gRmHxmZ211WHwy4iMlLM1QAr4B+vU96+Ys6rqSFDhJWFVOUOeZpvDSjnxTaY
	 YY1HtyTqnqWROwtblRgM6R8H/DNbNHKQGWNAzNg48G+jn7hf90V4M546tBi//h/GtO
	 lx49ZVjHnWoaNX7PNkjm/Hajq3Np82iS7gQuNMhrOiMXqWBMDir6ecxL9T75c8/VT/
	 nK955+kl2tjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B49C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915674280.29142.3733869887289600722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b6adde8e1042eb0bae334eb1acbb582aedb0b0471298ef3c24e6f4b2b0247b
Date: Sun, 23 Jun 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719156742
