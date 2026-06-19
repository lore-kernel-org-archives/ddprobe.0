Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCFD3385A1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781878594; cv=none; b=K7ybgb6n0w3CIiJ7e0TFTKBDt02YV0bcGRdT8IcIsoygYNDzaQ9W9S8Cj2uUO3+1cAZX72hrE5tGLV1BMY/W9HjCtHRV10Kwgn8b5od77ohYCZTNT8CLU1yVUPDWc/Y26Ocn69V/ezDa1cNZxKHIUgSklZyYPDAvLwWPg5am19Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781878594; c=relaxed/simple;
	bh=3mO/NNXbZK/oPngA/kQwDit/p6ms/9gfxfwvcuSTCuk=;
	h=To:Subject:From:Message-Id:Date; b=cjKLqFols6sq+dNw4aE/OgH0nRfqZ5eAtOmpYjiHddicWO2qXlWg66cVieSFmlyHEw4L8iiBhe+S2S0Cunbn6Zdz9Pn19kWmY2a+k2oMjTBbEqN/5atPbPb5lHwOyAbcnndfxkR8vwPMxxm/orGumxNrGBB9FMsQI28WNR8DBjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arpNQ/RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arpNQ/RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D528EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781878593;
	bh=3mO/NNXbZK/oPngA/kQwDit/p6ms/9gfxfwvcuSTCuk=;
	h=To:Subject:From:Date:From;
	b=arpNQ/RK92jYnEYXFAV7RUICDfvYNZ50/KfDj4BEqDsqQk/wvgJDwESVWcFe3UJH5
	 Q0eTZ2MBt5QYO+e7W/65AsrydMMsZtFeZW3TC7wuY08CEqvm9t7klRo8/VrHS3tGj/
	 PMNETJlu53hJ5+wItSgJliDnzifAd+qDOs3poxP+oWG9HsiYFXr5dsFDUMl15S5cnl
	 Gu+31U2qZ8GYJ3Me0PugbITD7sHtDwhrpnxwcU9rFUMaPbmCxZ0cKqOm5GoWxqQ2pV
	 1Ka1az7NNT4j2Gh8l0zpVTd+AWEzh4y6q31gyCBT28xWeI7wf+5qq7u8PpgeFzNNNb
	 JP61ZKoOflmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8436CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187859372.4392.11299196515986952724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cba81a015f5b5728add9b88b04a37906dac2cf12194311491d3a4bf3f00e99
Date: Fri, 19 Jun 2026 14:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781878593
