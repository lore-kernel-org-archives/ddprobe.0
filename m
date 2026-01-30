Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD6D2FE074
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769802234; cv=none; b=QFZf1OEGsoBFMS+kQ9FCInWGN/2XVWPsWcgYCig3SGlv+3bGUuQbco5wKECpyBh9sZcAXq8ISLLsa+1deDb1fxP9mo3wSXQy3D7foX0G9T6M3ag3LNg0DfjqUKoq4kIzKPVFyNv4mt4koboH0bLxpSSQGCQJrJveogc8lb7vbo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769802234; c=relaxed/simple;
	bh=uCH74n9Hpnc9RDREVNFCIjm4YRRLYmKVSTnI58cr2qc=;
	h=To:Subject:From:Message-Id:Date; b=sGCS5RaWxKc+Fo1GmE/cpMCh/sFGhvG9qmkSbk86zyjWnfPaJhx6Eal+FhDAhwaRN6GMlG1dAWswctj7oIIj4jsDDcix4a8dXMdlay57K2B7wNv1wxAW7E3oiXJzk1xgbKoJU/AAKiIiu82fOXSRhBT3N9TjNWTqnnZTs8TyYMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8MmNRlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8MmNRlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CCBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769802233;
	bh=uCH74n9Hpnc9RDREVNFCIjm4YRRLYmKVSTnI58cr2qc=;
	h=To:Subject:From:Date:From;
	b=M8MmNRlPdv4ZB2Ic59ukvOPG9bwtl+uqoZM/pbWOfON5AwoqyqGaane/L/GsoQJNy
	 EBzS+ADH1cguhTPS9TTIsFoTdSSoan8lqtcWum9dkQvP+lBhAj7axKaniYkaB0xhfn
	 +79JkOUbxoM4/OkseRiRandLc7c3eBUi5Dx0JD6JUT0mUwRzQtc4izs75GsnB6JJai
	 CjF9IOA6hOlm7Ovcw6y8Hpl71/hGWh49tt4DVCVQZQ/22aDnwsUIHkbIEIKq/3tHF7
	 CWpX5xJtZkbVIyjGM8w7H2MQTp0jFS9dYGN6R1y8C2FPTKWc7PtUDyxKHOx5wT67+X
	 MoCYONfDEuHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4CE6BF0A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980223358.15536.15986184699734402855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a6ab89d75385f1a59a2c758b6e5fc18c605c65f7fe533d17c370a52f2dfec5
Date: Fri, 30 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769802233
