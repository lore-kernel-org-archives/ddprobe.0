Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE6934DCC8
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791673834; cv=none; b=aT8DYOhLf/KupzWgQ3RcQrMNsWkZv22OEIiSefwgtav1YvQGFuzO6oUSdPZANMWoyrpYiHjpxdSRKg58PBVolngCaa4W+dt8qmUUI61tyItVslsc0boDhRIed7WQjzfWKDv9/FaxIsMb9TVZBkYlkchoPpA/C8A60N2yYU/hB7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791673834; c=relaxed/simple;
	bh=LuWDzt3n4rsujFRl0zeY7h1XwU3wIgaWc4SvoUKZXNI=;
	h=To:Subject:From:Message-Id:Date; b=gw0CkLwB+ODC6ysAq2v+wS/XOphkCb2dQ+G2sFLD3mC2qe2v2+i8tqC7g6GNTeAG8RfwdEQRox+mvCdaDpUFz3thaHH4/mQnaQdlHxD4bVds04g5VWXfReCpda41KXstnQyYWsHA5ihvDGq6W8k+bj3TyLLfSn/GCCnfuGgTgVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSZvJ81M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSZvJ81M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A4DC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791673833;
	bh=LuWDzt3n4rsujFRl0zeY7h1XwU3wIgaWc4SvoUKZXNI=;
	h=To:Subject:From:Date:From;
	b=fSZvJ81M1nwS0jVNjaAcqtGfMnksoSNfm6HeTQShA+cqE/wiWTRv0FiGbkoI9OtSJ
	 II42oyc9sAeieIoLgZebj09U/Adl8oKmDH0IjJQVAOMhU/iAzgxiTBgO1KXZUQGT1C
	 rrdRQmm98CahJHsB+FYnGrHU/qZpXY6Gmn2WmpJKs1NdOkKm2VIGNpXt55MYAxxUUB
	 dPENzpcxcez93i3mP46AUHHxhQzl63aesgx9WtUvpBHDcrT42KG6Mz7WyCZDqyfZoO
	 i3CKPsUemipxg3Waynd3EKY1xaqWOv25Qqph9ls4o5lafT+WOptzxxtep7oUClQ61y
	 bc/rTTeYaeApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05ADCA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167383368.14496.5148734951445273723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae37ef630f444446d1c56653d290b530792f71adddb98549c12e231ca0acccb
Date: Sat, 10 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791673833
