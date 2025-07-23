Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2CE223716
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753293594; cv=none; b=DTtNhZxfhIuAJ6TauLoQ5UC3w5FUvcWwPbpA4joaJfJB/gfmj4B3sBr/tnvW6SawQw+QiTvSyCiiaGyCF4wNUV4Xtz7ddpw/XqATPESVj94m3rekMsTj7UKAZ0WJ5lo1Yvi8j2FTawi/bMKSokWs+xI4VhEXm9fN4EGJ/UGmDvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753293594; c=relaxed/simple;
	bh=2keUgsN1Cm/S6410Lw1GQ13AspKSytbyvM6rDdX1H54=;
	h=To:Subject:From:Message-Id:Date; b=EtMTaa8uE9PzSVOlZBrCag3xiGKHphwsgndugzuGTdXoqBSjlI0V/DOTK8WkFyzNqRoTkWr7k4SN1icE40MSJRGZ2PyYv0X0NfYw8LwcSJneI3kzMvUyDszXpQNh7ZnscTdmUh6F7Dn+RF07Q2Llov4FI5SPqBDBcdnxod1QjUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkXgTwgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkXgTwgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33EEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753293593;
	bh=2keUgsN1Cm/S6410Lw1GQ13AspKSytbyvM6rDdX1H54=;
	h=To:Subject:From:Date:From;
	b=DkXgTwgQcYWzH0hR4YDbNOkcc15AKWylO4VqWW0WMSRgcP1OrM1L8bNDffsHc0XGJ
	 u7GwsEnwz6J02FtLtUABZtY84kBK8tKQMBhOTzvwJbaAqdUD8FXg0nVF1Th8I1uuzy
	 VIizWATfTlxfrFMORsiPuFDWXh6RPKe68nCl+2yYmrX9E4Q98GzFep9zaZpkiz+1YY
	 mdx4U6X1Xz+ol+IgP3peGWgaagB7fceybbrwZOaod3e/S69Mc6eY7MFMYZSqqeMIvc
	 9vy1j37poPRrvJkuU3af54RkhUrNYSISLqRW20cStDI8GVmfBbS424k6pKmNATYzr7
	 sMd+hH2TuCCBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF0C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329359357.24494.7813424844714206432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1924c2bd0510cf64a633758a5393a1601c9abed46cd5c1294b13bc2c978997
Date: Wed, 23 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753293593
