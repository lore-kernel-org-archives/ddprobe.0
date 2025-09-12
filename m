Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164DC2DC77E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757721594; cv=none; b=hdT0pePJ9rtCCOz3w8e7+SAr1+gaEmZAZBrf1xIsdV1b5Dy6eKbEn266qpXE+vkm1O1WCl3UaTlaNcVrdC740pd50iasQHeocM7pMPym5AYNiJyKHr83rDasYWGvHnpRbIgLHXUvQs41bFqk3ChI7rByCopqvf+IKUzOwyR4Trs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757721594; c=relaxed/simple;
	bh=FetpjgeiJU6gQElkLCpJVpnxbsO2QmfpFdKEq2jz02Y=;
	h=To:Subject:From:Message-Id:Date; b=ld1zSfP6FutPh4bPfICZEUllr7hsQbDdg9SQMs5bTVHwSYG10v0YsibafsAXinog33aHQnch0hFhnuZL9mtM2lSllFaeUG14K7iNz+hN4tYjxy6uXbIv7ovj69UYO0PzP13H/94TxDPU0iKce0akKMfKoMEygjWkqUoS//QB7lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab51jxEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab51jxEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757721593;
	bh=FetpjgeiJU6gQElkLCpJVpnxbsO2QmfpFdKEq2jz02Y=;
	h=To:Subject:From:Date:From;
	b=ab51jxEAKkzaBBI5yEmEcE2mi46DnGl6Cj/UnKxBR0HUkZhdJenQQccUk7GOl7M6J
	 TuNn0nbyTl2ML6DN4f+AorHrXBKTFA2kT7RMEij8+WTJ3kqnP0dZ6xRSXvaDqfo9Wi
	 16n7VPDPo8WxecHrIKVU7VUFKKN9CrlRuuf86gtrDpy7lEj9EIFp8Tn+PO/DsGnLYo
	 vaH0SEpo4gVtbLh88J2KwLYrLxX3fgAPB9sl12oxITtXFYUxy9l1oQ4cxg34pLs4+p
	 MZJ6U1+LkK3hwNlOgig63liyXlUEOtV1vDKuuJb2j9FCagftMWwquUJGEOg6ikMy/O
	 rn4wz0wdf4R5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E897CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772159357.27523.8885047231378482839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43c5038f66b05da6e66f942ba06d24b294ac51d5d26ebacee7cf87ab24611de
Date: Fri, 12 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757721593
