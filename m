Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE203CAA57
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782143194; cv=none; b=Q/t077lQrcq3kWZmk5aFv9PUETxLdKO8fuJwLZ+RI8Pc1heg2dYIs6tECxkEIObpOqi0iVPy7ojemjdM2daCEeSQpiQkM8JN/lLp6rGRBRVk6GZFDW3u7aTpf8xV3cPjVXWpxSpIwtn1q8Z6sj2/Z8zeXtJvi27bEkJy2Ubu1e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782143194; c=relaxed/simple;
	bh=QJMc2Ri4hQnRcvsOpfUcsrJEjXtmAv97a42lIkRTbY0=;
	h=To:Subject:From:Message-Id:Date; b=tH110fX5AjCRylKgE5EcHn3rc8lN+c4rVgR7RI5XydUa40IL1Ql2rXUoOVp1QXiN3hbIXWxlJGLI5KGHeHMA9WtCJg1wCXDIp5wygFj9J2O4D7de0tNpy8+PWE+uJ+2EevnMyS4xIAnOkcap7QLmccIXgNqjtfFYqqeJYM4DXOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpVzMlDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpVzMlDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E29C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782143193;
	bh=QJMc2Ri4hQnRcvsOpfUcsrJEjXtmAv97a42lIkRTbY0=;
	h=To:Subject:From:Date:From;
	b=NpVzMlDrzXcBau98nvE4XIrAon5QgAekPhL9d5UkftEsC0AHftf997xFM+diPBU80
	 M42y58rBmEroTfx1X7JafB3os90gGnEHrlt+/stQEYsQFL/iN2apk7lPH6iz1RXjvI
	 kAH3LAZE/5MedwI/BYw/qfS+fW+Dsaw+bJ7d8QIYud4u1kenfdz0bPz4Tv1cZ5waiW
	 NUND653S+3xnIFlB2RIayjC3VcivTcoYArehlP3Qw7BY8Y6a8eTlxndVni/CBgTLz7
	 rs80Gypee/EZQ6fSvQqByYVhvJ4L1P+g24jxtzHd/e6HiY+Xo6V0A7nBuEp4voPEW/
	 XRWfhUBJCpOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBE5CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214319370.7115.3535792452064813818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46224528ffd10522f972ec2653f6010b8335ee5ddb94935704bd0997a1e92a38
Date: Mon, 22 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782143193
