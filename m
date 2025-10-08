Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF982BDC32
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759895994; cv=none; b=vFjY0t7BuFq9kXNlrOPLrZ+USsQeJ0D1gFT3jV2OHu/HZCYNkiAaS1dHZhqRebHW1zFrlQFWsfbolIvPi1S3RRWeh75FU0ONlwm59K6teCI4RbCPtYDXvQ+Jlum3VJ67yL461a+m/Yj2rK+80WHuaIerMB31ha+NV/8+UlRudK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759895994; c=relaxed/simple;
	bh=hf6folQPTXXHjGWtnyBEvBYZtt9+tCuEL3AunZTyIlI=;
	h=To:Subject:From:Message-Id:Date; b=gZCnJahypl3ZPhLwmtjtpCbTvwgckw/HnHaB08Gc6w341Bz+hoFfs51Z9zWaYfiEJ8knp30j7oWdhWimkWTGuX8zS5Vugfky33UDYJu4yrh9gdaY2QXgi4PEMD0dYyzK1WVOoQ36PwQoMqkWw+AiV7Nbqk0uYc4o9GoLlqGZzHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5k/OctT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5k/OctT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E3C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759895993;
	bh=hf6folQPTXXHjGWtnyBEvBYZtt9+tCuEL3AunZTyIlI=;
	h=To:Subject:From:Date:From;
	b=k5k/OctTt9DZKnIHiROtEQCeCf1CDm62hrCPb7fHoosJApnyIB/F4A1CHv93YNBkp
	 jmOv2R1VH1lroi1Fag1t7dopEwtT71xmtbVMPTUxYBMFcg/D7c8wFETXQeGvYVRE4z
	 DiBDrXOWBpj8BS48mb035aMLwzjQ53Hn55hqNWrgZPF9W03iqaRRx/kxul+0YUeTrM
	 WKulthbIFC9Bb22Dxh/xPXCLyqR5oYK5XBptW7mLjc62zamnNw1BY+dqC9hJIJImZb
	 GTpJMMa47wg8++jqQt/gqNrOQtP4orf7Nb8Wm99F2auGvEthbtJEgnbU+arBoYrTB2
	 h4jyM9OoUaF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F438CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989599357.27747.9815874158114417513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c287e6993998fd9b439da3d0e76b0ce8f71728f9f6ff555dbba0f24c32c26b
Date: Wed, 08 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759895993
