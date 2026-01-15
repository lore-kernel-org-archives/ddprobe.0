Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0854929A9C9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502034; cv=none; b=lZPnQKLdruHtFCL1A2zaXJ4R7OAmlGWx7buwWizG/hRMy/tq5s9gwqwQuIbDMKnvLb4dBflHEWRZ1Txfsbj3nM9GAZX7Gfj/3fSuZDMDyZ/S9OEjdi1kIQ8boNLypJjxlEvErXp5hUIplw0nzO2aQWhjixOaScvvLGUyzoIcZpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502034; c=relaxed/simple;
	bh=sBHAYbHhhX7mixHWNnK1qpIwiHb6L9i2wifO4y7Ukp4=;
	h=To:Subject:From:Message-Id:Date; b=pAxViD28eVrKXoDbPFVUrF0dRVooPH6/PKfW6AvC4TL/N5hxdMtmr4ZrYgvuH+oCR0/Tb5ZoUj/O4Px0Q84kZx+5oqAsXhMUQ7HQ28VHc0CXcuQou/MRZ6LRvhMlrT9mCzNQ933xCE7cjLG3TrDEgGXCFlCt2E/Gkp0PxZ4vndc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqeQQf7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqeQQf7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E197C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768502033;
	bh=sBHAYbHhhX7mixHWNnK1qpIwiHb6L9i2wifO4y7Ukp4=;
	h=To:Subject:From:Date:From;
	b=oqeQQf7mv6aS78Z1M5S7lw79mcS1h52bmfFvLyaSYDsVHZYCLewxjU6eRLk7Cj9Hv
	 421KFK4h5B3mmha4T/llLdO59gtpfizYEmXXZ3pSIAvYtOvwAadBsNrzYEPQGqgViM
	 sgmiRxYQKfZNF0pnJULBX5kx/BEp9g9MD8k0qP1e6l1oyCZzNg0uMeCA/qZ1QAq3oh
	 +cmmf2PDrI70rA8b7mCD9BFCbm7WiBQ9Dk21WKoQRYChB3DYT72hzdnksy/aexA4J8
	 gp0YfXtySSAWqYRzz1zOS2iOLJsrTFc5hSdgbqTs7jxWeB3rPr+U5T2EwwIFDsdvUi
	 QHnnfZ+E/p3Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F7D46606
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850203358.17030.15972702827584911244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c50fcdbfed71e794036ae2b86feb8e46b70b1d9f90e70d3a9f59f42ae742735d
Date: Thu, 15 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768502033
