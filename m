Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF601F80B1
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729019754; cv=none; b=KGsfcaXvVoSWuYTG+YpcEa7lPFaiSd35pDoMeryGYuTvbTgOwpjYWHHZSQU6Oj3/DnacCNIPaeBNQkfjpDju/y0xuC9I+sPgq/ETDoQB8mntBnNosGD9K++Ykq2JWTlrlIIPA0dgVwxqspfbWLpF2kpSih8usN0dukcfkQU0YXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729019754; c=relaxed/simple;
	bh=4iBppvYcZ0oDgsFLxGkwcNp3MkLHkwTmk68+4dO2URI=;
	h=To:Subject:From:Message-Id:Date; b=bwKEVp4yxhvtqBJowaN6Q4ZIx6yvbzhgCsCYCv+UAqu7ccS3ppbfbmYYEvHO2d14pUOrH1+dpGbn8Ut0TDza2wTK5YrAk09bZdyiVbXGNInGaxUzkeJwOOH6QrHenmQhjevDsAQHipDx83e1BnPDu2kT+AC6Un8KSU3akxUcL68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbZZeU3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbZZeU3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2479C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729019753;
	bh=4iBppvYcZ0oDgsFLxGkwcNp3MkLHkwTmk68+4dO2URI=;
	h=To:Subject:From:Date:From;
	b=YbZZeU3nEKaQPwCweDZZoq8Zj0UhB3IVwuyWP0DGNxsAF/c5+C/u77zQaXmRDn0lc
	 IoCE6gaMUPqt0XThu5Hu9sd8cOrGZb64TVqFYWnL98zt3G9amUmFX+1TWlQN1Ob0ZP
	 ZxzLA2kg5bqY58TxnKHq+mNq6DyaeXHKatZ+TP+AAVy1Z8edV2lb55XWAvbrGfkUl7
	 OeBSriZ6gWqcuTP9KniG/O3R9UhO79FkvmAm/G1AfPaeVyURB/yw/3iKENENm+K8pX
	 /wQrw83Q3xNKLlAowfv/asPbjGGyH+krVxKMqJVCLL5+WtJQBtQJEykhQ12CnUkDKk
	 hQD62bTT1FDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9400DD1F9C5
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172901975358.521.11499808083776269413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb8e1c8e08129b4c922067809da09438365fef4f7b74442d3840698befcd380
Date: Tue, 15 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729019753
