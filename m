Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FD9566A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722818154; cv=none; b=og9QgEg63LlvW9t82gke1AnJGmXKILji9AR+p/6jJPNsBF1Kz0b4TvBztXxpA1y2QtrTqYQT0K81aAIonBRpavUUxWc9GNXRCgI9vldaDhF0d5EZ1CULc+VfwjnIySzsbU1baogRi/uXj+05T0svtwbkb857ATok5g4gX2rjQeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722818154; c=relaxed/simple;
	bh=XFwzIZ+DkT98BXVf2XNZjWFDPbW7VElDgUvlspY+QWA=;
	h=To:Subject:From:Message-Id:Date; b=QWyXinr6DvBw+nffZmZGk29/p2u7aA5Vtdexh7D8I7uS9EaEKCCqr9YrRI7p998Vcv3da+VYO7U3zHrEDGNVb555SSsgkzNdaOpMoEmcn/uuTyoUAslEPNA074urH0wgxTpoKbUf7fTCngwPf1BEl1eHN1VGf3JAcIPmaG4REiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLDQ9ker; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLDQ9ker"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEADAC32786
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722818153;
	bh=XFwzIZ+DkT98BXVf2XNZjWFDPbW7VElDgUvlspY+QWA=;
	h=To:Subject:From:Date:From;
	b=aLDQ9kerrKxguNlt/HR10JZiZ3sbskeCyWVD7qTVS4me2WZbW6esktdJE3cvCe7B6
	 jKyCNsuSvSd13n81GCkn5tm7KEIU7kUoYyLNqZg4ZiuxtoxS3AeXW6VhYb61yOsqql
	 +NLxoBiWTOdrSQcnWi2I91kOFE2YZloCMGixOZvLDjdiOLwNAz1MKogIenVOJnpzng
	 dpQ3G/Vl4gMb6tnNiA/UxONw85455tUxnQIj6b4TibHcp6r4EwJC5UZ3vdMHLkcNJU
	 nhGLMxB3WKlCGFo6A+WjeFdXGv5jehKMChtN/xAhU7nKzY8bwiEZGnoyvAA85VWIkD
	 yophCGT6zmoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9961FC3DA64
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281815360.18440.6455431378503234690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab3d8c7ed814d237ad14377866be7ebab94647374018f7c89aa36d6aa77904c
Date: Mon, 05 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722818153
