Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6DA14F65
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714377143; cv=none; b=qMDq1uq+yv8WQPNhnPFsspfejvHSbHfF1sogKN8HaRKMlNiQvnKY6zjNXSceN9DhtDW1cBG8+6EmEJLQkU5Ikn9q1y0eIjfRMD6jWLXk47740BW38Q2q25Rbg0XpbYBuU9p1xgJ/c07TAlIIrVP/JJ4Nu31mKtQa3tAG5FqzsLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714377143; c=relaxed/simple;
	bh=I7we8ANe5mOmuBz0mgWfYgRSzWD99giKIGg97kRZdS4=;
	h=To:Subject:From:Message-Id:Date; b=c843F2M88b1F5kWyWvXgPMmMDK70/itkv4dnX3W5q+RXzFaGu/CNya9EO1NLZ+MCnNZs2nA9lU8Hzk8vJDwI778gs3nXawu2h+3olgM66PqRwkwvwl6Dpeq09AU2fgxz0x554gXiC5+7vdFgF+4z9TvOBsywiWmNr+CfAru/1wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lC6iE+FH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lC6iE+FH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB4C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714377142;
	bh=I7we8ANe5mOmuBz0mgWfYgRSzWD99giKIGg97kRZdS4=;
	h=To:Subject:From:Date:From;
	b=lC6iE+FHdWzGfGzm7GmEGGyc5WzZb9WjIP1pwUEj/bYdPeq2vPYH+6skO21m0kkTD
	 uAwFGWQfTto4Ha3tRx0b5xfLlkfeP+Iz0orBDyU40cSH0c3FxvCIWGXZxoQZHC8VAk
	 WzP2cMlQKnWsaI3D4ZfS/Qq0FYqhuE6OWdz7QdtTvYbcf+KMzXufNCC4cayZgu6Rq/
	 3dG0/PXMWVKXkBdw6c1Ar9yysQ53z8EKmr1xjppiwnvKk5po6zHMk0TpMN7wdKBAAs
	 zUaC1iXBeoMeFVqJyO1Y+X5sUtrfZD3Y8xEdQP5iVYfQ79mTxLbiiADqiidG523s4q
	 mel/0C0KD7j8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F47C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437714279.14722.4296922217927231403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6ffd3eb4528030a7305e0095a36ecad465596e529a4a5d5a187469dd0b6bff
Date: Mon, 29 Apr 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714377142
