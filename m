Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8B5238C2A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765610574; cv=none; b=Aakpq7rPQzp84g+YkBtRvOFQyspyQkhJREDBn/+gp2Z1k4/h3zUUteFNBfF0dEz4zuoKIvICvD4U2YK2+pY+JlqXl99t6sgI7ro3Fr1QQn5rovw1RuAwAoi2CgfjlrcR8gW6JHKJEkTBniW0Zy4qTIDGqzJAW8g6lmtUPqhOPYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765610574; c=relaxed/simple;
	bh=EPL/tu9e07mITVbmUDXJJfedBQrYHpJvZPZ7Mjk3J7E=;
	h=To:Subject:From:Message-Id:Date; b=TOZ1dW0EtPEgh5botbWlmzoVF6nyqq4U3sRXEWWV6lZl8kC6Cq/GB5LKSt7vtnjFQpF47+FUudgjF5CcBNb7+p3kW3VzjjSkVktKScreYqH9GlRhxMxX7qhvX0a97F6CgBJN6GGTqTW4/gGzyd+OGcv0Haz9TtqIbMe4VDdbZfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6yABjfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6yABjfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765610573;
	bh=EPL/tu9e07mITVbmUDXJJfedBQrYHpJvZPZ7Mjk3J7E=;
	h=To:Subject:From:Date:From;
	b=r6yABjfYUG7xhmdVAfyJTt+2B7LP+FZOW7C/jtlFt3qDFeMREFcVLZIsiDnNuP/GO
	 E8kQhrSBF9rwJT3qMCMABynLy9VqRco4waX2FSLjFVszTfwUnRYNYk8iCdltdWikbr
	 GK+dBTUuK9+bwfyem+0/kzrCCod8hVlPI238uaJGiuVfIui7Sovd3qyhI1bkUS5QsI
	 AeGDrKM1s1ut0kLIyDX+0dHRlMy5cfg8nU1jvKAIGHON+qTbFiKKNn+ThGTXMiSWM3
	 B2MNMB9BeKnXDZB5x1iwSVjukkZ6i31ibe9DjIp/NhZViE/5OtG+KI6DigEqpetN8i
	 fy/Km/3LKkupQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911F3D59F77
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561057358.32492.14792337679133399049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6559e5f61221ac02b04fadb2d6a2e44440d77646e1be52bfc095fcbfef7064
Date: Sat, 13 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765610573
