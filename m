Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92F1EFF8D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780448674; cv=none; b=NNAbdGj6uHM7cv3mWwjVc2a4BQ7Gs1DB0qodzO4ayzRFA2lG8BCbahJRaep7ssqrxljL1LBFuiR0tSNIfsJzzRzKbBlIBCJxYOBiFeoEnowsO0D7DeI2aSubut2/R3qERWBxlp6aNK8hXmlKVjsLgMsHjP6syVcuG5gzKQS+C+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780448674; c=relaxed/simple;
	bh=zUXwwypFlKRspb3PJBaSOJUp897QtUAA/wJf5SOZpLI=;
	h=To:Subject:From:Message-Id:Date; b=T504UaniQ5i3To9XBWOWm2tmwdfqgkk1hrm5okYZvLgWxfWRxKrJt8KryhmdOK1lwyCCDJUk7+4tmCDEQhNIyvlmn/v3+zomlREPv63Yl8ARprYHC+Z7rwQ6yz5pRJtZJwS9zQWSL9WiVWCGY3zxAJh0nJqvJQcak6v0E1tkqJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBtuwu90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBtuwu90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41CCC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780448673;
	bh=zUXwwypFlKRspb3PJBaSOJUp897QtUAA/wJf5SOZpLI=;
	h=To:Subject:From:Date:From;
	b=VBtuwu90dQ/uzOP8bDAF8bhENQxZI7lrn6Ry8wIJ5ksgJ8TAKZvB3Vm05DmYu9HIv
	 DnM3BwJjbgkCIlBTbFDn384/UiU3eX/HCW6eNactgJGr/GyBzJuZZ+rPJcFBmLLWYu
	 oZ1ukOn/12kjLOEs/0UOgJuiLICZh04XhiddoAcnxIo7Lc+wSrxMe90MTvhi3371dS
	 1QqhiC3+bzhdAnBS886NO+WmyyncCcTyvnP9+GeXxfYt7nTIZRipz8YvdP4WdGeom/
	 hLPrnvK8VhGc2TDa2jeGx3VZMXe/v7dSg1BVH69FolxDCeRuoGrPl1G/wwqaqnIIsk
	 RV18J8oxcj1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA24FCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044867368.6518.9011297482022893568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41af4b3b4afcf1548d81de087bbc3377b8c330cda511b870ba479331ed4d5839
Date: Wed, 03 Jun 2026 01:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780448673
