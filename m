Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A93D3A1E85
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766094834; cv=none; b=WbcCY9PD+rNCA5OHwUblVMFDlWMsioxBkgzOZyvorSTYrKIrvJ6mXOUtaRlRAZzAaQpMVAeDn0kGJDrQPaSS19tQpkljpHjj/6KXznbu4MvtnyBz4/jJl04yOlUYSfrIAx7oyDdiQkaIensd+1S/LsK3FACCPfxtauW7kkNyzrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766094834; c=relaxed/simple;
	bh=jXQw7kzB96jk2BW8f8z1dBdk/YPczotEDG4EUsOy60Q=;
	h=To:Subject:From:Message-Id:Date; b=bsQPJW6pig3+NFLqH/bjI14/pUlcs9QJeLGzNX5pOFdGmJdWv3OzKGR+81E3CWctvQkwoHCfPKEmwtbgiz73ozYdCWniuMPGZpRMbHx143E54dhcvLkTmKzANSbl5GIcyYdoI3I/+ECGzywqXG+4vE+M4Fx1l11rgz1vJOYPzM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npjNOPWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npjNOPWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFFC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766094833;
	bh=jXQw7kzB96jk2BW8f8z1dBdk/YPczotEDG4EUsOy60Q=;
	h=To:Subject:From:Date:From;
	b=npjNOPWtesENIlcg607U0iLeB5PPTL99lwhZ6K5NeLDJ/m1CkwFvpXeuIMS1WoKAc
	 j+9BQSy/zNN28RrJ8wtbRSBqGufTN5Y8fYluaRWhlygME5Ffo/VX/uBYqEyXfnX5GS
	 b4CCUYfDiJsfwQ5SEH8bobo7KdqGQ9wdVIP3u2OhU5nqHhz88PcoBuJ5DdDCT5+jiY
	 qSKgiXSVNLSSWwhJOB++weQD1uyuouvEqzIILZpmsQhrJX6GhozLyR3Tzcq8BGXudu
	 4r+dhBrB8JK739F/e9wx4OZoEsj8khR8HG6aW56OHd/C/MQXaEKiohl/GYRD8bu8bE
	 zH/+5ZpNNGsXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90992D711C4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609483358.9478.13558655882391368856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530b7810b32b73f8959a8f97148f5261ddcb29bc64c530a74dbd35d3185519fc
Date: Thu, 18 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766094833
