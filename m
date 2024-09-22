Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7DEBA27
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727042754; cv=none; b=mr3E8FclTQYgLaygA90I7qoPpp+20KC1k2uuwjnbO8+Fvtn9rnOM5/AhXC5CKeQaekkZqx1h6uOrujs/XUfZp9UV3i2uSbdYxc4ioYZyBOF980uylNGUk/pW27RuD00Q6jC1N5TrGsuU1TbQGuqVunasJT9gp5BYUQlq3YPI08o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727042754; c=relaxed/simple;
	bh=/10F65R+4SGdAaZbclLkf6H+Pc42Lv1KdrMboO5VNsU=;
	h=To:Subject:From:Message-Id:Date; b=L+uReqOstLTTiGewSAGjGO7Yj8nSKFhgHGKfrAyAupm5F2Yu0FTWFSK52a8ONu087y653ZeV6J/eF+VuuWYGRI/L6fYdsbKFkGzz6zGgJOZreUBWiRptEhGJovOiNuZUNMu9M2aEERRtRLYkrcYVvpcwv47lwBnXbLtLocVJF8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uF71NQOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uF71NQOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB987C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727042753;
	bh=/10F65R+4SGdAaZbclLkf6H+Pc42Lv1KdrMboO5VNsU=;
	h=To:Subject:From:Date:From;
	b=uF71NQOEXvgNc/idcJMrYVsZmgSNfnpR8DO5Jjz1p/pyACqzPIDeQZHRmNUYGTOZt
	 Kjrr37aA8qVc8wUlb0N6crjEZHceMmMJaBa3U+5MeMClSZcCm5g/fxWQ/FQuJykNN1
	 HqC9C3uGTVfjNfuqUoIxQmGvdMESzRRQiddEpzj2GASpA7BFbr9suYZB5bfQNvpy7K
	 mg8hAdOwWDKln6dyTjA+w3Al97+azyX98HXSW4yd/a+CgNqzAshDx5sNwV9FrPAtZ4
	 OZRH9SPkMuJBF7KebGzQAuE5Wott49KrQ2RD/fTk8ig7kq+Kb9DGgVQlfgLs8KnRjm
	 KosdfL+KesKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D84CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704275357.8624.525453510370651641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480e8d61d7d65ae897e01204917e747e14b288bf5ce6dc70341c5f33600736e6
Date: Sun, 22 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727042753
