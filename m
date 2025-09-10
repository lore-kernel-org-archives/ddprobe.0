Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C58272814
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757522994; cv=none; b=SXj0AwbLZwnpiTNHEbnCZl0jUTr7I15e3dQlIfbippKUVuwtHZHjKC8Umqi+N1dMza5Uwrm7b8gsW46mAJ6o3F/39dnl12CeUA9pGbE447o/pwtJ4xQVDQ+McQyNIOCAqaASIYk66YkBl2/c52s7TPesD5h/rPF/++EK58twAUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757522994; c=relaxed/simple;
	bh=p5w0bPDEXyrPhQ6Rq/nvADDcUfjD9T7nLwE/6rarYCo=;
	h=To:Subject:From:Message-Id:Date; b=Ooyb/HmOHbylLuUNxP0Bm4tyecMzGmlSkYLI/6aloO0Krkg3edq/1/Tq/AzaBHzoqfvEdkEJUOSwEv9Aq2BfyD7CzTMkekBsa40aHN7Esp8HpygomeUaV6GIGHoV+XZPP+tc4xeUz+aEoxWVYa+w4QX46NNcZtpDzCusQ2FMy3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le+rK5jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le+rK5jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD69C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757522993;
	bh=p5w0bPDEXyrPhQ6Rq/nvADDcUfjD9T7nLwE/6rarYCo=;
	h=To:Subject:From:Date:From;
	b=Le+rK5jTYuJ5Vf++tc4krjp51u79RCBT2PDQ28LTZOfmzqHT26oGDi3ggw9HL4jnr
	 Zxz8YIGgjwVpYS3Avq0Q/NaCi3qa6ESxLCney9RWsYDskkv+mrZZxvq5LMYSTaH4ji
	 2wD92AGFhkHC7s/HdhlhT3wltmhLfKxiRmtAA4XOd1F7mCs8GT1IdoefaxaoCWbF3G
	 LTYxYLU2/JAun2T+XVpYG9Tx6HZbFBufC8xGfWPZUQ3iNfNfbh9DQa+MJs4M7Fceco
	 HzmISBww7RknvYojI0mtkuiSfdYEa7Z/0yD9hE+4CNsYRxrcg06SRvPtTwocrkF985
	 3FLJ4gHBvc9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752299358.30235.16142581996293511317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f85737332e1877ee10f3bcec737b57c214d7d492422d1bbf10abb9131d317e
Date: Wed, 10 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757522993
