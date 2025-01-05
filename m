Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D53647
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736043954; cv=none; b=couwwW+tDwkVnf/L/VpgbJUK2wC4eOX7ZkQRjOPHZjexl7gRUgPhUbrpyGe8mpyHQVNKz8KAuoaZb+8lvwSGD5FGBjObKQ0mmJZhFLaAH6dsFUEgH6PA6rh67L9ichYH26YBaL4TnYfveiS9GpGBwFkQI0xirRHp4AcRlYU2zdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736043954; c=relaxed/simple;
	bh=JzL4ATbFl6T57rzaAKHTt40cxwKbY9gG1kIYotI2SQ8=;
	h=To:Subject:From:Message-Id:Date; b=BBkmJ8jffkOehEWQKDUI59RXk0w9wExd25SwbjzW2k6BVm9XCIiGvMbHZCocPeGMBS8KKKB8wnwat/WcpGU0gJGgJqza7i2yEUdDgYMRkenEGaNSUmBSAs8v/diAzRJxMT/72ir0O9v9gVRXD8wAnCHA/laEBV2XUo/JDW8QvB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0EIbsWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0EIbsWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63BFC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736043953;
	bh=JzL4ATbFl6T57rzaAKHTt40cxwKbY9gG1kIYotI2SQ8=;
	h=To:Subject:From:Date:From;
	b=i0EIbsWeYuAmkq4S2R+rtIgoqpOlVy+wy1dgtR2RBWthPU22rb/vfrj7hhbgWvL4l
	 I+4HWpFvauCpZn5nz07DOgozH5OsmjuggtnmIfWtN47OEFbetRk/onJCmyn/8NpIay
	 /FVklHR26Ch7b7XHVzgp2X1LE14zJIjhaW3uMsrIsNCc1UtuXw4OOZfuV8xQE418Rv
	 slL7DHNRwKu1DlnHmuVUkh0/8Nj3KQGQRQZd7sLlNVHhGvkDMOkiv/wrksbL7ExwwL
	 Iwt0VIeKPJumBR11TMzdxECRzwexWoNatvZwXQt6QYzq4afnGyb9OHkv16WFwFp9fd
	 zKiXKQgUzAo0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F39E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604395358.11586.17225491714921397974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83362fb58d5263858f58e6a82af109937dd38edce208f9698cdcefebc6fcad73
Date: Sun, 05 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736043953
