Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101122C21C6
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761177594; cv=none; b=KrsCtBA45cMA9YckdKcP+y0+DQzbTzVYscdxWFhwjIi1JfRy2yvhxbDNZMu/CutvCdSE0PLww9VjxamseE96Sd0y8QjoI9aOLZm1Xm/W8AyOCP5HhZPoNz4xsfFkUmmH4jVFUet6dZ+4PXLtLdA+93kzakMUU2xVc7W9ChyHKHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761177594; c=relaxed/simple;
	bh=fstDurxSN+82tkUYTdftVgbUrd+vORDuqckYo4Ty06k=;
	h=To:Subject:From:Message-Id:Date; b=i49Wu+Pc2UJcEjkUgcMS6X9cOkHVrNQRQXvV47dLoFo8oCpWUSNgbknttKcfNrBAv8CDcVpXOwLaEFlHy8BSR+o5kM6vesKY94n3kHdDXtoNIWpQTZhL151kDaMrG1PXahJrkkvQAO2sjc/YGDG3a7v5UHR5KSkR5l0vW/SE8OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B10vJsI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B10vJsI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A3AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761177593;
	bh=fstDurxSN+82tkUYTdftVgbUrd+vORDuqckYo4Ty06k=;
	h=To:Subject:From:Date:From;
	b=B10vJsI8Il8EnuR8Nq7R3uPEeu1+JHPJSC4iHRjr2dR9DShBDNtKp4Kp4oeJi6i2s
	 Efgp453BP/3cQ5jU+gu58L26Jt67+uzeA6fh7826TfK6IQV2DIAnIlnXaI+qipJRD1
	 6AXIbrsUcsCQgGVhIR9o+bEYkq5eJBbMIWKCgjnzSWtG84Lx+FwPIoKIXXd1dEM9fa
	 6IPFzYgchwsGpdkYGz4i+MSWkp8Pba9s54Nwm9c67gdcXjecdS4ANUGW3jdJAB9qa6
	 6B2fQK58ghDSqR+hE9QxkT+BiM2nG19uwpyyXeiFbZJdBpkeMafiisC2glkFfqxDup
	 vBZY9M+ocZfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EBCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117759357.19271.13870303007504355753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a623cace98dd739335d40f852c0cbb60911366eb8cb6192d1da996ed4b7c79
Date: Wed, 22 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761177593
