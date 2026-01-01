Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18193248F72
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767287634; cv=none; b=U1GIdUbhn38eMx9bI14VFDoMICmhB9FRA7iRpbLrKciSHyCoMImhdcYZ8VnsUX7/xezzKFkNOAuN5wgbBUjphhZTRafSuwNFMI71J4phEumlGq8Rw94X+18f6LlAKjvI6A3EmYsBQNlK9T1FV7ur2ggv+FMWvx55UH9fYdH1uo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767287634; c=relaxed/simple;
	bh=L98mhijJTG75w7X00/djZYKR615uADi5uFY/i+V0UFU=;
	h=To:Subject:From:Message-Id:Date; b=G3VfhYUQJrifIVuKcJ5AcZ1RRmv1E1i1SHvBYJYBU4AMbBPucChfCZFTSzaQ/KHpetazlgrJXyifyd+48h8t27Rc+u1/RvcgcB3iylIRqFGN2cSmZmqCj/o8/xXiSt+as7Bn0gOiuVN4lpYmYM3e87Us9h2IyckMOicACTNEh30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GalWik5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GalWik5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767287633;
	bh=L98mhijJTG75w7X00/djZYKR615uADi5uFY/i+V0UFU=;
	h=To:Subject:From:Date:From;
	b=GalWik5y48Y8kXWQcJJgFSGnIsKmXRjRiyYs3wrLO9i/GUIhAziU9tn6YeeaF4LG1
	 lqYbkrj1vyuQRXHw1nNk4dpJvP63MNPIatSexqSVCa7UlnA33xGJBTKvDxluNWI+yl
	 Mb0h0YgP6/0LrpICVEpS1O6DJavC3Zs4Li7yVn2I4HHCjpXoLrECGfxqLjLuz1p+Si
	 E6nDKbW1bgptasJlVr+C3ZhWSUb6VlP5hqRrhmWmmA+0M1eSloRPviTvFYG5lPG7EP
	 rJA5HtGT2xIxZXNyIZ8JPxHimaPUFWLgXiw654S8dO6HxNpcVC11dmNYihbAoKmCLD
	 vU37/oBto8i6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDAEED628
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728763357.20570.3620009304299413142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a165fd7fe2de1667e66eeac2cd49d75333954cf769d0791b0db0cda5c4e7e654
Date: Thu, 01 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767287633
