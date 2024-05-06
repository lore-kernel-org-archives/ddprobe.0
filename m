Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B67140366
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714990343; cv=none; b=i7XbogFRH+PFsmWg6Ir5MpdvzMLQaUo2Hae40nXw8cHaeYGS63uvi6giP9c6nek1C4HPSGrLyJ5///WFfRRGtdBj2lW2b1mpXEto9l6AvpNsDxLG+UUHvbFfw6xg7er261huITyUxpfdwTznPLMgvMO3g72c/0b1qWGze3niI88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714990343; c=relaxed/simple;
	bh=X2waEZnFykeTS53gEFK14ZGwHmY/hu5/UhxRlgZVz78=;
	h=To:Subject:From:Message-Id:Date; b=aEQaBxG+OrSAIudHs9rmN9aChfx5f7z99aj/VVeFMAyfNLk4uYtPLo/9YiHsjN7ZLhWOWWOSq1eHzo/JkKO6mSEpw4HmbUnOaJcAopv1zPQ9P5Qh1xCaBYvi0V6KJ3v5YxR7pZeewpXXXzllwQSqUi1ETx4GWVCb0lOz0ss1bx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPVne9di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPVne9di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00B0C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714990342;
	bh=X2waEZnFykeTS53gEFK14ZGwHmY/hu5/UhxRlgZVz78=;
	h=To:Subject:From:Date:From;
	b=cPVne9diCRxn4cimqO8GweEaNBxxgwppObznQkJOx1lqxPLSeyEF9bjTG+tLmIV4K
	 d0HPnnLKrRTXt9EZc/6ZiJI9/Pu8EXZmYk2ErKZlg6/zvOyO9j9P65RZ3BGZaLjRh+
	 E9lVKHqF9MBY+nEJrsthTOs1J4e296rKSyHTnww3hOHYouzrdnUmaiTKg++pKr82CC
	 omZt+nTb4SQnSSEvRI1CY7QLwLj0wdH3H+APYe0cY0lGOeyPNflUUbTjQ1WcA+Gldz
	 pS6LtWzhBmGeuxE7dBT6By+58Y9RB6tXm58l0SQpjW1/31RLWxHXj9IjgPars7BlrB
	 bpcx2teMvL/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA69DC25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171499034275.20011.13924699004601987377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8197e57486dfb8cb578698023225609c71185df98a00a06c0b9eecf1e4afc0cd
Date: Mon, 06 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714990342
