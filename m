Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245EE2D3EDF
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764358974; cv=none; b=okzebS6xjwFZ0olc+bPVq/LcwM80vScAibtGtsx8oX1uJCg5XOQukiDdO/e3Y63Z4u6KsnrQARSf9PhxTW+XY2SYpakcyhzwaSE6WlxG+JAnRbIQvFCPXO9s46rlgWFelsdZj5Suh5DY+sF+xGxOhmWcnT5BjybVKzhyR3fKdFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764358974; c=relaxed/simple;
	bh=GcpHvDUTI0MLbLKjGSS+CA9yFL3e1vpdR3ft/DGmAc4=;
	h=To:Subject:From:Message-Id:Date; b=aRQk0lySUWCZfaRvPTk1UEOowsuS7QrdGdPcskL96Z8cOBHjyFaN7RXrN2VQEj0BWnPPNA/Ta+84JMwtq7Q8y/cx9FnKyskU98RweFkyg8LlCHYA6hB2lXbI9PRZ3GyEe9eaNXYAD85XqI51kSB21r1n1uj3kmdWYMA1cITvh/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pkfw+Hj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pkfw+Hj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8351C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764358973;
	bh=GcpHvDUTI0MLbLKjGSS+CA9yFL3e1vpdR3ft/DGmAc4=;
	h=To:Subject:From:Date:From;
	b=Pkfw+Hj2eoyq75ZtgviYwKHgy8Zfv2py+1asQ2/C4iMx3FPa/U0nJzimwdqw6wa0g
	 4Xby+1QXGtZyJnYFLfdrVj2z6F4+3/rd1QnQQSTD9SM4/nodxNRoWHF0I06GAYzGF0
	 gKibiNA5G/Q8wBLteCmR/i8DnAOKOnFJ/VoIpgkX66Ey0CHDKlOnIEjn10L9dfRoil
	 3y8n8a3nGhxJK4UA/r3gob9EyTMJV9VCucpKPmjsmBMRgdaSBKKS0MNf3uXzzTHBOK
	 bmUXEGlArM6W62kMfdr4oqzvRCSltzoqeFEUteMY9im3vprpC28A/wz7KhTyO3HfIG
	 vgDcPoOerS1+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D66D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435897358.27643.18409009729893894076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01149970d7ca3a88ffde0edb467a49c74ce945f7480985bee4c257bfff58a920
Date: Fri, 28 Nov 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764358973
