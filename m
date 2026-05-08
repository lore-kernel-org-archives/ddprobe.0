Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2154E31F9BE
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778228254; cv=none; b=cZjZvqI/oLxb2edLCbxqgGErwq2IUGwaFs8ws6gl61vX0JXkMtthBXMlA326GObPBqngK0r4QpjXkvldmzmiyGhy23f7g2gsZIuekSEpIrpWX4WWoohnDJC/OP0rqtAHUQtpdVVNM9bo94lLjWObdBQ65ZMmzTJ+m+ZBeIBtAdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778228254; c=relaxed/simple;
	bh=XmjDVglcE6KRxPJh+DOnyFbRgt2grSGw1Kc91O9j1C8=;
	h=To:Subject:From:Message-Id:Date; b=NrQ1wDrg47/+GP+GJsmBNorzRpXXHX9ZVyknQ7ejkrTt6WrJeolrDh0+4oSoN6LbM0pwUvbvRxl4c056HvbpC7AGyFQ5k6eVqFLxOLk4B9/U4wdZeGaKjA+slQINIa1jzbkr6e3iKBboyy2IUkOwS1Ez9enAV87HEQNEbhYY0P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFcmLw0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFcmLw0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFFEC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778228253;
	bh=XmjDVglcE6KRxPJh+DOnyFbRgt2grSGw1Kc91O9j1C8=;
	h=To:Subject:From:Date:From;
	b=VFcmLw0/b0LKMW82+sMdWZywVSmFUzWSaWiRgj319uC+DtcFHiZIwzfytUBqbLjCl
	 6d3qDl/ABP3F9TzaGjsbBH5TsqQuulNkOvaQYP2dfupThZeXkAiOUdGumgWD3b+Z70
	 +1u0PvIwhYyqG0PgHjq0x/LRUm7QDNw/HQS6M4VLa1+uFzYWlOLzDJ12ZdQIR+32Q1
	 /nuXlr+fCs4ZrMCzFI0Mznubtiu7IoMdMaNMYCXm5KUbMZJk3goldoXtt5II3oYadt
	 oxMXTMjT8mA/6CpTLFuTb/IFaxcNFXSRb2UEQVPraVgz4xskVr+FSTO7y7PDTzrzjU
	 dKr07OHW6518A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC835CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822825369.7140.17468311125042779843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a7a056925a35fb82a20565f3653d532d88e75b5d2e422c6b3db5edd65f2ae5
Date: Fri, 08 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778228253
