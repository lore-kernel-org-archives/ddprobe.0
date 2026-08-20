Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662752BEC4E
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787256634; cv=none; b=SneCV13iKw6HVSha5WARA46CE4G7yzT8QhGOGR8wyO81TaevsjJOX6H1RskxhouJgg3d0473iVKX3S2NiNxT2OhVforyBmQd72ahiabLs8rrYVBEjnGpFiHeo4fYrjyr4lI/tBd8y4Oait1YKBAR+SlgSMfjGXDTN/O2bC3p6Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787256634; c=relaxed/simple;
	bh=mSdHVsdbsb6RVXgmT1UpChPss8WMf6NEZwBXXrBs8kQ=;
	h=To:Subject:From:Message-Id:Date; b=mJeM/ag/RiQjVjkXJ+9HSdXgL+cwlV4sn1IfbxbMrGllnUBAKXi8AwhAIPsoCFLNrAeHUq44WK3j/PACWqnpYK8qd/DuHjJPKuoIXdZl3Yj4+yWv+EnE8KKAVRxqCPH2NOzDJ8L1juHIBzfD4ebnsp2BWaYwr9xjFh8K5sTIP9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBjDVTJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBjDVTJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD3FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787256633;
	bh=mSdHVsdbsb6RVXgmT1UpChPss8WMf6NEZwBXXrBs8kQ=;
	h=To:Subject:From:Date:From;
	b=vBjDVTJF87c3n7jDYqTKV28crAFU/S9aHco1/qVmg3F455TJSHctPeSlOyRhFVaEB
	 r3U2ANav9+l4X46wPkjIfz0cq77QQL+y3wvHJ5G9OvvZ5iOI/D+7WrGf+i/DOxbu8a
	 lM7wzbhMTyaKdYKtdatPcKLorH9IQ/jzVHG47wZbN5zTKWEluYjst3KkTE/st05o/M
	 dQUcmN1CxW3BuBnHcoOdAEwwJkAZ7PyTHYyvj8ptAP/aQ96lKa1sKh9DLHcXY6X64i
	 /154Z40E/I5HRxzT6Fb6rXDVO8jUeoA9XB632jF06budV8FC2+ySgEgFGyJa3+QkNH
	 YXJxy3vu53xLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A06C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725663369.23709.5921773677372572404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f34e90f658c659b6c14ac4a2a507be22dd810f064d5c6119fe1b33a3feeb128
Date: Thu, 20 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787256633
