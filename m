Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F841DE4CD
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767495234; cv=none; b=RfXRUPW3JxqH368uEWCF/LRfeCecmeMv70sQ6kOTf++o0sZAcfwYSeYySBiD1Tm4/+AuNI8HrOfULv9WYXiPlfqpSuJXfUI7Bj3BOzULOXMOf9e4CqKGqnZBFStQquNfUge/XaTczNZId4/2o57TWflPDhY+s36RkhMpw3SoRmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767495234; c=relaxed/simple;
	bh=bd32TbE7Wb6kTjzsYAalJt8fhFh32RF4UNIHusVVj0k=;
	h=To:Subject:From:Message-Id:Date; b=HnW9a6Q0s3kskUpJZLasxmdQ4Aw7iBEniVG90Q9eaVwOv6pNG8uLUZwyWgGA2hbF87PtZD64f2+7lvN2YQbY7ruvNC5mc1BqwOtrv4TAHjQRCLHYRLGxSvXWf2Qh0z4pcvFVM53M5xVBlNfRpMcOXhUjAqmeBp2w5cfNy5ez8gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH5uxlmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH5uxlmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F4BC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767495233;
	bh=bd32TbE7Wb6kTjzsYAalJt8fhFh32RF4UNIHusVVj0k=;
	h=To:Subject:From:Date:From;
	b=WH5uxlmm6QjnNzQf+d1IGV+AacvwA+YbmCp6z3c8yz/27TNRwEXC85hgYlINzZGrH
	 crQrF9PeysgvzeFJmXw5Ln/B23++XokXeMyej5s2cEsxicIQ5FRYBdkdwWbXe17gHz
	 vr/KEJ3TnTxyN5bwV5C4UDNyUXE6uUTYD5/zZbvPW0Hx+D9BSUxjlj6d2+IrD98DGw
	 sbhsjgYKdfir7NcvgJy7uhcBy6GXfm1gLwFBG+e9y8BjtywnttklW6u7Pu0oOFnW11
	 kQUeRRjtvhci05Ceq9+BuFyzZBQElUglFTJqe9Yj9XqP9ThgQzWducsQpvRScvNeZj
	 0NpKzwI0BQBSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9EC2A06E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749523357.30835.11693724744661069610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b512b1fa5137e2632ffc83be4f48fe341cc0d6449385ad20b5950706c616fe48
Date: Sun, 04 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767495233
