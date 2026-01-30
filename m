Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E112FB0B9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769757834; cv=none; b=LfHQiBpZUUPLDn/Lv0LQDcRKdwzpW5ozhpUClj8ePT6ACXqEc3Xj35hbI1R6J7eNrCjkYoOFhAZD2SAPdcAl4dSx7bULPo1tCCIWN/UQCfmfJgDZopoKuR9LutZzPlPtz4mOSJYUFnkAaumLJDxTatrH1+cw41zzi+usH3B4HTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769757834; c=relaxed/simple;
	bh=5L7/4WTh0VKJ9f1uz0Yk7M4LQydMrlub6CXNpDiYH0w=;
	h=To:Subject:From:Message-Id:Date; b=T3V42do8Lc2bev02Axa7ce0SmCI56OqI9A5ZSfytOnwMvyJ5YUIwBgN8JLfGk+MopgLgdBSedB8tP7Ud+ceA3uyr1h/6ey6cBvcQZFi1hpwVxMOP3k0q5tmQpKkuqAhIlPID+1tTLzNzwDVlU4iCzBeToOitXHn0t5fXC1Gk2Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHVlblVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHVlblVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A23C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769757833;
	bh=5L7/4WTh0VKJ9f1uz0Yk7M4LQydMrlub6CXNpDiYH0w=;
	h=To:Subject:From:Date:From;
	b=oHVlblVWb9/kHwJhn4N5INmWKZK0QrBOzsICHDP3SCOXzZ3TNKdGIWoSxnsEFDSyw
	 5gG5gPQkZVkuguf2gU8wYCHYtbXX4lPZ36/LAQSSiWVYQ8wcJ2u3NyGTJZz0ghePiw
	 LIPMkaTOwp/no3Mm3Qj4tOaRdZ8qX53qizC99mke9SKF+pnqFJ131iGRga3noFFwEB
	 Y2h+UqrxSDVhoO7V/8IBSkOPpWsskttbyGGqiTHlHgivfmA5cAhTJZWRkqtaE0RPE/
	 dE/uVNIBunqpCZfuLYe7GTGNLPhjXievaFxUW0x0W5PhXGfxn/VDLMLFhZjbX7yEN0
	 94usyjHdR4biA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CCD49C65
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975783357.28270.11683836401380793394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699f18edf48645db2070b9968fe6114cb58b7396c367c63c8a6df2ba48d7ca4e
Date: Fri, 30 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769757833
