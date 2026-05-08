Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D4F351C20
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778251654; cv=none; b=AR4vdyHnCsAOhtmU7rxivXqvRQBDHEfeVxN9UslNUKc3IpeNU7DvNPy4xwcuetJWrNm1ovEEjdnsKOkhxtSyOU3lSK4DutVCtOX5HZLVTHYkWlWRsPy6gNpCHVuJ47CehRnZCyqkxjBtHE6obIyzkdjwPtv4hLYbxpqoqSiVCvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778251654; c=relaxed/simple;
	bh=vJkBLGjWSo4w4wxrzb6Bxk3KjtVpLl5afHcGm6U9u/8=;
	h=To:Subject:From:Message-Id:Date; b=gVvGaiCfLAi1oJ7k9X8L6XxiWyKTThSklXUMwbTNe0/O974xY6GQibtbFSGdmbR53a5mo4G1fOLjwNHBiNoBbDVpb8Ahzq57RNfnKoWiBFQE4uEhWN2IKtRiBhFnrttL6QNAqG6KqYdd4JC/g/tK074SmJuYxy5cmXX8bdTkCR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0qPoHvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0qPoHvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB32BC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778251653;
	bh=vJkBLGjWSo4w4wxrzb6Bxk3KjtVpLl5afHcGm6U9u/8=;
	h=To:Subject:From:Date:From;
	b=b0qPoHvgyji3Gxz8O4EYicsncIp0b5JM3NoPijS3XSh+N37BwRh/0oeBREZzGeCsI
	 TW//JdxAftQvi0tCJ61oSG9IZ/RFRAVAQgg2Qrfb6c0/2+yy0VsT/A2wEgHqqcI1jx
	 GGUO1xkXaHsDmAkiNubGo7tsgsUI4oqIeIXzNxlG86Xqnxd+y/1lbn3TdoIcbgWnPt
	 glOd+g47pANzzxXo/3iJrSBDM/GW5lfktILkE9t7m2XcyPE/fMOTaVzdgPL3soD3jN
	 dgCgTgfSx+XVDBvDyJnNhxHMcbFCZ4RMaqSXuhs04PJSLBeImHhBGAzZAvePs7LKb2
	 1crTgTP7EV14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B2CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825165368.25242.16922091703508352515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69750d5d43b5114dc1d404828c4a9c5b9a853f072dcf52027eebbf0bfe3f147b
Date: Fri, 08 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778251653
