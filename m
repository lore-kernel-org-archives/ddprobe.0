Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0CF221F2F
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773293693; cv=none; b=JHEswt0yzr41AvvZJuna5YwZe89COhd1KLH232ffTgH0oZrqwsc3VGUCLRB7U6FvxvCYcWIr3eCZ1cTpe88E8Vg5xvyEUkEXC0w+45tDGN56dtFE9oQU3p1bXiP3eDVDnp5RabQnQLMjrMz3WEO0RxXUtpEXQLfBixmM2XJAiA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773293693; c=relaxed/simple;
	bh=SWmxpNV5y3aywyuO6EbV2g3dMN5JkddhnRBoGTiKboc=;
	h=To:Subject:From:Message-Id:Date; b=d/6uy/UEOo5s6cETvLpMlp9WgkpMSCfoOw6V6iD9gfZW9deDGlk8NhhyMHaZ0h0A60YmKT+vDvBQoGLTM9y6JSo3zjNP22qjOwUarggB4zgMcuvkHi8QkZPy4uCrt/FNGSPh99amWs86MFrO2nRJVjgYk15og5cPq9iooUdM3ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGvUgG1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGvUgG1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2FC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773293693;
	bh=SWmxpNV5y3aywyuO6EbV2g3dMN5JkddhnRBoGTiKboc=;
	h=To:Subject:From:Date:From;
	b=bGvUgG1e+p4WFTE7odHmjBYXvnSCsSHM3HC+CyWw6PTjjnZOwNT/JZnEPrgB1Agxl
	 em4KmKnQWhqMbjjvjlFGeMqsOGdwwk5sHhKLTiWeh+NTfDYnenEeiMl+L78nPKY7sK
	 45cvlPVhpYrNU+8YQRXGlq6EeTEYnQaW43UyGRuII+IsCgsayDQfY6qmfsKv29QMH+
	 RtHUDLZO4Iox6jKlmmV4arEmnsYLHW/7UVfacwrpQ7PchqK40lAKWYyZv2orSAgabI
	 6PsTJ6diUHt6ql4ciKP+O5M2UEaj9B0lmIOKtJpK5WNjzqlDxG7CN5oZcGW5ZkX1BC
	 nampWCndpfCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B31FED2D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329369357.17426.6741009361592903382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7736961d97712c0b399ba4c35bb4e6f9bd91eed7df2af0d0d6b21c184cd8fc
Date: Thu, 12 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773293693
