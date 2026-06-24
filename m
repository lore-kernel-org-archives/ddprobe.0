Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7C63812FB
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782289594; cv=none; b=k6PIcNCc4urvyEt+FncO00H2yUDnHJzunIPy0gU71k+f3eyyxVHK5C6RuGNdIEjsYD2tjFyOv2eIR5jDuD0kfWiErFWGUy5yhKhAS/4TVCW73r3gCIBmHeTf76Ye/nK1hOZ5y9bDTp7KRQ0i/pz4vcA345tb08dDgitKPQ31zTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782289594; c=relaxed/simple;
	bh=fObWvC07DEEnF089rdNAnOhJxR2T6SA6ZCrQqGC/NNw=;
	h=To:Subject:From:Message-Id:Date; b=RgSiRz4RSUS9uIj9SQv64AuVkDTaw1UvyyS3Xwt2IaPaybL2FlgEC0Y919hPzYE35qhFwT1s21HDCaRkUAJoQB+trYU3kfvfJI8bQmidUdObIyrELpbRHRuFq5VpRFWQs5XfKttnEeXH0I0k5RPclvA6PcWZiIy+9y86zXdXIYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUnJFnkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUnJFnkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF268C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782289593;
	bh=fObWvC07DEEnF089rdNAnOhJxR2T6SA6ZCrQqGC/NNw=;
	h=To:Subject:From:Date:From;
	b=jUnJFnkqph9qLClOObcdBs5JIMDlgkM8xjzNlD+Zs7IL03db3rS7UPyhQNcAwYVl4
	 xBYTUWEpNhTI3TUXYWTvsoWehOxyijFskMqz2nOio+FgBpt6cjCtQrmNQHSp4FqzdR
	 ZO2SQf2XUVPkpxgdwFJjXhxj5O8h74obw0ityvMviIV4RKESN1EtrPOZhyGUWed7h/
	 raqAKcPzfCdXv24m2XSCU9vtp/ht4oRtqeNNF5O0WGN1pMgdKw7r89zMZqmUjI66bY
	 L9HLRy3T5cD4pKy0JFykALZcBxYzXukphq1TTcsKq/StX2Iehx9Ke9ZYHPku/Bcy7G
	 kCA/2SUZIOPuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6715CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228959373.3685.16249701449189458215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98aa1de9c388a6754018e1401e9b3bfb7e80e261b078d0e768e9f3a208661290
Date: Wed, 24 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782289593
