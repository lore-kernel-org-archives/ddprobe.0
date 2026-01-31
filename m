Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0646C31ED88
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769836434; cv=none; b=chtDzMFYRLrR/VgQLX8n1TDh7YwFA7XusmGNybbBN8KyaXcIFHQr6dEmySvbXT/diCbbckstjTmTewAqxT/CbGyBVaaKgGiBIcjfdgKTd4jIjPPc5I+5zeg1GbToZBuUNZduXD3dcnTNgzuNxtPzJk5yNr6mjN/TDqP2x/SK930=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769836434; c=relaxed/simple;
	bh=ikryd9TA70NiBkeC5r0tnyyMgBIOxuXyKJzyOT4X7O0=;
	h=To:Subject:From:Message-Id:Date; b=mWFhds4lwdfIVl1uYkYUT3goCROsSxBF+EUAMLsfLf0a0ncvCR0iPJWF8fBp8xBC8DRRwPyNb7zzrHsBHL7y9XnN6aaZjR61yQt9s7uKNcgDHzuL0D+74gI01AbYfZeBeiJ6Z7Uq9kaUF0ckDR418hHNt2v60Mkg9VQ00ZDtOes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkxeDkiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkxeDkiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C85C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769836433;
	bh=ikryd9TA70NiBkeC5r0tnyyMgBIOxuXyKJzyOT4X7O0=;
	h=To:Subject:From:Date:From;
	b=UkxeDkiJTTA6E8M23HovhV81ygskbSYVjtrpQs14dZQEBajTXGx7FJ/Wrn+OxLmaZ
	 r6w2nz39YBG8bM8FKM29Ip2cxTg+d8tfeFwfcQtsstXc0MrmT1CLi9vFJfiSjOPMiR
	 XM4gh8KWVvwkhe9VIWOkciyBb2kA8XwQ6o8KJoew3xzXqH4YrQHYXjNaWCAzKd66BE
	 tTtFaHxhWZAWCy00t6UJWHIJac/M6Gf/L3TpLNRRoFceDgAlmtAWwWYXsg1xiYXJBa
	 vGpaD76nqZmGk3dGajVZrlzND5/DOfLLQEjMgshJk/F0YtgChlnL3sY9bs9m1JtrUh
	 S3quhmY2/d2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4CE6BF13
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983643358.12077.17507826878349983116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d29b0e2589a8c1e788102f3ed33c594707832487b36564c1416239aaf8439d
Date: Sat, 31 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769836433
