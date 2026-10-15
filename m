Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29551990B
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792060834; cv=none; b=R3pEohueSXHjG6+hLF0gNTctjRsbKwaNdLf8pXWxFrV00eXFVcFA2TsYS+Dxxb2sdwcHfXW73C5IPClBrZAyxznNYQU0k7seNn1s369CCeFgJkunUnL7xbJmwLj4iu86HhYZWZSsBjjRSSRQpqTk76keYNh1A5tzMSZ9TvOtrW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792060834; c=relaxed/simple;
	bh=zT+/wt05009ysJSZWSNZ0HhNM7lousNGtRcxvaj29So=;
	h=To:Subject:From:Message-Id:Date; b=UMTIT6zBCEZ///u5tC/j3zzFCs+QwihHJfbrZbspAKD8t8IrhvJTLX06hLQpYk/64PsHdh4rzi7mofyKcnFN68+omTDt/3x8v+oRLCJfm0hJaXb3rRTSrb09smZEpN7FKTQQrJPTZSQpNDvsdtnPgrxdD7cBujeeKpZjiCJ5RW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+rY6aj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+rY6aj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD519C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792060833;
	bh=zT+/wt05009ysJSZWSNZ0HhNM7lousNGtRcxvaj29So=;
	h=To:Subject:From:Date:From;
	b=G+rY6aj14tXrg0Vn84/BEUmKk/3X7/gMqZ+p2/jxiWG3v248wo8riL3ss6NYQ0n9A
	 drAmoZYToGB2AqT84X5XrZ+t8D1CU5cNwTA7pFFtZscD2Hx4/B6Deu3xYerOSCj8LH
	 MWkrgb0EnmYRe5cx4Z89mN/ysQqo2evmn7R5qpfbjgWrJnF4jw9TtHdDKQynQpy2Wt
	 Z1WDSMeP93YfbuXSslGvrpwb+yiA+fjiF7qZ4/g2pu+XAxwIEicQ3ygZS4ZAy/d0K/
	 /Y9xIofNAme6WfCQu2hk5z+B4S7lTRAZo32Z0JrU7RSQjEDk+yYAep7b0bjdVAdyi/
	 OY0PaEfLyhIrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87DECC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206083374.27266.9028217151509759466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ecaceb53aeaa51e97fc246a12bc0ef9a64ca97dfef708d6c3f799476a33cd4
Date: Thu, 15 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792060833
