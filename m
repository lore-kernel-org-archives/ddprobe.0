Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FBA2D7DF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770441834; cv=none; b=kbORBKVGKGhj0Ktvedyc0ZEjyndypnSa2xZzJx9ipqUJr8+aGwX35advr5diwt6z/ukZs94zKOgRzCDm4dGtKwiRPGwFTXDGrOr4G/ta00V6/QvD86DLN2cFM0CHxNDDgLq9vNaKo7fCKXKjLqIJMU+CMgWruOOMG1d5H+PFSYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770441834; c=relaxed/simple;
	bh=uq1WdyBnnIDEOYvPWcZAM4muc+Q5SqngqANpSvft4kw=;
	h=To:Subject:From:Message-Id:Date; b=hId67gWLFIINVvo2crtkCb4HG/YtOwHS9xK4g18OV5EY1l4OrUGPmPeioYT2ooZHp4vRGlGb/Bv5JQYSFAk7IebLFe/rqgnwPnUmkS9BbHFdAL9cBet65eSr1yEKoBiputcE2AiJAC0Ju/RElxXbb48YoTIAKJtF5OYmmpVLxK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awM/uPLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awM/uPLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF75C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770441833;
	bh=uq1WdyBnnIDEOYvPWcZAM4muc+Q5SqngqANpSvft4kw=;
	h=To:Subject:From:Date:From;
	b=awM/uPLipzOuipOFWXmeprRekpU6PVaL7GGYvZtHNKAdINKEnH7xL/dnoBeYLu6hj
	 /mQ4Y+sEe1i95UHahQMwCwHElpImTAOsfg4ezRSthPrB29PGDnYrUTWLMGUjkkvE3H
	 V+E9vPANFJmz8RtaRnc+EbK7AAxVBTrWjC7KqxkDkq08ARW9mjVPcQBqvJrj6LlgX+
	 10PtBO1tS7+XloWIra1JZQ1qYlapulO74vMJeqWIOdR96gH5D7WcwNG2UrJJSFRiGh
	 /Zv/1GWsoTtjM2CnoG4W9slS/9nfffqqF4Uz7kUedIrlXRdMwIryxhT4G+VXyj/pFx
	 JYrb51nko7Wzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93803EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044183358.28180.8428524988525230079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f01d288b51814aac68ce953bbd2c294348440fc0dd54c36d2b76cc07fd2b23a
Date: Sat, 07 Feb 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770441833
