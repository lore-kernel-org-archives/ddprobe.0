Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388B71A239D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753571994; cv=none; b=Seadz5/SyPknZBFi/eiuZSSfiFF2iGIv2xuDCQxU06kxRPfrL0taEHBAolHpmAmVvXKxut/IV6Xg0HkEDbP/KdKYikDZAQ71AGPZx6VDYp65LrGgtc+iB4MuvMonWn3ZAw+4skOObZO+iq9L9LBbeQEwMJk732R8DRBP/Qn9KWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753571994; c=relaxed/simple;
	bh=SN/PAt7CrVQYrUraTgzG0gxmXLmiU+VVfjBxJmBX79Q=;
	h=To:Subject:From:Message-Id:Date; b=Vzu9qIEejfT8NWV09wIXoJI2pigWscYSyWz0F1Oyt7xkjJbYZzg2D7VWF0HlQENLYtLpKvyn0i1ZzKTwdbt2ZCWLLOwzGpkvSWtn026OxCGB7nlUvypT3Ws+wZyrUn2fc0TAEfcfS/p4rylrkYGW3LD6A8P/2d0ry7HsbL65LTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icvbNX9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icvbNX9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A114FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753571993;
	bh=SN/PAt7CrVQYrUraTgzG0gxmXLmiU+VVfjBxJmBX79Q=;
	h=To:Subject:From:Date:From;
	b=icvbNX9IG1Ba0o+CekQJ2m6PwbZ42hMdMKWoxshsg6UQ7OjxyzlUWhBilINcLfYyd
	 oWchiz/dSt3PTG/4k5g9rq9M67UZmgbJNljwEajL2ape/jvOzI6bTuPA60ZwLjYeKi
	 /ZJZERQ98ErYw8pTnnMyejwFPZTGCBXESg93hWoVw8qr9WjejKEAPcso+qtbtnxb16
	 MEN5YdVJlRuP3gNdDTQ3V3Gb+fOzYuMuCzGvo4rJCGrN1ryul6i87GkCEAzrAOiW5y
	 N/YT8voClBleZz7RjipKbIpPXGHcCYI+43Jbl5A95wFw0gViSwtb4UfjQnrnhNeUjA
	 6q2QmGWQ/ubWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D8C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357199358.3891.5166806749562623282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a492ac6a75e78a8a9d6e9646c6a11888d006ce8df0dd474def978ce034e29ff6
Date: Sat, 26 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753571993
