Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324EC2309A9
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732334754; cv=none; b=tB4uMyWTREd5bEGM8O8BvsrFaAjq99Q+h44Xi1apoXNos5G0mvwFkwzFFX81ww5cFclLWKPpZgYjRh5gBpjYSeAj6j+xy3bckOLB3TMJ3j1y6UmsvyHj3rTht/p+uIADby7vlXUPp3a6J/epm59u6wVDVx6g/TGNy2X+awvbXbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732334754; c=relaxed/simple;
	bh=VqQPM86WLtVIoTEGLjqc+TkON5Qcr/ZzrssByKa1T0s=;
	h=To:Subject:From:Message-Id:Date; b=BMkTd106TsLDnujkyS8mrN3cLOr0lA5a8O72rdIxpSoS34aqmkXMtJSjibbgvWOSo7knk2/PjZ1CM+tg1eW2KXSq2Zm3jXByRwfrNyupTPsjqoduGG5FbskAGnbNRcLaH+5psEvfOux3KKhSLDxPcyoG0vo6assyjLh22L85WWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2WnGRlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2WnGRlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3631C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732334753;
	bh=VqQPM86WLtVIoTEGLjqc+TkON5Qcr/ZzrssByKa1T0s=;
	h=To:Subject:From:Date:From;
	b=i2WnGRlS3W/YHmvvJK7KUq5jqGtW58PzNaD+lk2kgPNBZZrQvT2spa+Q9SCLWjvWj
	 wSJ76HvnsGbR++iaOUkbnFV64iwklrxdYadl/36uBSFl9Pw6+5yNijqKjuXVvUVCuj
	 qMCKwrHKpgYjUN4wv1E5OS6vsY9Ic3LPmdnG8B3Gorm5y6bV2KRXZTijwKElmP+r+r
	 jIQ8/PV5ANkCAHeP4uINTe97d1oGnnPJ4Veb7kaPDlhxQ0U1W6o0GGsJ1hLagkClcu
	 9YNK0ZfSwUlsKkTGT8ubfQwo3mTcJ4q669gVEj/eq5qA9HcNU2nfAEWVIkEZmhWufe
	 uvj/eRzYt/p6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA86E6ADDE
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173233475361.4812.1831535222443512821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f378c9c9565a2c8ad9cb5382489abac1ce9e1516522c8f367656060aad66161b
Date: Sat, 23 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732334753
