Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8CDD2FB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745693394; cv=none; b=f01m4oRwabztIkIbWJhXrTe3cs2zMJe9icL9uf+FNhQLUg2yDmf3fmhGV7gtxibDVtUYRbDKG9PSkeAMWZh354a/43eo4ckzWqNaNpP1m3RZfcfe2LyxX1nv/M6jKS/ji7WoMeaHMtHa80pOlQr4oVpwN54MejpvXrUp7VpO1lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745693394; c=relaxed/simple;
	bh=7LGgblYJi0za9JuZd6B2lK56YAwjM4Fsst7nhtKcgyY=;
	h=To:Subject:From:Message-Id:Date; b=N+uzCTJSa0mEyS1XJRXT4LfgQq+EkpIqayaCq5kBWk4calKxAlfssfZbjqBTtS2fKZiXaC9krxUU/wkdUBEAMzqjFLv94i6Nc8RhdLW+b7ET+BFwMB7BscUjRiMd6QIzG2SBOaADr3h4uLN6iEUXO3ruuvX76T7YVtos+p+3dbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYXf+npe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYXf+npe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8215C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745693393;
	bh=7LGgblYJi0za9JuZd6B2lK56YAwjM4Fsst7nhtKcgyY=;
	h=To:Subject:From:Date:From;
	b=eYXf+npeJ641WGAK6da/wWgscWj0Qe1DA+8Iz9xVy7tPPcqP73HNW0XtaDCyAj9Lt
	 0eBtEonj6jOzw4C7ZUAqOloUwBERfZzCWc7VYcSt2ck4LEZUzqTbRXlNoDrjceoBF5
	 k424sLue9PLdADrYg0hScJ7G1DK9aajz6DgNwM06GmyP3Noekghw07N7sZwZU2dteJ
	 0zQjO25zoF2/TRK+DDqpgedrcLQcOUvTmBdw51j5A2RmDheIvdVoAhtSAot+cUaODl
	 TaLTI3sh1hXNY4y2vsVPlrTSR6hu8kYk1X7hMbO1pdzPqrkNnW+UiCC4PbAQVes0xU
	 F3ZPgLI8MRwtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94020C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569339357.23828.13696802771118636243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84aeed76cb6a30f3f55cda74e9e38bf58efd90967481545324a00a48391cfdba
Date: Sat, 26 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745693393
