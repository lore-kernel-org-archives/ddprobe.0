Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECC0F9C3
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714376543; cv=none; b=F5Ck6snSCn/QgkG0RJUvUf5/ZTBpfAEJe4SEACAXsqKl7pMq5eT8mTrPCtPqeA/9YvWy75ViVEpP589lSMtymuwqAuA1nGcdHYo9qMEgOya4RNf75en5SbpGkJ8vPDHUNi9Ci4cD2hCwVNE3+trdh4SjZpbgYwzqBI/SkTeLb24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714376543; c=relaxed/simple;
	bh=IBT+De6GYTN1Gg2ZIpi/2LrAOnaNRi6MhXVXwoY7KW4=;
	h=To:Subject:From:Message-Id:Date; b=RKsTD2nrWw+QQnGQuymFslskwvDUrssewbUev17hB5IMj3IwamEYfoRvBL83AyblE+ahLUOHJc0i7pPWsS09RmwglEKSGdzkmsFtPmvdkPDuGwNVa8TP6Xm6TB581Vv5FQbL62TqJGRa1W88dNUpT+Jvldnes7PQskNL75stRvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+m4DkPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+m4DkPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A44C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714376542;
	bh=IBT+De6GYTN1Gg2ZIpi/2LrAOnaNRi6MhXVXwoY7KW4=;
	h=To:Subject:From:Date:From;
	b=R+m4DkPa6V/EBuel6ZUBVccmO1rdVyz832fp7xAnTbIzWpIDlQURd4jiZq5D52kIy
	 O7y4r2t3HDgjnHdsr39GjC7hPI8BaF0M008R1/JrZeLnkH7Wx+CZ6teSVHlUyIqwFX
	 HnFVzzfd7w89DtuUT5Ngzx1DpritFz0tzFeaFT67sCHsnbpPqVqC/5xVygnqOYWAIt
	 IFFyOCQ24YBPQu9g5nUpMtXB1zLWMnnzJ9/PvN/xAwFvJYsNe2mzjD9YsN4tbD5Ms8
	 d6xfYNKLARUdhctkm4h3KcLNFfGRMNFbTEjCeg5yjLMFFgAGV967Rhmg+/8Sta1EMe
	 3aSiSXJ2UAqcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAB0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437654277.27924.7117275308057934464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f60736ade2be0b39a1138f5872e8369c97d5486d2a152ab09786e4f86d246f
Date: Mon, 29 Apr 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714376542
