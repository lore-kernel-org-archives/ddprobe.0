Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB879483BF1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790849435; cv=none; b=GSgK4iRP8f1TCAzluzlG0hWNBw4fUpSZ2We1DG/v19qb5v7ihGOOp/xd/2lv4deZcxxUH5WKwK66Px5Ex8vs84AT9ODkPpvdY4b7z5WlsLvKQxKiWdwJExjTwOfL7ff3USJQU7ZyaKqyqfdMBVasdRfx8tF63pYXc9jR8qVHM3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790849435; c=relaxed/simple;
	bh=9Q0yA9bWMpagehTrUABs5lEQnzItyA59ZDwg/sflCA8=;
	h=To:Subject:From:Message-Id:Date; b=UOXac91ijFjFo1YOoQq/xtX7NoIa0ZlIb0TcCyn2mF6uDXSjLSdOTdVTKmkJ4NDyH9dbAdh2Fb5STmH1tAs3sFcDlGkuAiVv1J5U9iefE0M8icPT/bRYQznJnCLgtJrpQHJbFK6hpW1FSDp82h5naNKL3Cb9WYzHnBNA0ivmq30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7Fk1IzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7Fk1IzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BE4C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790849433;
	bh=9Q0yA9bWMpagehTrUABs5lEQnzItyA59ZDwg/sflCA8=;
	h=To:Subject:From:Date:From;
	b=K7Fk1IzDizxXdipgw6dXUMXjAQlTgtt3hqC67PQVqvbzfHJaodwXzEpffobCHzhuR
	 r6eOu+1X8yBwNzTmSwdY8nhFd/OrojanBVoxrBMnKzK+ix49FBYWFbtuTf9tl1ZEgT
	 DKQ/yLLFpTHpmsJW//THg+HJ0Fxd+tT/MZxNzAsMX3kr2AGmOOSDWEhqT4hOGr42GB
	 yv/UWQdEq/fV9aQ8wGJMCRg9vbsQImWYqO5RHyxOyOXcygPYezXNi2q3Usb1uOVe1L
	 qr5vEIrvT/5UC86c6RPYdN4YMCk8RdIaKJJKkjy5WS2uzRFqCeYW/UZ24bgreaZKCF
	 frgr9UjWCS+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC57BCA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084943369.12889.10907424363744216782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cf22ffd1ab228806cf390b085b2673c002aa1b90abc17f2efb48bae61fd296
Date: Thu, 01 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790849433
