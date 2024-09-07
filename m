Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1223354656
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725703554; cv=none; b=Cmm8+p86smec5WXsgDQN59kEyyUEbYLlJAIlZl/jEedgF0ET6JJYgbcktPKx8DVJkNY7t2GESLfdxpdmyrpw/NhROqL46YnwCj7vNByzoJFSEORp2iRy+y6o0Zq3bK/mJIId72STq1vG9G8iqBH9Dv4zzFIBqLQDbfyyCBLlIW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725703554; c=relaxed/simple;
	bh=/oWAAEJLXL1dttNuzw8LCW1gDgSx6u9WHRaFYI3SnnE=;
	h=To:Subject:From:Message-Id:Date; b=p11sCiXfMt5Zh1gZorYKkO3I6fHzDQs3qQcfnVD4xTZ+LhAom83TIJUkcSTiXk+fbZ7EzHje0z024T45hn0pQm3+djYRKvhnZof1YlWycyxOx3gMPuBMXnVvxnE6YvAwWhEHdx3+KiB4FTBSgcY5ld/JnNSHBT2yRPT6jsgL2ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMgDi/7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMgDi/7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52DCC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725703553;
	bh=/oWAAEJLXL1dttNuzw8LCW1gDgSx6u9WHRaFYI3SnnE=;
	h=To:Subject:From:Date:From;
	b=fMgDi/7aq5Co5dyUJqVkizUTHXDO6Trr4LwF219zyvxo3KVRxUvxBKdcP8cESg0NJ
	 fo0FVvTzM5eQjihT0SgoWTnTgPPVAvTy6pRcH78Tp0M+Tu7tVxgst9kVfYNyoTJ4qL
	 iPVyyJZfqgE7QRNxnLKRGG97mbwyVxxJqnZ656vahLKvRDs7D6n6L2QOAzOc6SCuie
	 G5OW5zIi0pzmI2DN5F40dYMMDxyVC3TteBWGxif2+I9++sPGoy/Ti9IoJW3PJvxZMB
	 7sKlmjWRF3V05RPrU0bXUSTXvdN6kWQXPZio9Mk6lXEbp/Dk60Wof0+jAEs9ZmPd0z
	 pz4+jgHlpyxcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91595E6FE57
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570355358.8540.8679918518368658496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2455b7dc252ed7b67c1607c9c3e16161b3817950a7ad0fc9b81363581cb8c998
Date: Sat, 07 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725703553
