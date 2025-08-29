Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF522AEE4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756426794; cv=none; b=re1YDUtQMK4R7Ci1ssyue728Et0u3w7V8OIEk8Eb+q3SwK8SrnfLklr1r6oP6xHXWNMZ34QbwuthT/mZaqddWMm+c59JTtIibq1lAvc3fW+9/QYlDXKkyz7FoPmWJ3A+MH1KqhaYhxKF/aB6MDGFoeQkxDAFAngm4I8M6yI+GUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756426794; c=relaxed/simple;
	bh=CY/n6h205QPGMKqFUqGQebbvK65VKfyfU2wNr9S2YEo=;
	h=To:Subject:From:Message-Id:Date; b=r5/flKNavJxuYd+3gOxC+CiegE1TYB/eqcjQ/PCfF5Qr69zp0Cpd2KwgMdeIbFklMaZlAqxkKF6ft0HwVEcfh7AHc14Ho0wi3v3dlyMHHTI20UNI87ZVu4PVlZverAqlo5IMgTPvWU1MAX+kbpuOdpql4t3dZloYGaPxuWQUlM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5r0z5Ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5r0z5Ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4978C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756426793;
	bh=CY/n6h205QPGMKqFUqGQebbvK65VKfyfU2wNr9S2YEo=;
	h=To:Subject:From:Date:From;
	b=q5r0z5Ctb4c0nYjwQVSI/gPJsFH9T2oD/wwMlfZKI6M6DrnCBjTP7pqGIYvZ3SZTN
	 /Fuayz3IXmHST0vnM12sZ8BZpl6zpsCmN0rqlKGJNldxSLdQx6cHNb9eYUzKM76ewS
	 Ae51QsivGhPvCa9+BmalcEOOYtGgwRoCpShTQFNcZ7fyjUtbFbFHJjjR3oHVy+frfi
	 CsbB1c3j1hs1BsgMfXSeJlzdsY3x141xCivN8mEZ3iouW2oHe+8p3pv0aKfJy75P5o
	 f3BRKFS8MPgw4dWL5zbL/ccWJ/F//kcVtBAQuuG69wBhtFf9frYhJ1oNNvDfLFq8Un
	 WItQrB4W6iJcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C75CA0FF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642679357.14808.8324953001196951271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9882e107deb108fde19ac38b4c25c07e6ad3ad209eb7edfec8507ec6c6accd
Date: Fri, 29 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756426793
