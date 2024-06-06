Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230AC198825
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717684643; cv=none; b=Af+4PoTj5wFBzDPmAcCxfJHKr/4sRg5lhkXEwINSagwEKjI7/znD4qos5oAfasB/U6Pj9PhrVWDDJlB3jGIx7PIi6TY8qRiIgznRDFFVLQE3FgW9NlVR+GsYNoAkktXvGaO+3AxDXXv2A3Z5QdhgDMyXeOnN0kWXPRUEYLud9oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717684643; c=relaxed/simple;
	bh=AMiRuf4rt6yXFvsi6jVp9wXSpOKw8MPu83BOmccs9w4=;
	h=To:Subject:From:Message-Id:Date; b=GAYXH/i9HOsh/KyBebfQBLAMxE+H/NaaZY8pD+m2R77zrVgHJzQrt7MhroOwf8709Y2BJffpV+bQy01T61JY4HruM7QBLw/6FVJ/0Ai+N4NE/fag1KyMidmpbTGKE0iufLWFLLgwr076ext8hTfF2I000rVSK7N0SQzU/MBq7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMlSlwJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMlSlwJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED699C32782
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717684643;
	bh=AMiRuf4rt6yXFvsi6jVp9wXSpOKw8MPu83BOmccs9w4=;
	h=To:Subject:From:Date:From;
	b=eMlSlwJ7NT23XViFzN1XzJwSCmr0Ebw52LmY+EpbjWnwizuUop/DrVMHTei9vcODT
	 JiLpEyTO71QYCGAv1/peKBZHtjOC3OhvsfxxPYuRojfYRjFAVvsXkDRmV7GPPxNx6P
	 ducolpkWw70wEuoFAumMKe4FzH0XGv0nmLVxywysZsVbxtR+rTi2E0jPTc3KVsANel
	 UJi4sTlXXYMt1KATjcylD63GGkqu/4CtWK66UnIQCZCGXESfLcAV1u8uIJ7UDWj604
	 q5eBDyL6/+HBkuPGabYJ2wT1pb1xOAD2KSwwQAe6AUUy1ieutpOpn7Bg9wmuXNeW0d
	 6R9X0zM23ySWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E23A3C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 14:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768464290.26957.3016763328735782800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66111e8d3dade3c72705ccb9333f43e298b973003c235c82715371a46f174719
Date: Thu, 06 Jun 2024 14:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717684642
