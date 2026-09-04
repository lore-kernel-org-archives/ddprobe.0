Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421F83D9029
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788497434; cv=none; b=eaXH2ggNxWUBY/akhwTrDbS7E1G4l6zARYmhIzo7UANKurEH05HqjvHnZJReN1lb/bUeMBvz7faRRN2CwZbq/uUPSLum+frTXpIw4IZ/EzQca1Sz+r+vrcfLSkgR4xdjfyjki3t7L+sPfaUTP3XBMROMfw7M/wQBYK5CvO2uhSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788497434; c=relaxed/simple;
	bh=cP14wxjKe5vZNhJwikZs61ALNqcdFSIzlqoSG8zChDI=;
	h=To:Subject:From:Message-Id:Date; b=db1pH46WPiabq3UGi4SZ5rCxzX2zdg7XbxQcwSIj4tzqOu3xJHDPfoyI1roJaxp6g4CHDEmJqbzkA48P4dBtkTrEPctLgNV94bOyjDAM/msRLmWU36uCDzpEpu0uhbDYgFxiga5jTI71YyeKZZRvR9lQegSxAbQG8l/k12Mp1b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQ+ucDJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQ+ucDJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DECC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788497433;
	bh=cP14wxjKe5vZNhJwikZs61ALNqcdFSIzlqoSG8zChDI=;
	h=To:Subject:From:Date:From;
	b=rQ+ucDJV53TReavkhXCzTHqBf93XIPZh+gPIsrcRg9ju68URHeIMN7++cspNmVNKO
	 qS+2HFceNmnERZdEKLS3+lA0dJcTH46OzPnRAXJlXUJQSrCIDgRgDkeuWjVte9F1qr
	 gb4mweHkTRnX62/0BxlcnPxpQNDMMkZRa49EidRgYTPzAGQ7LZJKOeR1bNQvuwh+wN
	 Eyd0HTrvYb+/xT6hjI9FrrLkpBHrUsfc7NTV/6qa8u8ZwtWDIZL1yFnuIRzKk9r1OZ
	 SiH2vLVW8kxAgsVceTP+mZASU5yfFh8HlJLFWKNk+8fI/bmEuAOGWt3iZS1fN7kwOK
	 aK1kEiUg8yfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB901C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849743369.6383.13522677758941588586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a103c47999a0559e7f1b5f0ad109cfe2565f9ad29fe0ed824a3baeb0582bd8bf
Date: Fri, 04 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788497433
