Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEDF1B6CF1
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741649333; cv=none; b=tqzAJf/cbSK1qfdbfRFKKLNnVoAbIkV7FXWdsrTm7bDTVtHXSYihC9N/XWWsf6jfr5u3oy+tuGQKOdXCkfDNkmLrcAprp5oi/dfjME0rCJdvDiP45wQ5wmqM7f2vxyyJRZdu17N5lrk4yRd5xr7Y5KAy23i6MLfffGvjE5wde1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741649333; c=relaxed/simple;
	bh=Onk90MGbwVdDwiUwxy5MJsvfrehhvy7inuNdvrpUh40=;
	h=To:Subject:From:Message-Id:Date; b=LMOMfYUNUf5y22uak0HnEXOg5rs6xYhV4TTAuCeuB56QHVt2z+gpWRmmZDM5BpqP25MtsPDcUZMelPgi4SfZetppEbYyBxI9rJvuzt44XCnpgBQR1JPXe0PqpGKhp0twqTmXNJg/yfDX/Rd9XyXITU5i7CVmS5d2/fdTM7pGW2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cm7eQUTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cm7eQUTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B8C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741649333;
	bh=Onk90MGbwVdDwiUwxy5MJsvfrehhvy7inuNdvrpUh40=;
	h=To:Subject:From:Date:From;
	b=Cm7eQUTDLilrHCWEX2yVrxRePF0x84y0/bMwFSQUaPmrvSbm4X0sJWL+J/bei+VGK
	 +NanHL9C9vQQfjNn94o+UR1dUCzfoZFk/iHaHni0OmaMKGjaub+5VPHyxGq3o+COnt
	 jIM3hDQnmyewDOfVGcHLAlbh8Dj0AhhVq/Y1hnAvVA37GZMiCmGwwjKqV1wbaq5Q3/
	 uWc8cXNRT/TIeGpqZXsosb9cvXW6HVqSMGhtJNl7OX1vAa3bWscgjJXwaV0i5eGtGA
	 f8xSitludLmQXSkmKRMb1p4vNoPFr0dQzIvnrgwtFoxGcW4ouQ36u7PCuinoUugKiz
	 9DcLpvnm+y8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABEC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174164933359.26263.7154970911238983367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfc6e2e42d8ee59bff06e819d133a2b178aaab38503adece2294783abc8b692
Date: Mon, 10 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741649333
