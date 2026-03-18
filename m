Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2843B4EB0
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773845694; cv=none; b=uSK+r42e1YsrPhtIaC1oFjyA++maKjBP34M/cU2fRp3qNmfYQRtgrCEwcdvYLLZInZeOYMNlqY4X9sh9cG86MRFZ3vNsC9ApoXVDDJsUeSNSbZW9I/L/yhXOfzJIDQGRz1WAq/9b+n5TQUsAyCzA5beZuAk0IiVKFWDZ3KeeRiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773845694; c=relaxed/simple;
	bh=nWZtYRkDiO9wetyjLNAwMJelAqhCpDXBHSTWqsWgHs0=;
	h=To:Subject:From:Message-Id:Date; b=LONgwtjAM0VAlcQTXts1KZVfeJIo0eYHbBfGUYlrX0JLe8cKmDVYF0io6sQss4yzcCjErKEGrTkCXY5x8UbPvFL3nia6pNfI7qhcK0endcPx81mORBoz3Pg3ctMEJSx+VcJn5jRvY8BhMHxCqfGsDNcqSTdIH8Y6CG8ge4ADDww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPFi+WMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPFi+WMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D1C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773845693;
	bh=nWZtYRkDiO9wetyjLNAwMJelAqhCpDXBHSTWqsWgHs0=;
	h=To:Subject:From:Date:From;
	b=uPFi+WMBXMhrA7+2BvbGFGNOXQVV3eL8snm0X1CICDkX7DsvCn9MxyiD8+mXg76aJ
	 JA0A5tAqfcraclUz25QBMiP0Mcc0diJi5q16DEwdi4qurZ75sZUd1FLJLrLThuF2qS
	 6u49vDYm4UO8Q2KpOeGfGplwBBNl0zq/9n4l9jsgdSb6inJoUVYzzt9plhSohf87e+
	 feDpKKC8uN4Ddj33uS7Y5ZIDgwIqnvhaKDX0ITZ4eufM3fvAH1nFORJDOkcYD7latU
	 9XIJI/YZobXaCu+UqQXGeuN00DMWTFMhWYrN6Tsu3OyXIgoWJNqhJmjssOIcoBdzYO
	 sNhV+B1KRPAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F425103E190
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384569357.1910.10612625891538902143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f0f514e7cb8a3545e9f4199ac28ef50d251031f7a5c9ae94a7cb411e7184b9
Date: Wed, 18 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773845693
