Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1265B20315
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707347897; cv=none; b=U0Lqd3UNOarYns9et9UJ2Xw+gWLUGXHYt8XeAY+Vkrm32uQ1Vz8ASE5hB7HvLbc+yVBlP6bhYlbSnV9+uersS15bwZkxC+wH43KTxRsz6yvl+NELfnStD+ERiBuDH9bbSaNUTRcT92RPppvEpYTN7BhHhaU/Ktlke8s7WmI19cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707347897; c=relaxed/simple;
	bh=ClJPolLLoVd0wykMRhivVM98dJ07A9Si4NwIGabmX1E=;
	h=To:Subject:From:Message-Id:Date; b=VRp3EtlFD+5nu3qCu3EOwwZmdrGvmkVNxHtUhlHZpKHZcALisSNWOdfGtUcqtUAUo2K5/9wjarr2bv1bEKpU4bOpw2GZq9Z+u5csge+ogBiP3OEFNwb4aZaLLqB3/E1UOjfUJXbDzmd57QOSt6dE8hX6Suxm1P5OfHDDctn2veY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSKHo+R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSKHo+R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFFCC433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707347896;
	bh=ClJPolLLoVd0wykMRhivVM98dJ07A9Si4NwIGabmX1E=;
	h=To:Subject:From:Date:From;
	b=GSKHo+R+gkff36ZUWHuI7PzfjQej3aDXKnbF0sjXaoOSNFyVwQmEMFicihE3wOD4a
	 9MGxW7uXerwrKtCsfO+Lfg/AXcdnzlSMHvQbqn7KYbwcLDmSnWZK8P6a3efTqb64yh
	 LQUBU1Jj3CfTSc270PlrWIHOdJwNM3v/yNAzi7k4sv20zmNtctwKe6JFA1hUdBa+/t
	 D8B/msTrUUKlx2+uon3Pw/HLWyGeHOA8J5HQVyb+nwRM39g/m62VRYeECm4qcUrSdb
	 d5Juetmtg2GCseJKWdyJpPJSfnYghFzuO00PJqQM8pCH66QYIFQt246wi2ki3kEWA2
	 ffkusz79bVlqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637DEC4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170734789638.18424.18282373252031135660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399faab019a1c05c64d9f7e376f17dd7b92c1f8016f06e57a4573c6e7b2c27ac
Date: Wed, 07 Feb 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707347896
