Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410A117A2FC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746216594; cv=none; b=MguisBk9bxIS/h9RbneOWc57GPIz9TxAM6BlDgDzixkrFyBqVmpMxOxsHUc25TduXiCNEfWFd81wk8dQDFuaoDaUURLMN/eRi91FMFNv8pvJQqQVnEzt9+oh/6JdnRTq3cJ2bgxgDvl41+2TzZcyWY1uyCtyxj+Rx4C92ux8fuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746216594; c=relaxed/simple;
	bh=9GvV2aly+dY9PHZjkzNewJsjBu5VFY1qp2kReezrDvo=;
	h=To:Subject:From:Message-Id:Date; b=eNl3QIEXjtagIEw034fKneuIa4XI8s1E7KwyolPbJF/q/mTYNq6Ubw8wvQF4EOh2UYgU57Jv7l9av8yYG1xW2+0xXMZQ6wPpVfh4iTRv4Wo5xRozyTnvk1Jj0FrEPxiYfVjym6imCEqOLcbE2uszYVaR1LL54lGv1/0MAwzeVQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me7byEac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me7byEac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3907C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746216593;
	bh=9GvV2aly+dY9PHZjkzNewJsjBu5VFY1qp2kReezrDvo=;
	h=To:Subject:From:Date:From;
	b=me7byEacs6WnNs7WxL2Gwb4IpUJ/CYN4fYgv4CtvH14NfjM8N/NyMUBR59zgGuJrp
	 ZhDFZQaeZwoIs1Nq9cbpZ4Zo5ozvkqJz/hGUCWBRisa824tkgUIs4fQ+wFNPjz0o2/
	 uU2+izA7XUbkFk/ji2m0Bacyq4se5A5QMIo0lgwyUOyFoUrSCQN5eyKC9ds0S6JNNl
	 UB35HCyvkXbD1syM9VXG1r4uLLrDz1Dy5nhZVpzcEm/8EgHRPHekaRA3HbZ/iIiMwm
	 saBXbVIRjZiqkwECu7vCh228yBqHV/qnQ0wO7eaiLudIlVHILIVELUxlnqS5QX1QcQ
	 BYwdjKr7WRKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4FC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621659357.19628.9308089424568949671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23397bc2e205590f4f6edf9d32438664c7c4cc3fdbe935ee562a2a216719f8a6
Date: Fri, 02 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746216593
