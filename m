Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBF23C0B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719539663; cv=none; b=bSRWbjgkNfa//8DQRyeDH9HjUzhHBxCDccq+7TFxjd2ezExxNlBGSqboLx3aRlIj/WxKNDXBKJJ0MuIdfsnE18FZnRKRZfOOVx2zhkXxcr27FHVHZKjBq33o+q954qdenebRueIl9BI4M7mXWJN8s8g3MeB1uB5qa8vwHIGy/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719539663; c=relaxed/simple;
	bh=E6dr6LblNba6+CtHTpLMaKYQGUuCerR0ZyDPHmwcP/U=;
	h=To:Subject:From:Message-Id:Date; b=h88Sxg2Q9nDAVXMC6nOo7QhBY7eHm9q9rHvE9yya9KP3CRS0IEBtgi9SUKKYUesCVF1LS5+E5WtX5GiUswhgOaDrBx8ZwRwtAKnoKkIi0FQwm2/879YhU2KKoUfd7/jDy+v/zwMYqwOOleHuMf3a2UTiwodf2/ERE1cyKsjshvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+8RoOmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+8RoOmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA11DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719539662;
	bh=E6dr6LblNba6+CtHTpLMaKYQGUuCerR0ZyDPHmwcP/U=;
	h=To:Subject:From:Date:From;
	b=V+8RoOmxpsDO7UdIlG4ZhiJQCZn7rOp3FNqVT9/MPtDdxtL25NqUzo7M5xVN1S/RV
	 0IdHO/uWCxDmMB48uI3M6VhwKa2hDDtA/wNhiXF3JYejGFXY0yK62+BW6eC1RAfVn6
	 Kam3tUEHbnAF0ivg0fjrwiVX5S4XH+Uj0i9PR0ld4xWCvZX/MA/tvyITltybTzI2+2
	 iNuS6GUaD5AXzBTTqBKrAT2Nq/abgL7Jr9R0lBXiSPc7QOx/G2e7dDJ4jWKADBnwAS
	 poRtqVQdYawqjq17Tvcmkw1xKkNaXtjzPms/zEDZLUhGhaLwO4KK87OzMnA7Rvl+1U
	 IxMIGWnm1aliw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E19C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953966279.3404.5489629244481209586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af427d560a8fc4f9e89cbad9d38e583076d5295151b7d5c09e2f639d9f01d92
Date: Fri, 28 Jun 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719539662
