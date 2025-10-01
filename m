Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E242C326F
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759319993; cv=none; b=F+kdIZMcNtnZzP3uW63STdPWFLKSNMvirPIkM8yPvdr+Yis89nJVO3bRnTebtDXKiUe1FQSXaEKV+0nl7vkq5TELi8OKr+HP2P4neoZeb3ddk664DNOJyNoC+hTpG0vYKGtNP20Xqo5INhz/lL45PCqoIdAp4n8u4h0buGOn7hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759319993; c=relaxed/simple;
	bh=OEoLVmveU/FS4pxxZLAPVrCtBJIAlQ1OwnN2zgBoHtI=;
	h=To:Subject:From:Message-Id:Date; b=BK98eZwMSO5yfx/8c2tfJ3tf3UIsw8eDDi+qGsqJMmivf1fxuFRPINrEnFWaF06H4/lc9+KbJJFaojr6H8ZBd4MkxhoDi/cdJKf8Dk4Wu57cqzxaMZx+RpfchfglLxL+rJ2gzk1a6oftCPsmMJTMhILsfpJ7DuDs+yDpImfssnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAne3xqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAne3xqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B1C116D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759319993;
	bh=OEoLVmveU/FS4pxxZLAPVrCtBJIAlQ1OwnN2zgBoHtI=;
	h=To:Subject:From:Date:From;
	b=eAne3xqM6yTyV7UBwZAS0G4AdDUuf8x/9JI8ReRXUyX/0m2RTwV0tYkliN+zGI7Eu
	 WByHTFABOYXhOM+chIsrynZyWsbeN0n5JqAnHnlWM+Ot8cM3p/Os08RCkb0qJqfMSs
	 dW14jNZaD51/KB9/Qt4XGNwabIbwO0I96Utx5CtbAj6IqQaXtnYkmXb43PjoxikWRm
	 kWHKPVYXV6Fi3HvJ8UIptZ/JxBRTd5+qwQFbde8Fmb7atkj7UV4Pf3r0TcBET/TPY2
	 hfvpufZD+Tq+zl67dQ1zBuZG0SS5KBAPU2Bjwl2msdmWTaHh+2nYRkJAjlQPbKTUKD
	 czhfHoBfjHZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931999359.21391.7531123309402873728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76260f283162f01e7ab9c10171ce5d6ed5ca3e668a3f7de6e1da97c13d7df550
Date: Wed, 01 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759319993
