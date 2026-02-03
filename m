Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F511287276
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770086634; cv=none; b=gpTT/Qk+nisIEteP1+267Unzqf/9JBjW2HkqEExsNf4L/BxEBRy+hFLkxz/mfwH/7th3UVx8PYbp17kMwa3ZaDcGb1pQn/a6UW7Gnru7cpPIHZ7dGthtE9HkSBGCXD+7GSKrXgdt/COHQ9xftCKxMeWMNH0ENL1PsMYwFWYWOKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770086634; c=relaxed/simple;
	bh=wS+dDx2povFKGYldByyS1aWkQYPH9PG1hyxQHWZJxE4=;
	h=To:Subject:From:Message-Id:Date; b=Crn/Gup6sDFvak++dqFOZv0HAfG9GdLvpeQUElBwSATMJVWum3gTwcRIX/iSJBGZrNuqvv/SQQv/Jl0iW1ACdcMN657Xrxo71oAmDNzbUQbvSvaD8/hfmI8GvCj4sN/utFtPljxStt6gsir7DIjNHoeRlO4bDJ25k1LE9+v7V80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpaz13vW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpaz13vW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3600C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770086633;
	bh=wS+dDx2povFKGYldByyS1aWkQYPH9PG1hyxQHWZJxE4=;
	h=To:Subject:From:Date:From;
	b=Tpaz13vWNBgN7IuxJtIFi/qXv+X9aOz2BTcr2IGuNrW3XVGCojDa0ECnvFgZJj503
	 Vq00AJXU57LzWSMi5Mbcz4XmjYn8heOw7lXvgwM8ZgJG+jCKXQyADc12VhTAsqnxZk
	 C5DA0+fvfQZAfNSUwfLoQUQlYf/OSy6+v9/bad9tpSSgG1lw4WWQ7NqRXDgWvqFUGm
	 lHu79GRyOVr+vluG1+mDvhU6mtIX+N+z8Si5tAsKAN9kMAZVqPB0I2MXQ0WtAvrpDi
	 YZEQv8YSmADvoaFAcohit/HZcr4UHyRolf48sApk1sl2RxdH9hgRvbylcsJiChmTyh
	 CSDaB2XXsLlng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87C1E83041
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008663373.1597.6150870694956304170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f6f21fe833d93b4d2d018c5c9b0e6a778dcea7cc44e1901df0fb1c541030b2
Date: Tue, 03 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770086633
