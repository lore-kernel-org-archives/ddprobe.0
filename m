Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B5628151C
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746538194; cv=none; b=etbxlv6pQUJ8+W5mxZLrcEI65+JJ5K1qQyMWlJUO5Y1uNBBeG6+i4eJySloac7R2t+eyu1GCVCFKhgFVV1Md2peyF6HZBQmf+EYnd29OCLQlnTfQ2RB2JFxCDBPiC3/LbKo3btJXnEh/zAaDBwTLQ/uvbGIPzqEtHCqbQVMEKcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746538194; c=relaxed/simple;
	bh=/ETi0DiFGp2BTj9vDz48EcY3PtHZ075HQOBeCE4zZ8k=;
	h=To:Subject:From:Message-Id:Date; b=cOtHwu/RP8rn9W/JBrwkUrMihW83HVdOH/h232fP2Ik0Ive1jRmvPX8Q/2/R4sG4OBgm3y/NAub4Vqo2CU0sv5n6Irso2P+DGOlUnaoL9lS6K9epvUwE0z3BIs+HGiAPLsXnZ38GySOqIDtLiAQthG4N6zjbzWgCNKhTrW9Ke18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5hTpja7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5hTpja7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECC8C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746538193;
	bh=/ETi0DiFGp2BTj9vDz48EcY3PtHZ075HQOBeCE4zZ8k=;
	h=To:Subject:From:Date:From;
	b=S5hTpja7b26DkGc7luS5UC/NO0EbL2AE20U6SoIN9BJsPNLbDxYX5qupSaQvX+rpj
	 EZ0BnPtqhP8Bd7jxjv/gO2tZwxa7rzi44hc9giO2yMVApUe0QkaqbELYp4bzdQ7WB/
	 M9cls2ybPug0zDOTfoGWPJVeR/bNwtBjPHr7j/NC0VQFZHpP/7FkUvXiL+X7QFzLeI
	 HkfeaV9MvCeRLq4lndvOMz25gdJ6rTsumZisWN5UNihrPsM9Wl9e4EOcgRJmR2CUD8
	 dZBp0oFCBbYsxB2D7n9o0kFxuOak0dIMq9AdeTBYO2CsvSDc176K7M+s1XdbB5hmyw
	 ux9Pu2HACzIlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E64C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653819358.8479.5498462314773652658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92fbdece7669aa3b0904ea0263866bdffeef9d5c7a1f59e465f6f6a76159970
Date: Tue, 06 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746538193
