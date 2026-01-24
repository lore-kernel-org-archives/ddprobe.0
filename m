Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D181DFE12
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769271234; cv=none; b=G1c3u4q7V64h3LxEAzhS5BrNkoXj0HdJbIj1z4EFlzatWMePHw6mEfekfw/BuuMpFp6GPW2qOBeAXstBu1SJEsZewI9rDGPfCKkwcH+zI+9gSwM1naSgDUVK/gtXN0XsOPl4VtJqYSf3WCBSpkCDzO7wOISQ/UWI7HoEI0YSPow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769271234; c=relaxed/simple;
	bh=zMhKDFI2hCkpbdqvhfdAs6Z/MM3I1SQlN2Hv9dyl9GM=;
	h=To:Subject:From:Message-Id:Date; b=kQZhxrwe/ARnc6+L3/+Pf9QSGOi7mcgif6PxpLqhACf7xCiIWOuCK/HVpKZwvGiCa9vQ9GOmEggiScX3GvP0a64fzMeYGaQePgYWbCZGeaHeeVHxvIlhu/DUU6obVUnKKQFD95jFGZjNLxQu/Jc2nR0BfUF63jKINNk1DL3WQYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH/cg2db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH/cg2db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8DDC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769271233;
	bh=zMhKDFI2hCkpbdqvhfdAs6Z/MM3I1SQlN2Hv9dyl9GM=;
	h=To:Subject:From:Date:From;
	b=oH/cg2dbBi3zHTECUyFj//t+OQhYyikYhEQwe0ayVYJFVUXS8nV+WoM/K0TWjJ1X5
	 tvqHztm7H3Z9vXM8iYTIdHQw7rg4sqQebPrvzq6VCa6UJOgO3u2kIdPdk5QmseJ/Iq
	 XemkXbrAjIcf80r93fPf8f64CGRFoys3lazT8lWnMl9YWcKCqYHWdeAcYfW23XkBgF
	 N4W7FmZMQnleGu+mBVXijXz4Rmea9VMge5UyYG/eFbPPFqQ7H9bdHU9c/q7URTRjbT
	 67GdI/xfo5zfo5pXy1wWqXIzghbBqB4NiQB9YNUdMCmIpfFOoa2ddJo7QrPXG0wesB
	 J+QsrJvm7cAQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F318D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927123357.15850.16544083531430822868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ecfb69ea6ddf977890dad14f8bb1667f9d450a24849df002b6c1651d032817
Date: Sat, 24 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769271233
