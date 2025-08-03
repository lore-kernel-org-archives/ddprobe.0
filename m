Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313F205513
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754264394; cv=none; b=UT0Gx+GSpO8ybEoAjkjx5szPSW5elQPN3DfXdbx9fEY/f8shd5oVG+jPTQ463DgCySWLIQdC8orn1kBdWNOGgmOj5FJPW4hIJcKLGA7XCur5F5eKU59XWLdnIY9DmsschQcpZRNOhte7YR5jLhId0lZSI+aGQQEDnFqPAVBZuxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754264394; c=relaxed/simple;
	bh=oeqTbag6zsdrB+h64RPj7gaOEMk/yxA4mCSpiDNDhP4=;
	h=To:Subject:From:Message-Id:Date; b=uLgeDjpqUyDyTEMV5JfvSrUaCbkNW65UmQhJDDrVUO9bU4PLkR5/IRv0zPNZzY7T135zbY+shrbddQaVHI38pcqK28THECu2QPDzsi3/gfZ7temfFcAXXJC/JHnFg1Q+yO/lhMsdkuD+KhBqC4LMkLZijDEFGNPvcJK0U64shak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/RoZD8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/RoZD8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB86C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754264393;
	bh=oeqTbag6zsdrB+h64RPj7gaOEMk/yxA4mCSpiDNDhP4=;
	h=To:Subject:From:Date:From;
	b=X/RoZD8AcIgcXp5k1Z40Pa2J4UuGzLMPVNt7qTl1V9EseH/8kLhRGYteXy9SMvASL
	 gljq7p756SduFbtt5pk9vIFxY6R9fzhlX+1APpZhiE09+0Y0VkwbZXSfHZm3wUs64+
	 Vj7Y3M5cO94K2161oUbfP7XJ6pJ7UZvlumtmsinto5jhnPpQTbtNQ0D0CtDxy+yCv/
	 OzANskUY3b2zS+ztEUHtTuk6ldi5jeucGtvc9T7Zlpwd5vvN+b0XiPXPID90msJpPQ
	 fXtD85Y6N5RsKJ0EmNlPBWT6r0kJmvNAzS+yjNBKS/RqcThe+ffgcFw09E79CoX3c8
	 NoKQ3dSC2V2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E456C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426439357.26109.15550359926762051415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e40cbdbbf68205d5a407ca31d5539d9e06dad99278765b8875459f258171340
Date: Sun, 03 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754264393
