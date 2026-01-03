Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A8F1B0F19
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767449634; cv=none; b=HFz2QK2cQJZDwllXCmNBBtJabj7SFDeLIT++tPdV+eHqfg8XV6LuYpXGoGJMnuqeO9eSN4d8ta1YeohQ+v2wHy+oZdqTKMd/UVKLxHXN+t459FTeSaUxlWbiekBFhqSYefI8XMUZoaUg4QvU9/RKl/COsf42FybuWqkUIbztYx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767449634; c=relaxed/simple;
	bh=buyXbnpcEdhAaRG3EfSMrqhk4hEiySWCaT7goAQ91oY=;
	h=To:Subject:From:Message-Id:Date; b=aKrDqeb0y+pv8ongaUIVBNHONttGQVPikdfojJuSGzclS8aGBQ8W1suxuOGk8kvPfBnhSj5D6ho5kd0ftye5kKFQgGQT8X+OFJ0StzDcDT7lOXF8uKkqS9bJxS4CwoAEX7aBYhiIyVjnECn1V/8d8qxPcJpAC9LTNFDcMcM9SVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVxYc3Cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVxYc3Cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF07C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767449633;
	bh=buyXbnpcEdhAaRG3EfSMrqhk4hEiySWCaT7goAQ91oY=;
	h=To:Subject:From:Date:From;
	b=qVxYc3Cghl0ghktVpCMKsCqHvrwjqsdB8b9NuO2KRFi+KujBlILH6gPoIo+4aBqAd
	 cDqU5bi5utx6MIdC/KMhjVabp3+R7H8o/9Y3O7TOgXdRe81KXE13kkIfEXoKQA3XAy
	 7qhFT8dXYHWvuD6G6vvegGXfJl4aWk4TFIXMV808mNcCH5s8Ka1q24qOQtvNvugQxn
	 /a9X9Ka3ttL3yXvEniy+UhtmusxcQnBXRXhFGSk83t20lrQ+llSgBPOSFA8cDYEg41
	 YeGLCOAx+8I3wBPOJjulIUVLLrTrvyqFaDR9eg2+PaRCff8mdfiN0Iem3l6QrxA+dH
	 IS7HGs5E8LOtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E314FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744963357.7526.16564225407322899006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740946430e67bd274576134e5ee278cdb3d7eee8b855b6ee3e37ff7405b45a18
Date: Sat, 03 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767449633
