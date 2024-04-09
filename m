Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57112FF80
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712672897; cv=none; b=pOx4ExFON1tnylfGuthj75cerMfM1w+eMqqwLbc39HkOL7xsmZjq5oVTlHr40fR+BLPuvtaxmS0i9xY5ntGil5DAUC6bHGSf+6zcqKyosTd31X98rZrEKiaj88JlhfdJyBl/29XESR38bCKquK5c0+2A4xGL3K8UEOiZsIDjPBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712672897; c=relaxed/simple;
	bh=lnpRDLsOZSPMr3/7qPCQwTL2UPXZjhIrKA9J8xMU5nw=;
	h=To:Subject:From:Message-Id:Date; b=CxGzcqLMRL54SHzOwcnA2aHii8NzBvr9Qot06xh1nYYkM/yP/SDg1GU+JvnVcAfORlCGFDpHkzn+PPPtzGnzJFB39S1BBL/xRcRmhfy6y+AoSKHT+MPd4g8JAe5tsEF000JC7dxBdNpxwZYwEQfK6+4OUPPUf98w8VPDTI6/vzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVu1GFI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVu1GFI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94F24C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712672896;
	bh=lnpRDLsOZSPMr3/7qPCQwTL2UPXZjhIrKA9J8xMU5nw=;
	h=To:Subject:From:Date:From;
	b=BVu1GFI3fegJYei0Z3k5ua0oD8LJ7mHwnLH8LaBYvKPUWeFHz7HSSzjbVbfTxBSLT
	 6uXFgcEXKW57qapjN5bgho7EDr1GGDUeUGpOg7HUo7yHEAHU+6df7ZM0ujouRlEUbv
	 e1AASFATC40YC9w4kzrg+Woou9bTKVNbpkFS/EP0mbioBGU7ZlJFhYBcB2IzkMlgX1
	 AkFkqUkjkQzmI1zZ3qnxwyYInB4Pba0VaPI81JkMyIgFxuIejwwiM9NeM5iIzVQENm
	 j2K8XDtnVfhLTG1x1s/PrMXviNAsEjyhS2OGhmq+vNV4LZuoZjNxDgKiSOwazY/s10
	 DUimGIdBiOwPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A1FC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171267289640.4686.13464532032086881570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaf62e608905d9ab7f4dcc4036306031f841c52f4668e90a7e4024ae66a7ad7
Date: Tue, 09 Apr 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712672896
