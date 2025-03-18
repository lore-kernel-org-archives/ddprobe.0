Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDED54758
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742320794; cv=none; b=BUoQLpfHV1lZ5licZx/+ejTdT3+C2sj29pj7U26gSmb6WvCunkgsFT+3xBdS/UVhDHctd+xawfYMwpGiOq7e4n2pF0ThKzUwh/4ggtTH9msBE+d0rcNUQkI8GbXcjnVZYG3b85FkKPG6r0ob4UGjpOfN+SJSAaZySsMn0W/2+ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742320794; c=relaxed/simple;
	bh=ZfSPT0sTwf+0L3FbuKeG2UinG/NoAjPEL/S0DuLA2oY=;
	h=To:Subject:From:Message-Id:Date; b=qkhbaUI6cwTyiWCfel8viyqO74PUatS7pmKdySiKaorHaYDN1brSftqmsdem9hazZmzR3hCnX0NsWyD3+RSj6D5L4qVR0lFiLZiQM/65qViWnRNrgOuT0SogogBI4e7TTh4x40LYyfZY2FRWCY9QBxX8qJo9pw9Osd8RrkANXKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amzvg5DN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amzvg5DN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD6C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742320793;
	bh=ZfSPT0sTwf+0L3FbuKeG2UinG/NoAjPEL/S0DuLA2oY=;
	h=To:Subject:From:Date:From;
	b=amzvg5DN9UnXlUhP3tdsq+ZaTL+RA2bcFQLzyk45yvyj/79zPlslQWTdSCZ+lJEmW
	 hljrvJsj6yFICM5m9hOzKrdw+b1pbv6nfX+hQ9IWkoRlGli7uNAi0Av7jtpF+USC/T
	 M/rH8wU//85obzyqJXDiBmnXcBtQXFDy43zhpz0hcd0nbhuQt+rbyKaTts/LnspSMH
	 J5imTec4Ksd3qrFx88DyWvoQVfuDBFzUNNrx3wuXY7iLfqcF6ZhsmUccnVRDRTrftw
	 xLnCcgyV5BN3BEP3L2HkLKXNdRehuDLgIdjYdgOpfrKhiundz1aopjPlejT9HcuVUV
	 xEI2iyddpIz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95066C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232079360.13910.1590612123002873221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2080484ee42464f3f3e62860175a0a630f4b9d3eae1a6b3256e46f656885a4d6
Date: Tue, 18 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742320793
