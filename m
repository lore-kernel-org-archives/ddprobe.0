Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3536D3BBF2
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756949395; cv=none; b=VIlKsdDr63WI4U2TTqZmx5clfQSolmi/pcxQ0av6a9c71eMC3MxvHBEfVqf3kh0tbC5XOxfj6zOAJdA9zHAFQLiTsMByUc8ObQ0cT1vENhwqDg1u6kKblwpeS28T0RrPTCPRmGJh20Grfx6DSXDAjJ317rkFOAINXuSFtx7Xaf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756949395; c=relaxed/simple;
	bh=HD6Ak4a0IPJGvxrAp8BX/ORPe9bShpRHrwkas4nKYDg=;
	h=To:Subject:From:Message-Id:Date; b=knPNiPB7D2Dmvv8WSpjMa0syg0vTx+4B+lERJiAuo5nfe1ogFRBNnduK0Dv4gWloiqJFSP5WqRT+l77HCPMjl0hEEbxT/k/7byahCFnCdEMj3deVOv3LI6bDeWYdMJvd+LzEQ7IbmvHQ/4qGIrcpUB81kY+dusVuOrEaYhkC+yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/ypZF76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/ypZF76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0A8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756949393;
	bh=HD6Ak4a0IPJGvxrAp8BX/ORPe9bShpRHrwkas4nKYDg=;
	h=To:Subject:From:Date:From;
	b=A/ypZF760VvJV6WS7pZnOe1T0TWnt8WwNCsFKy7LGrXxlqFiicRq2rugcIdi58lpC
	 kVyd8Z6Nl4kPjaXtArcm9N/IKru2dCfZfHj6qyC3PfK/cs2yngPK7q28bPjCpjY7ez
	 hLWUWukGjZfuX7519co1pbq9ezVekQQ+X0EVCVd44K4UvcdBG/3yD75YTYLk31OQ+X
	 5dhYXRqr52Pq3U2guwxXLUfFyY6/o3OF1rZH5RLf/7WAG2URDpzkRJ/R53irVGHIBq
	 vf9CWXIQfGF790Z0i5rKkvhnZNL95uQ5+kvQxkjYTC5WNBiSWzWLntLzZd1b2i435e
	 wcLUrJikEv1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697ACA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694939359.15014.5680437476028771115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d065477425e4c043afb88f1e63abcbd5dcaaa927fe8ac9bd2eb0fbe3e7b048b9
Date: Thu, 04 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756949393
