Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A6C5227
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743638994; cv=none; b=LeLtQCLzUCQrRDlkC9p9wgelKibtVv+ES/F1JSCTByhFzhsDJHgszamsxc0LBGXCYa1Vq+gItgLN2XbUcmB2dW5+z1vTN84ax3DESQzKBKje/FVN1qwKWF7zQJQxD91QiranBfqtmBDyIH6CuSsSq/Qiuh/JAwI0Ivz9+qVy2+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743638994; c=relaxed/simple;
	bh=9YuLJ8wZsfiPEuSiwVNwbF68fcERUD1PUb+S7K6WIEc=;
	h=To:Subject:From:Message-Id:Date; b=k0FU5HIXKTJvfvqaKHPlMbj1OXX3W6yLCjCh0lH3FkQMsvKRHoKrr1ZIqBzsr4FUbQlJmov8L6CeEGhAwSHs8zturJNvUnhAIscAhZ3raFxZNeODMahBtI4fRZBKDPM6rtXDjWXRqwI96jo5TfM2grTd0zqg2PM83mcosCWdjGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIjsHpSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIjsHpSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FEDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743638993;
	bh=9YuLJ8wZsfiPEuSiwVNwbF68fcERUD1PUb+S7K6WIEc=;
	h=To:Subject:From:Date:From;
	b=bIjsHpSaPrp5iH3g/24YwwA2b0adXY9rygH07Pd2o3iYHbRXFarZK9+oxpwMRbyUS
	 q35FwfsVdpZsL6zWNhJb3ESQaUfAzsgi3VZOROKTI/XAOGv6u4dwfrvz0HPnJPIfli
	 UmYNYMGTMUy7nTmB9tG0JB8pT9ovi/us8VTPlDiMrFr83vbOvJoOcwGoUJe2EqP7oh
	 D40h1wiHrTXNjbW+wv4kchnGSzCs2ZPasdp7T6SWEk7pImGgCv7aCrSYc7VbCzOG+y
	 VmPd34LchW1j6vOYrRz9532scUvWdUa7tt3W2aLLRVgbpZa53U6DpQf60shkanQL5h
	 1VcMki66OKB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19CFC36018
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363899364.10821.3541158856075137431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9fc93464fb3b6b71c71ec18b89e69c976c4b70c139b003d0c04048015e0603
Date: Thu, 03 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743638993
