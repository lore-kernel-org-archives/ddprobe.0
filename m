Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F642DC76E
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764945175; cv=none; b=lEYlwqf8DVYzgRJMDkJ3KeA3Qb017iHHoXsMHGmdzqmKSEeQ1AQiV/YJuIIYuBXg7h6uOOt4ll4yOmem5JPyoNrP0AbBin7yiZenuPb/rtNpZbREEARkqmqV/Y1evEPRwTiTOcPBcp/ALnf3N3z/7stF1mMrGYpzp9/CdF2RuEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764945175; c=relaxed/simple;
	bh=jX1WC/0YcFUn+L+t6rcH9U3vZO32fFZ0P/To6l0m1Fo=;
	h=To:Subject:From:Message-Id:Date; b=ttbDEI+Q9ytDg76z0Au78rvPcJvsegdpWLjiOYT2lZp3x1V9IsL53B9nQRSA17iC0eKGAqakLEx++dC3wXEPC8bblHT9PdGx0MCMD6hxdodt2MNNC/lenTKsATNHqpjaPGZSz190cq4wJOqCZ6qhNzboZJgqdgvR6dOas2FRyX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/oHKJ8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/oHKJ8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC59C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764945173;
	bh=jX1WC/0YcFUn+L+t6rcH9U3vZO32fFZ0P/To6l0m1Fo=;
	h=To:Subject:From:Date:From;
	b=D/oHKJ8aOzrppkuM5S40TVs6XkJOKqsCkhuUa1rl9AeyP5xVh0tepgQ2kTFou2XG5
	 3WpkyiNuKlY3A8zJ2/h6TmtfDryapBCHkEoCTgjDiU8f//SLwWlrDgRkiBPYRs2UXl
	 jTV0pblLVmtG8wph4RBr3ye6y8ggo7Wnaz21xUxuSsckfGOqpZJNnHp5gpkX7VRyWn
	 RAgrKIz/KOgNjTTcX9C0RrB0BPmKTB/Wy23M5PtHjKmv/KBXbJlh8nxMPCwAk6Yfeg
	 ERrmnncXOulIIyXH+Yi7Y4aQcjwqayeaQC4+E8tw8j3Eyjx15taw85SDjBv1MPvGxw
	 XhKmDYYYh8vkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97426D32D60
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494517359.4818.12013417474150947426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d6eb50092372ff94a90561effd20bd7e0b76cf7a8358519c67a49d43ab25b4
Date: Fri, 05 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764945173
