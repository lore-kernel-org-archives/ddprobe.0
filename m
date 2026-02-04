Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60F0423161
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770218034; cv=none; b=Qm5z3wMZVLdAxMv2vJG6EQoSDcBOvkakQk9n30Udz+/D1lAiGNy5iAvx0ulwHvIvSO8gDIVgF9u05r1jFSXMrIhUT7QzbniVfwkqdbVEJvMS0po9DlvLHnF56/acUryOi1ct+8v+hAnxB1z9UjNZXMxQczsrs7q/ZqBnABB2Dtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770218034; c=relaxed/simple;
	bh=lwMQBL8WbtkZaCd53RU4uMyXAmQEKGMUjoWrOVneEn8=;
	h=To:Subject:From:Message-Id:Date; b=cDUBx/Bqacob4BLEfeU7blR9K9N1yXUch23bq8Vv2KcONPeOr0CZvqpsvLNrrQqpnG+u52mfVEPILkt0Z0ecRiqZxYLXmOedMD/w+YEIIg1NSR9lOFMwJQFtz542GkdJEp7pUCemWtSAtekJLubQn2c+GIIWE3ZTxiuYSuxoDSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo66Lvy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo66Lvy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770218033;
	bh=lwMQBL8WbtkZaCd53RU4uMyXAmQEKGMUjoWrOVneEn8=;
	h=To:Subject:From:Date:From;
	b=oo66Lvy2HwdcwrrRAgaTFug+IwzdVqaX3ydFvbPnvAqqNAvl8S0SI++ELV/4HDlJj
	 hyiFyS9eK2C2cSROIh4YmSTz87rmMdCOz2P3juylXZnAPsm0bGEEIPF+1A6cHqEBCb
	 7RnCI/CkOS5sRR+qOX/XYdo8cbAjTeqnxAHaTKbM4pd02yfw7IhsEKTbQJxnJtsTH1
	 J/gZ+MknUhLHASONCC+RHaMx7RurQNW/+1H3py1k5RAw34gxYS51X3vbXVQ4rzBPHl
	 WyDLXyWMCy6JGi6Zhr0qziUYib8wW1mXdp1MEDjVNxnkkiGiWvJeWY7tWn5tSQzizl
	 yE9wUpoxuAAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B62E9D3FC
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021803364.8245.8139834733875075221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8de1d9c6ab54c56e1829b4be4a39d5151a2b5998a415aea7df5ac1d52fbcb7
Date: Wed, 04 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770218033
