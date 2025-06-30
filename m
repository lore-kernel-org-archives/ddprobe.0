Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304481B87F0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751314194; cv=none; b=Fn9BP8S0lUTnCtCSlapP9YijC/LoIji+Z0YNlZIVpiSKV5hXAvTDQkDnW8Zh107B2djlHRDJGbjNRYHB3p8sFX0xXrMea4hhunlfLy+M6I53tyg1Bj4/0Ck91BDHk4uS4DIyTX9kQDdorlqjVtXtQ/MEIbA/w36B6wicPiKL+EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751314194; c=relaxed/simple;
	bh=qnLVZurWMY01oCKqNKuD5PkLGoJkb601L4j7DVF5ubs=;
	h=To:Subject:From:Message-Id:Date; b=q3CwRfG8qK7QSwxcnLkXhTmzdj9eW+ty1C15hdoCuOqXaGbpiejZUMrH3WjJrVZqqXNuU5mOFEM4XUXpxzaycyM0da8jOroqfdTeIDygtR01iSaTr+nSqcelAfHAD761P11eFUks+c7LCpu+kua0ihyqB2h7IXYoppkIAkEUZFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icq7Nw4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icq7Nw4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C93C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751314193;
	bh=qnLVZurWMY01oCKqNKuD5PkLGoJkb601L4j7DVF5ubs=;
	h=To:Subject:From:Date:From;
	b=Icq7Nw4qcMe77H7u36bHgF7/mjCpyZz/H15fA0pYkptWuRZkkKy3TWq+UC47dwNmq
	 w59RJpmWIL4Gh6SHHeyo6c8qgPu0svth39ADqlbjTfvM8VHah/IjO5xUMdt0vMvcBT
	 OgugGv7tTE/ItgF4IHi3AY8S6J8lFtlMAdtNXv1R49vRjsrBLUtoWLh+5IiBiP0s0f
	 yDPuK512aW1eakKdMuebrxTXABk5yYF4z+I4VGGGCjV66YW2IC68e/BFf0onh02woz
	 8rfXUKghVrPLNwjPviQaE12kQjnOfvmQDxSOxk2+zZ/TwT0dqd1XOzFqT7SQbQKUfg
	 +IMbmTMsdl5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE9C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131419357.705.13848111078818933874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369b9c83c77904eb85c8447fc37da6ced8a6e0daf90d69e1950e109c3a710a32
Date: Mon, 30 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751314193
