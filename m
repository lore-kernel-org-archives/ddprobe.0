Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AF41DB125
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762537194; cv=none; b=UMAxlmlre4Yh/Fnv8JkW5jqhTYSJ2M266b0saVX4XPWU7a/w7NJ6Tq6UtL/l5edOaNETOsB8QW/wv2gQPvEMuTsb33y+YaTUbIM9X+E6pvFr/bwCPrOUUD+VInzMAeK8xc3rVloi6SaGLkq+acNAoU3slQxa+LZblsI4/AYpUCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762537194; c=relaxed/simple;
	bh=QjnZju0qy+wsmPaPTZCCO61U2my3tsZU32fvbEdEL1U=;
	h=To:Subject:From:Message-Id:Date; b=Yh9srtWwQkYxBACm0T8nJnEU1rQtHRS7AjTZ/HA0RHMmRXtDVzL+YIg0O4Wf0uGXEPG+SYIbtmX8wX+4sFrz2Do/DHwG/D3W6+xvHNRtdahbGKuuUzV/a6z+l3t1pKKQ+98O2c9RH+kXgmTWfqL2MXStAErAsh0ZBlaLyf4QdSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyXXqIng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyXXqIng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CF8C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762537193;
	bh=QjnZju0qy+wsmPaPTZCCO61U2my3tsZU32fvbEdEL1U=;
	h=To:Subject:From:Date:From;
	b=SyXXqIngivI5a3g2r15Faps9Lclp81KwC8WT4+Rc0mQ3/uBvR7mrr6l5zTnlfZLeG
	 CwHTXxKUfU+ufjJl9HEXlI7Q6G7GwirRbGYoyk/+A30HCUYeReynfNb4sSrbb7vfNQ
	 XWYeVLZQgo/QuPOtmMEBIk4vKfnf/f6KgYPQ9O/om2VP/tcnBzqPuXXHRn9uP0mmRz
	 M+kNM/rmJt84DUkf2i2AQkLtHOH5OKddz2Q3/EVr3cquTntldSVIX6jqGQuPgk+Idk
	 8SFoDaMdDcpI1UhXSEk6Es3+CzmjDxiqdFtEYgsmBxfTTklzBU2YDMd6uPzoQAx+VJ
	 3pnOe32UU9MEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B33CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253719360.25109.8883181187126781149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9689ce51a8c01df1322459291c46cbc653c4649b8cb97cc3a934ba7902206d95
Date: Fri, 07 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762537193
