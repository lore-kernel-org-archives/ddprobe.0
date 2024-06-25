Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D043147C9A
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719299603; cv=none; b=ImTH/hm4AIxLHoYy84r8d5m4y50W+2jCBMvXsy6FEK0HDDA06+I6VfJSRCjqX5gM6wuyD8QOCvbIC1bjvjIArab2AShE7mEAabaBoDvVyFAf2RwUJeAzpXftZBqYPXfrHjgwntJDuUtcTopP9g5oHAWlQ1Y8d3lnwXW7eICijEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719299603; c=relaxed/simple;
	bh=eMhR1nptzL36Hko2Rm4g4v5Msjkyg4eXKaX3Q7ByPBA=;
	h=To:Subject:From:Message-Id:Date; b=U7v956l6XuiXSmxy91uMONMKn1qQ0Yhsubf9UvAS4RPjlnhQGIOuIuWkKuoEUphorxF6lBqfX3t2cxBZ0XvZtyAEiqhd3NcMvRaJQ8UE3p2IbotGXaoVvVBwec+y1HAlKrrPLh2+nzfstqRPGSYBzKrqS+p8R1t31yYfFx93BvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHEhEwUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHEhEwUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BDEC32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719299602;
	bh=eMhR1nptzL36Hko2Rm4g4v5Msjkyg4eXKaX3Q7ByPBA=;
	h=To:Subject:From:Date:From;
	b=NHEhEwUY0n7tgwsFH6vJLayVBlU2UeYX2oG3AqqcxQ1IELnplQLxO4hKS1JieCq5C
	 gKrvXJ5Pv00YXOnn8dqWGYc7XOe3u2JUYDLeD/UB/ie3pbfI4nP2gxFZefBOniaD4M
	 /XA9AFwYTQVerOBbL/BrxvspdFq4ZwnkFqseCWMHYMQXYbGsMZyEAdqzVUowLf6wcO
	 WchdK1wnZb0N61PYsqKKFdrENE67o/SYDbMt+FCGRnR7QmOMYm9f22/KC3KuoEYE2J
	 n68qmyd/EMZ4bzzFF3m57kjL/YfetVI+nTPJKpXTByDNCCEhwcRZhsbQo8N3OQwjsy
	 Jxu9zSjzycq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6CBC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 07:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929960281.28471.7017121157428750690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d6005ffe424fd877596bcb1d100f03e7cc0914d5890a92b0fcb033943d8740
Date: Tue, 25 Jun 2024 07:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719299602
