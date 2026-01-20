Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFF434D4E0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768932833; cv=none; b=dFJXIMo0mlGs4Xh97sFg4ctl3CxZnAdyJphlcBrRv5KM8xiE0CuY3Elt+FCklS0E/XlcuhDBw933t8qE4B4WKGIzBaz17IvWQL5Xzjo7O7U19Qb4P7gIDlQpVK8muLxzVMzmH7W5tnW+yB9TWDe6/zKTmSEiUs7QUu0ILDO4Ego=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768932833; c=relaxed/simple;
	bh=JtgFlz2se5ClHt9xxFEcHdZz4IMBxrQK4QsqQiqW0i4=;
	h=To:Subject:From:Message-Id:Date; b=jiwAQt8UIaNFIrvI9OrsLO3DOhtkJ1SCH5eWvQ7W/qmSF4YVvBB1t7LXslRTlDgtXyXCJmpqUyoOKe1hza8kHg7CerDJGzKoCI1CIGiglq0Hewx7McRHyj314GnKRj2HGSTZLEe/pBQ5sP9M6wQgNV0QFntkaVVVQD/AoOaoDj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ462MSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ462MSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768932833;
	bh=JtgFlz2se5ClHt9xxFEcHdZz4IMBxrQK4QsqQiqW0i4=;
	h=To:Subject:From:Date:From;
	b=jZ462MSHdl5ve3PdZ+GTvrU4KEEDJS3xdfwmv0Qg1liAMyQa/C+JI7FuGTkCYL/rL
	 pi+sOXwaGrmhfJFSXTa+JVPi64lFSUNra43H4NAN123RJUn8eiqvVNFdZSR0B4ci7M
	 suzNUgXiCNOofUMJhDiCLneLLLENOhmreskCvXpGtO/BzWBa7Tej0Z4YeuJBlHOyMB
	 8pLdX3vJQbsvnPBdqZ5VopuS2QjIXji5wmaI8ZvkI03qkm09OQ+ZZV+gF8yLlXbc/m
	 QbCvVYoqrC0/flGp+f3vTlMVOIKED7YW03kQRgDtQH9sx2K6XaY4qjawfdImTHzgW8
	 eqeNlnj7wobTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A32CA5FB8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893283358.7425.6018871256752858161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288cae8ece8577ba260cf39aecfe5afe679aeecedeb99a219ee52c6516b4fe1f
Date: Tue, 20 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768932833
