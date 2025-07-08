Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4D21480B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752015594; cv=none; b=tkCy8g83P9MGsTFrjzxkAO61115TjL5fzM688VwC1CprDjnKi8Z3XCDfIF0FHZxZKSSXgayg6pdVJn/0qDsqrYHAHw17rs8AH9mHbEMPmY7kSx9ZcD8LPAEl0tYfRbibXczMShI11GYaCtNdKrecG8rEcAJa1PZ4Gq2v8Q/msPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752015594; c=relaxed/simple;
	bh=vWlrlmpaU595mx07T0lxo/UY5YoKevQJY1YUx8RVpYw=;
	h=To:Subject:From:Message-Id:Date; b=NplpMfDV1O4mhBPMvkPkosA0my7Yx/8maNM+fUl5QfclKdu+GdgUOZCAPIaUJUR2mPZykGX30b8NCfGxYO+3LCk2bcvYb0NCoHQFupzfDwkf8SjTMBVgWK8ZWtBmG0nLU2RfwtGfMLZkoA9GdWuN37VdGYRTIcq0zDwDe9KDLu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKW3GpY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKW3GpY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E115C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752015593;
	bh=vWlrlmpaU595mx07T0lxo/UY5YoKevQJY1YUx8RVpYw=;
	h=To:Subject:From:Date:From;
	b=eKW3GpY3n4JCEeyWGeX5FdAco7/+XJJrLsYtSK+ZRb79JDHd8WkNmq1HtwvlRYiYs
	 NZ+ze83J6IJ+TBRd4bk1XGnbUih+lCeMvd/3IVtuGrhYZKUTFvecimtPVJG3D/4Luz
	 JZcgF/0F6icAK0I/O3Y6gBLV4JMOgGdrwozG/sJ5NO7DUh5w/pyztdTgdQtZrehp72
	 xBPHhuqCnM321wFGVTuRpoZwxqBn+DBZb9H2t4lk5XxhRf/JeqEf/pLuqN7Mzj8adc
	 AU98TFnEQ+kxXlySIhjYJP5bdT3iHM4aA3UEnoQjSVX+1QHdCw7ddtKFaAPZGv2z1/
	 j3E5wEx4eLZrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90040C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201559358.7541.9518213711183276801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00cb6fc99e8c5dfb8df2f9f9fe92de611e119fe5477f29b4fc6f94d882dc01a
Date: Tue, 08 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752015593
