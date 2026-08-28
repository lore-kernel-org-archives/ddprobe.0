Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3693750A9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787932234; cv=none; b=GBSAVPp4Qs4y6FZvAwdKUT7yE+f3KPglbVPH6T81izZ+deYdYohCehrSmejpjFAVetnEXhbsj56Oho4i9xn8XPlNCfpnLOgIlRkHpySRbNQ4MqfGiAufcWNSHlL3wP8DcQnSp8JXs9ki4YqKn7jYVtsyKESGPL/oPayIah7vnY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787932234; c=relaxed/simple;
	bh=49XySWuSJA7DOHr6OMnn44Aa39AG0Vn2vAzK3S2z89A=;
	h=To:Subject:From:Message-Id:Date; b=FlmgQ+aWnqUZ/zkNhnRGIVzDKo5e4VpmDJI043vgPaxdOTUq1acA3h59TxilrkhiGj/6LOJv+WF77BOkfKLRuRet9OpCI0ln/4GzPBm7HkUGwuI3ht4UmaIhodYzUdXdfiQ4j/zCkds0qLEtw0tmCGs2ltBV5U9Kj+GEY8/LnMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPQwb0PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPQwb0PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD447C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787932233;
	bh=49XySWuSJA7DOHr6OMnn44Aa39AG0Vn2vAzK3S2z89A=;
	h=To:Subject:From:Date:From;
	b=IPQwb0PHvfncS97yg8s72tb2muQYhvoFokhQB/Z2iekGsVzuCtfDFoV9MXrU9OKyk
	 8BdMJLni+SJMBYqvnbIXf6kTp9MAF4lAPBRezh4lOlbEh1rh7Km/EAtrNGzVDlLE4a
	 g8YHzpMHWyCw6SWg/ue7fYwI+5NrlmGzWlJXfzC2+jnFWVc7G2y/4SmXTM1y7jAfbg
	 H+yaR/DYUzbIy+VYyUY8iTNgNOSMuc7q1kOGooh/K4YlFCr1HTKtD6d03Vi7ZcrbqQ
	 C74COjjh1S39IePsxMP6uE7es/qV9It8KJ0nfv7+scY2l3CxMGvFoS770iUIcAXfSz
	 MVH3Fw+Prg7Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA141C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793223368.23193.16325682179359370391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ec098e2eeaffda1ced7a00f353b062ed77b2249c6ecf553f8ff3bb42800599
Date: Fri, 28 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787932233
