Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB82286AD
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707076697; cv=none; b=mJCpW/ugYRw1kBOMZ+xoo6g6GO6uQH8FiYuhnvZVcTKPjK+Ts4Vk14DroJ6GXVtmaRJOSDUjLx8+hqLGH42rDrx3Koy0moeWm88I0PzJAmUmp5XeCfFdMcUVOF8UpJaQw3hbDtdd136O3OHWJSw9ww47kcn54Hqe+e5xXSEzHa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707076697; c=relaxed/simple;
	bh=6HJSv9aF2XqDi8kUV+sBs0S1z6JnWv99hXDqX1aW82U=;
	h=To:Subject:From:Message-Id:Date; b=VgpCk9cPuJxs2txScSfyoorwDUxNjoevBl+rWeNKM96A+SuTpXtWra7BM6YTVXqEEfSrtMILQgVPX7te38wFDin9dPr4MDHIa406F0+CLCF4cmeN9qiJGoalfQbQIDHrLSpswqOaNg370nG776CMpAgOTiN8PMOqh/EXI3z9HeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm9Zqjpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm9Zqjpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887F6C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707076696;
	bh=6HJSv9aF2XqDi8kUV+sBs0S1z6JnWv99hXDqX1aW82U=;
	h=To:Subject:From:Date:From;
	b=Nm9ZqjpePmmkkJM73rbRkmm7O1BOLlEQSIrqux4Typ53QkPYq9mK1vqNGLbjOdgvC
	 IP82SH2Yu5NYB1+yUC748bTkGZhROZjLd5DTS6fc3AIeYQ/DEDRjein3AR4hXvo37y
	 RvOnan3XTXNz0SOTn+MdZeAumWdzzon55/NJm8wxnro4iRRLzL+6ZF3c0jimMuaBTE
	 SqKYeCTaoSVhiBJC2WedlNYoI5gb1xFWHGUJe7tTpQkjfF/qyrsOnZCZajaifDP8Gt
	 RJk+u0VhIu74jppUb7J5z1iGxcjysu5yCIjAfhW4LaCTXeTeRPjBWeEdX7lH5pIo/X
	 2lflGR2pDWJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A160C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170707669640.15162.14654458594318251057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b2ab3ae17e664ae6228bb0ce90fbeca75da05e5d5a1f8a072a1f570b33aa75
Date: Sun, 04 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707076696
