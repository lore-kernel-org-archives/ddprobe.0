Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A7558206
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706974097; cv=none; b=JaJDxnxn0eNJCn0tLytCNed4cFQjq7scVIA+m+I8HQXcGkHvOPx9EIOA3Koo8q/MIp3ewXGQPxyBuvBAzu+unRz/048a111kmoMc9qntdfJo6sT1WUiQJgdyUPlkkj79XnSBgxcS9PdqqVKHpb+0oAEbwQy9phgYu0BHtoILbUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706974097; c=relaxed/simple;
	bh=N+AG76iGMt1wsktJroZoHtnlhwk+b3KjzhepLun2rHI=;
	h=To:Subject:From:Message-Id:Date; b=n+ayEJ3I8moPMtz5ROZU0vlt9JEklh+x50Ed+B7EA0InpMKjAqiDtK4aupFH7QG+kgv8LK4u+nzOwhXm2ypUPjGjxIqclbk1tGTAx1wJgICNFu+KSUriJqhs8KQhQXb0/mme3ASVK+YoN/7W5pVhEEU3/RohHZq4m6WlTa49eNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiD4sXD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiD4sXD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5AAC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706974096;
	bh=N+AG76iGMt1wsktJroZoHtnlhwk+b3KjzhepLun2rHI=;
	h=To:Subject:From:Date:From;
	b=kiD4sXD7r2kttcbuoDY+1r6vh5UIblSJUenZE/VTBujVlyvbxlPUeZ1HfwA9y1lMc
	 lHNU7UiUJyd8Gaqawwmi74K0plwAyMPf6UMpbrXUWZsv4yGRTlhYU2d4VmFmIpocZ7
	 a8Yvdp/i/heteK70MR/RnRXOYx3VaZ+zHFXWj84ujWnz8T4ZzUVj8XCExyUP23Bl48
	 xiW/d2aD1aXcDveX0vbAQyNjg1Gsd3Igf0IRxadR5hUZ/UGN4ComsaViuo/eOUYYRu
	 o2Wvr3244XnN9Uuz45OeaTCQCi9CzjZH+bqkTeouNA2vClaFzH7gD69/fY1srZp2SM
	 2OcJX0qqwkaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CB9C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170697409637.13768.17368839853544755543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55bd776552299d6a9732be28217fbf789714dae3e20d47cd60b03cf2a78a07f8
Date: Sat, 03 Feb 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706974096
