Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD05490C1D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787854234; cv=none; b=ZGk1Mb9hCniLcgnHGrmcIdZuinfCJ167nV1XiqdqnAPjLUZraUL9hT3F5y5ZLmtnV2PiVdu9i+OnnzhFzZwoIdoybdMxUeJOnfQp1wS9mrSCdrpA07Nw3IzYvxMXsrZ+75CFNB5vtgMKh79h37ACPxEpgpBt/HBlaRHF0l+7TQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787854234; c=relaxed/simple;
	bh=34d+MMEkj2zAcjDT9KYSfzwlf+SVHO9IfXPXkggkqRk=;
	h=To:Subject:From:Message-Id:Date; b=qVByNvajT4p1lNANmleVI5SMIo84fXLbuayMiyxNVMFiIdJPXNqicHkkz2IZlJ5Zx6NrIzW+g0tATnAa0Kxc8DxNpCmPatQ6C1uRU7jrYZXBfl4bccSrNU7Ji8fR2H0fAe3qZkIsLS2lRX5nrg6l0oBjlQbKfjp/mQO6pTIwzfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmbVMBRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmbVMBRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3DBC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787854233;
	bh=34d+MMEkj2zAcjDT9KYSfzwlf+SVHO9IfXPXkggkqRk=;
	h=To:Subject:From:Date:From;
	b=cmbVMBRQT8IZ/xE9Cd9DmZeOL1TVXSyatHNixQHse2/vquCU1kmI6pDxMsHb7SaHp
	 MkQYrRlnYW6RUbvP86hPmEIURzW9i/KEfRPxSkDB+E7h3I2KruHAGMo/QY/x9sgEYc
	 hHUqaZerV4n2tBGmbSJgIG4WYHMOPvy85f+fX/psiVMKF8aM4hscOg9rxOMiBKayb9
	 5lGDCSf6Orah21kwOHAPhGozr6cGYuNW+i+nfhZrlB9SDhzl1qolewU9U3YV+RXdz5
	 H5JE5ijmRf1WBPt2NH+Ym7ZlGBTVc5XdhWBjbyUy73V97ybaV4CWp8ntb9vb9a8kxH
	 BDE2WfJAjwtMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9724C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785423368.27868.1747625639567840259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f9ccec672b47c5f944eb35b6bfdd7793dbb8d8c12ed7ce6eeeee16e6044395
Date: Thu, 27 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787854233
