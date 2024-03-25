Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA5515B972
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711367297; cv=none; b=Y3F8SYXDxE4moGWOo80coV/WeOALSTuWx7mDT6CESFTF0Mn7oXe1ZnPF9Le1oZM+KdT/7g5Co7RbHsX9UVVMhwZrobAnsmzD5RJ/1DIzfLs3IEp6gXODV15ZsG1tDJ4hTKcadEwwbi2K2BPM1e1GRa32bumeToa0Rebeauk2Fao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711367297; c=relaxed/simple;
	bh=vmeJq7u1R2Vdpae1OxLAJ0mbXFfAm9kybr7K7x8TUKc=;
	h=To:Subject:From:Message-Id:Date; b=XWDNeHKlcsTrfdL3/aJo/Q04VqZmuLxDksO/adCFGHq94e5f5B7eJ3dnRxatC1pApWz5arRmVw8BtmaNJSnwRII7hA7eWJBSt8ImfSQxpHcMZ8wH1dT9LWvjixrF668Nl9jP95MV69cCAkcdW7xa1EOCKCzLHmhcQFpcptVOTXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCUrzBmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCUrzBmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743B4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711367296;
	bh=vmeJq7u1R2Vdpae1OxLAJ0mbXFfAm9kybr7K7x8TUKc=;
	h=To:Subject:From:Date:From;
	b=lCUrzBmf9ZeaeJL80GVSIPSa2c/6dJMnNgEuCt3q3FWCCjyJ/xG9x03TuGtWjkkm9
	 y9yGul65ZMdV9zC9WPVhKUka00ZnIhd9UnHoGfIJdAD4Y2HCA2SaQSPO8tO3+0yZPw
	 DDB2G2qptmKmP+J8unjiz9RIa/iaz0RVDL05S0cDfVwEm6kwIVYAWJTVLIXWpf1OkL
	 260RYPQUM8snqqRf5ObZUC4p6F203xNO4fZOYAvr6ssAM/2U+xzyB8/NBhNQEQWjgd
	 9a1FHIp/HLRj+TmLurcm60EnEKVIMRQMoIbf2jEvZAZurpWiCnkw9ZNhg8tTea8klk
	 e5449u3EYQDNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D06C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136729638.11688.3210622303977789460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d543c286ecddd31f968a1fa49b81a4496af94f26138d30e4bec7545be7cfad68
Date: Mon, 25 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711367296
