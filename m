Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1F71B4C45
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718911823; cv=none; b=NlT5LOMO4OHvLHnhZCuS7BT9KE8E7RXuaWP63vCuSQTByX1ISCAsmum0CTyuMukfnTOZ/l8VD1Lhw1HqbiNH2Ga/+6/uWbeRNbnoYDbVtGGJ0ti1oFHPdiOAQ4rVeuj9MpyImevPxnsf4JQXk12P6X5Ya4BgOzGg9YXb9ewj7dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718911823; c=relaxed/simple;
	bh=KNVwklsB+ADYLYRh4/XCY4cFSb+be3+YulU5u1MOtm4=;
	h=To:Subject:From:Message-Id:Date; b=cU844By5yaC3PUbQA/OPiq7zAsruBYdhpPoDKL+y65nXbST7KlVcuR7s2c8+tMoSmzBScFdiQi8V9Q+tqoTsZbXzaBfoso4s2bpBFyoydU5yQsMyx5qNBP97v1jfuab78K8dAz5h1dHueTrDG47ZaIofPAYkwccbdtn/2lMO+jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxowKk7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxowKk7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A70C32781
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718911822;
	bh=KNVwklsB+ADYLYRh4/XCY4cFSb+be3+YulU5u1MOtm4=;
	h=To:Subject:From:Date:From;
	b=mxowKk7YrQ4u8E0WYF6Fts1n1rCj2YpiN+ngez/tTzbqGCsF0KiGhfH7+2mJ+YGUp
	 HwMNerR405iKFi+KDbWXX5q2W2HhsQ7Wh90TpSxEq6/4rU9dSGB9LRALXmUYMns5ne
	 CyGFHuMCE8yUaElJSSfi4sC7Di2y9EECR7ephNlxNUr+6FOIlBtUWVIJxtIN5/d3+o
	 ONh1+Pnps5nFdsm3y3qOBp5IlpkFt2Qcfe8SDAxO9FKxaWAKuKTvYbG1X4/xjb90HG
	 zB9I7Nlopa3t8u02g671kIgvp4f7m3WD3ZKbMGvgccd+8IpyV0RRewfpjNtNT7AklJ
	 PX2PgNlcwoMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC246C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891182282.24424.2493788279070295047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7692a7709369429e4ad805bf5b7d41415149a9fceec4cc5d54e1eaa40582c9ab
Date: Thu, 20 Jun 2024 19:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718911822
