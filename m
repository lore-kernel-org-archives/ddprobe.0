Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297F31CC171
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727997954; cv=none; b=Ud7gHFJ4eFy5u6QOntsZXtqPOhX+4M59ctGpKPcU2GxcP2et0Cp+6DvniYSz6X5COfz9EFgdNZW1WPocSngyTETjZCYy7P6FHATqboZexXMoMKaRbJ0lN7C3+wCXlwoLcuw+8ckOA7nJ/WJL9kviOu5Jnt/8yBiSK1SVmOUGTSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727997954; c=relaxed/simple;
	bh=5OGzss7fbJACp9DxnL0ngKxB3IZpGhQTdrzQmfAtKrU=;
	h=To:Subject:From:Message-Id:Date; b=uY4Ik/AWA8zJfE0XOpEhr4cTm8o9OCujlAcPiVOc2oIRJ/81oNHuwIfzW0BJ9ZH2MbyfgAJLj/ZNi+dsTEnpqjCqddLfvfIHZK7xX/tm+Znk2BpMT8s6cb5/U/Sag68UAsdt6PCgs4fTqnrlIm7R2WMZdoqbBIsG7bZfw75jjS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6T8omJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6T8omJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A11C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727997953;
	bh=5OGzss7fbJACp9DxnL0ngKxB3IZpGhQTdrzQmfAtKrU=;
	h=To:Subject:From:Date:From;
	b=O6T8omJhdnukYOoMFwU3U4UKt2gLOPIWjZUkYLdygdTSBWj7FBS4pyJDrADlpuMou
	 NCFLKdu4DDCvbXjKomfxVF5R8VKnvvw1gyv/kzlopfvK5Oz6xmWKvzsX1eEPT3W1zb
	 qXb4xzCeY9UYsHP3GD+VyMwgcLhOhi34AEDJ+hL+fSLdnwoKdJMWv9Ei0SYWMuxL4z
	 Y8fdQaacFBvaSHsMcIiZZ3HPedpbN+3ctgRq9XQPCxaZsoZtnT5cdoLpbTXJxu9gj0
	 E3RBNpwuXYX40C9YXWwvsntWojrOjx9C2AeDbhoj2JLDDF7PhAHpWT3ljMCHbFPtxn
	 9OIpU2AU/Fz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C448CF34D5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799795362.6774.16950858612841051760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf6f5bef34acbe13b2623992a2e4cb92cb9f8cac50b625c2cfc864d8b1bbf7b
Date: Thu, 03 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727997953
