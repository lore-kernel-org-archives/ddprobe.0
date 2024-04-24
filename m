Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60239D29E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713949223; cv=none; b=CwH9p7mGt7dwM60RMErTXrk83bDaHiMnsBZXxr2qicXKmMM/XpMbvxIYm9GZpVrJqzXcXiDePUX00jKL+7Tu0seDQD+T5bXUx2vlZMNu5zO3fyA5pYsSIMjtC5ErzrTSj46dbGMMQ4RhdxClt0kE99Z066A112cZNQV5iAUNbjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713949223; c=relaxed/simple;
	bh=m8v2VHdMg/ZZ5g9HcrHLUpeqDgGGj1/JXDwwlvBGz5E=;
	h=To:Subject:From:Message-Id:Date; b=ivQoAgHOhAxXYbL5kjekjTSe20csTJgkvHe8aUtVnbxs8RaSt88bRQzF+R3Q3+ina6pfDCPpLYTrfZBnV5Ixpn5HOWOLxb7qmKvHYZC8E4e8ILDkWtna5JfAdEqPEgyo1xv0J7SdGuQzDxythcR5D2LBob/33xt0LBTipd3OmjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIUI64YQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIUI64YQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC71FC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713949222;
	bh=m8v2VHdMg/ZZ5g9HcrHLUpeqDgGGj1/JXDwwlvBGz5E=;
	h=To:Subject:From:Date:From;
	b=CIUI64YQg9vyXM3ndTVJTlo8Kf4LL7tQ+dhspNqkMJlsun52N9T7gh2kORt/O/1FB
	 6eoUUsQ90p6m4+K865QDlZLuF/phIMIskyFbMMbzYNBRILqwgu73fmyInZM2X0JHYl
	 KcG6QlxPNoFdMNQdKWen7UlwDo3V6RZW8bfYGDjJwTn5++ny+yfdq32W9qRQZai81G
	 RFsu+9fUIrugl0lywqtWcWqzRP3dB+zQ7tTkQg20giJeu0BlOlxuw3lzUiVqSGkq2p
	 7DPyDpgfrxF2ovWCYIKfbxnkRmshnYZogrJYbonQmRX417/A7IWSuXSwgfTeJL5wWp
	 4eGU9eGVfXUqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4E1C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 09:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394922281.7455.16064352932951720874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7063533d115614ad188debe40ce042cffd74a2c3fec0f9e3a1a63259ef5a72f5
Date: Wed, 24 Apr 2024 09:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713949222
