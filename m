Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73C23D7D6F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777369653; cv=none; b=g3gu11qyLTANAgRxgMZcGREaAUUH679p/1KkcptM2SwTx0HpUwP6f6fI9Iugtr+fuXW7K4SdMfNYCQVuQNrW5q5FDuQ4y41UxitetIqPgdr6XLqXfDAPgVpK5OT5jQB2OGkPg2O87vpXdzjdvbwwkYHWWzjKjA40Goc/ruHqY48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777369653; c=relaxed/simple;
	bh=joDZkBq2XbOlHZeJCJ/ntqk+QWlhzHBTwRpNYmNMaZ8=;
	h=To:Subject:From:Message-Id:Date; b=XMK45UoelfI9XrZklq8EomE29WTnGFQJPOIS87/it0WbxCV0Ir7E4VN7l2qjniiemR8EAarHcNMZmIc6dRdDHi9k/OQfga6Y2asevHLm2No5I3kzFXe2DMn2Rn3wvjs5PlzUlOyq+7VI3qgTUMwhZudkGT0YHHdcoS12N/ogqwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1WKlm1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1WKlm1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96BFC2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777369653;
	bh=joDZkBq2XbOlHZeJCJ/ntqk+QWlhzHBTwRpNYmNMaZ8=;
	h=To:Subject:From:Date:From;
	b=i1WKlm1xeFy8vs5C/sGGLuIrKt5rvOYZUce7mRCn6jdXgTcKExkfPuu3h/AKOXu+C
	 UfhP42m+xPMSjqDFzVTCgIz8GwFkdgBC8FjWCszDX1kCD/wdb5yvV+HxTqCamtvVsf
	 bHSjTaruA1AoxSgDqEv19WLXSaTFisi7+izvP4kekKMuZV0zmbosyevWjE50WBQHEV
	 YSJFx/QgW7stp38Lty0qeWyDo0XMQbwPqd+TGstc2uah77pOyN9zDhY+rN+Py8XYlW
	 CbwVchrOb3Zw4Q1/09fdtVhJyHgMOFRD94OvVkEqkMjQ3Ac4EZ5wTAJYNKo8cPXA8I
	 c7NhXYgJjnBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA676FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736965368.23121.980466335615423250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a3df158a9fdda5627d340007c8b4faff134d68ec3a2d215fd64645036ab2eb
Date: Tue, 28 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777369653
