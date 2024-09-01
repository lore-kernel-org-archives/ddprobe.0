Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE561448D9
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725194154; cv=none; b=QDpl86ebSXXsJtqmwNwfqeJeBlr6KAkxyCkvh4IbQUUJow6c8JYukTlkSjHcyg4eUQXKNnCzpOdmlD+skWDIT9ujKXMsUyb3FwRWmsVTyYs83wD9XO0jLyFGEKxmn7sjIdxj9OHqFlqAte7GYsvNEmlHeGREaGPtfHh+gx71e2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725194154; c=relaxed/simple;
	bh=0rjY1okh4yBiKQS1GfyXlxE+V8N7B9jDS4f+F20USOc=;
	h=To:Subject:From:Message-Id:Date; b=bhbI1nUlFF6sTQZBrs5hf+u8DCS2QjamzVyOMVyYnFLZrtj9/3UBX4bNtF3an+lfb1pfP3ILeh5bq6iAkd+sJemRHpJjTsjXRXzlt8SKBLhHM7Lp95ZUsMC6ZLC8O/mGwUGRT9WcVsJ8o7oD8pzxVdDhK3dk6R8UEZDyBNBkusQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+eHMFI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+eHMFI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A899BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725194153;
	bh=0rjY1okh4yBiKQS1GfyXlxE+V8N7B9jDS4f+F20USOc=;
	h=To:Subject:From:Date:From;
	b=u+eHMFI0pdtkPNbDqTG64VFPyPuhWCmtNTWOOzYW13xy6Je3nLejDNwWKQLMU2nTb
	 smfCmSkIxo19MFp73mdjPMKDvelzKRAI7lXzuTQitkWdKJv4wvHJMK6F1LNDbqd/OP
	 kTl18DNaOyOmJVlqw9s0D88qlJNrdLY5XPZ2VOjvU+jWvSAZGHaR2GjGrz2v/Vl5EW
	 0p4Ac65U8655LDn6zTohCW/onNhDokwjpm+5JxaCKcFCbMI2tqbsqpe/D9Bye83PNJ
	 obT7NfEtU0wrwLxCsdh5A4RVSzPFlAxQPZ+CR1ThWlCRx3i68zHQP2xZNqNjHUzc30
	 QiXhQyNYTfPWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94766CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172519415360.28962.10321835470459429718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2355bdf7712f92249703485375efefade9e7c6b223d30d07b591cf5e743d5466
Date: Sun, 01 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725194153
