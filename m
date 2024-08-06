Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1D238382
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722958554; cv=none; b=H1qUw6ais7rauFZHuhPCX+nDmV5xS4Nh9JBque0k5rSebxLv4JN3pqY93I8eDD2YWN8mrLLK1x5GujR5AzEsADVXngGayEz6i4OIH2ruyB+569Sl42qBV6F5OA0rjiwIfXy/QWurNIrxf4CZUgDcJFOb8ym8glZo7cfnFOcIGEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722958554; c=relaxed/simple;
	bh=SX2uszjZZxxG9WUtd969K46NUdMxPlxkErSlyir+ZaA=;
	h=To:Subject:From:Message-Id:Date; b=UbTzhrATTVIIGEFCOlRfbMkvbKOSt8yk4LVSw6yU5xjtIwgeU9lf0tmxLnJgfS/e7iCXGikVmFFUcuTVJrcUa4njZ7OSW0CF6kUfMxdF3L4m/n+Z3rnYIXUk5GeVPyHCaNXwe5VLwMogEpDrLr5QXETbJiKGFtTSj3esPRyOhD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxgpPgkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxgpPgkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C094EC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722958553;
	bh=SX2uszjZZxxG9WUtd969K46NUdMxPlxkErSlyir+ZaA=;
	h=To:Subject:From:Date:From;
	b=QxgpPgkHs+6BMqoMUFtNTK/O+/9B4b2Z72gKQXkBNGQii/HLoEDVlQyINNVGhIT7v
	 9MRAF5/Es6Ff5g0SoBUlXY5eDWcy7VWbv6rJH5rs4LvUaGt9MRbjFqkW8qT/THHkED
	 TE2hLQef6pSe3H6VjRxQcBNPpWJuXPoIbIo9QdOxRKvwe2wUvB+syK4Fp6m5uclcDm
	 uQEX3fa/+pYv9OtObDdtrJVg5kCCFsc5g9hlKivXbk240qAr/LywZnQWfZBRxb2Daf
	 yogyN5JmPXfruwXEXS9NriSRORVwFlmPAlW9gWc2E5DgMijIPiqhh5CJztPNVT1V9a
	 zIf0Ve6ZBwHew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2487C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172295855361.8262.214089342962931244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab3d3b60ac15f4947d11bae05f03434d3f9374a761e73561cdbc64b6cf69f167
Date: Tue, 06 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722958553
