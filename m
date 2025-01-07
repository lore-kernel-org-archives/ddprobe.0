Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1C9132111
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736216154; cv=none; b=ll3+jtUs+D7e2fflo+gZ1aQ7cKOR7zGRjvmotuKpem+Kk9urWgkhWyJUrlqG3GsfEUHWkh7023FokFB7sLh+cpATLKruS6hkImcfTmJi84yxaN6A7UN4i/9fU/CsI6hY9DG9Ps3h0bv8DR//iB0i59ZcCyWaMFekI4r4l5d8MSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736216154; c=relaxed/simple;
	bh=KaeJj4Eb3jeUhGDqpM+rZSXYEX9egetwh4zB6wIf5jI=;
	h=To:Subject:From:Message-Id:Date; b=KEXSxZWhsNk3J3NCQCLRQbKcLzLGq6nhPRQoZ9kqLDkqqfL/QYTNK9NPE5vxPiLHHyJAHVacrVneTQ29ROZnvqq3ulix4GaIfpajTpxki4ew2bb6KrXxr7e6GTGHMLsq56C1a2nQtLHtwkTLMmTLNmczH97MHRs9TXjwwHoGfAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXyNOaMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXyNOaMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5DBC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736216153;
	bh=KaeJj4Eb3jeUhGDqpM+rZSXYEX9egetwh4zB6wIf5jI=;
	h=To:Subject:From:Date:From;
	b=bXyNOaMmMHmyea9zf/8KjDElqeBWphH7o3HExxsNKu/mUVWvrsJQFhPamv/mnuWy5
	 o+brcE9m1cChvsVtNJpigs4s99d3xfwbx3lZF7Z20YOq63NbXbQUnplKLE85Nv+09Z
	 lIhMTMrBYdNVHZVjpkCFqsWh2U9Y3bi87YgQav4WPmQ8K1UeDepQkqo1V/oEEAJqkM
	 sRDzqe1ELeODi1ZZApCDsXE9j8lSQJUhjD/SBybIzsLUFVMJ7J2UPLOszpyskEkp6G
	 e7RyL3hcdrjZqL2n6W/An+F/VULzMJTMHo6WbwP3A4aNTS3r4A1xPbG4SUYTnCwhHE
	 oRYL9IusfIjhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90517E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621615358.5762.9001281246310765090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bce5ad1fc203c26e8f9fbc3d63af82a98acfa60830bedaf5c984fe76f1d00ce
Date: Tue, 07 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736216153
