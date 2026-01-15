Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17E836A03A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768473233; cv=none; b=FvcePOnTk2tqlLUOGOM4O9RAvj3OcHeJa6UXQtKAnJTehDCM39eNY8FzX8Cr9p8IYon+1Q/lLOkRoy/vWOBZnWYbBkoTardtTfmLf9aEAn370mKYqshBRRtSRjF5Z68a4eg2/ob5533kjuth+bzBqlC7xhchz4rVCgBdTnj4HZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768473233; c=relaxed/simple;
	bh=fpzsn40hHzlmA5KQj+GhTI3jjbMiZevRlVAOkfC6MDM=;
	h=To:Subject:From:Message-Id:Date; b=CYcjpgnabLMjs8vkwI7QHLasrnEPsdo5cqsOPyP/cOD3LUlQbeaadwIX4l2avGPxx9oI/HooaCInGKsP4aKy4mPUU5mxt1NJIi53cLfJGpCDtOIgU2sxoJ0doe9UBpkc56IU4aSf4nvBEAvzqf0Bq4gD7bnwG8n/i7rD2RtMfQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8U+C4s2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8U+C4s2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E405C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768473233;
	bh=fpzsn40hHzlmA5KQj+GhTI3jjbMiZevRlVAOkfC6MDM=;
	h=To:Subject:From:Date:From;
	b=Y8U+C4s2phGas1dUiGMMJxHEB5WchNcwLjnwUN8pas30MywEek/QL2yNSeF0bSDQR
	 nC7RW6gAibDlTzDreUiL8xTES6/8b2hAAxh3HVnv1oYbz4fyfTK8AmX1kK/1GkVXfc
	 qUWq5ngUOKvw5Lb89pwPRz1P0gRtT7NYbdLQAAsh/KtvbMT83uQLLmqI+JvFD/NgoA
	 LsbEeVgq971VYph43c7EB7Bdg/LiEeevPrZFgH3udIS1JpH/3zIRClQ+RvShwVH538
	 xewLf1MUfEr1okDaf+47BjJsAv8JNK7wulUrRacXPXusfy2KBWgnmZoG1/g4nzF5yX
	 SMrfu3GXiNOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F39D41164
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847323357.10522.10613173347413157252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebfb6e73a745c573cb221c76df5f5728d0eb83710a88ea46a6ba3b062648eb6
Date: Thu, 15 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768473233
