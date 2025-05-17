Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41311188734
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747483794; cv=none; b=g2EkQvMa8FH2TMbmDrNDM17BNHajGoUTvEI4oxS1GQ6ku+P0TnDcLg5g6RIfQw8S3MD9WBG/1eKaWxgHXdMsLIKN8RzoMdQQ42Kb10RBbmHHMiiYvXLEOvy+tcH5fr7SLkaN25GeNn9K0x1L003AUBKqH41HUUN6My6TkpxQ7TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747483794; c=relaxed/simple;
	bh=BO0uZFYvCLQPIitCji4JsS3QskFZvK+G1/Lgrmi6WUc=;
	h=To:Subject:From:Message-Id:Date; b=T3gDYboRz7UnBAGAaNdLzuvWC1oZ4IX05Xr+Q1DpDB8nbKWfPsICcn5GjGm1SsLNJirP13sjqo0Ov/p2dERUpXgpNXrWeBuYwNOwmHCnw5T4b63Ivi1WkugrKLU/4Brn5wZuxKZ9ZNwzJxiAj+7q4UcnbeCbeA643LlQbsNB8UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdFN9yf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdFN9yf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8191C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747483793;
	bh=BO0uZFYvCLQPIitCji4JsS3QskFZvK+G1/Lgrmi6WUc=;
	h=To:Subject:From:Date:From;
	b=FdFN9yf6hESDMmlJildssOsThRgxf3M25r7LhehgGaXWYRl+2m+jXI1kAvpkpIsCH
	 oqvkq3WxGXF2DKC5JUsLouOPDi6qAx80kWBDKTEeMy/DhTXJv4iQtvcRm432RTevGN
	 bQucP2pHub5i86QDCQ46u9oEYnojRpZ7N7BjdE0YkAQRmdN2oUZaH+J+yf4apGVSQ9
	 XndOU9t+gzDZK9aYOKWbyHGtfJN9RTCsgYbGsnvc1Ze9d003ZLD1DC100n9qkLS1W7
	 g3etUITurUFab/y09tWWg28CD/fSXsfv6SZt0jPSCO2K5OQMzzjmLkTu3XUAJcYBU+
	 TqD8zRvYFhaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9417CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748379357.4476.12142616193737279524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a0b3afa4aef76d7f9f9b162e3e12dc7f3090fc61cd0778a9643d60de33987d
Date: Sat, 17 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747483793
