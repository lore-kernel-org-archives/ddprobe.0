Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA7175A99
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783988914; cv=none; b=pVcyFgKbHjo8bVver/45diIVSm4elFErBXVRxp3mBOBv06Dq8JMGKle9wlZWKfPa+2O3v+eYzRXUi4vORM41xyB91fycSNGnY+az+CTHKQJ0KUsIlmQSdI7KYcRyEtwZp96IIdT0JIvLx6b81Tl6WRCYAu+ypd6uF2LZN9JA0AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783988914; c=relaxed/simple;
	bh=EwfjYGZuexiAhISgwrVSsMpJe+TFpERBZYC3zxInVL8=;
	h=To:Subject:From:Message-Id:Date; b=TXHFVerSb/MdDKA8eJwhRByYbW4Ce1ET9yMEdKc4Fij9g9rzVydG1HaqnLRxTjMaWzcAfTTaapUMTe3Fi5w94xss2hucBqfICNgiBeMuRJgWigqTbPxtotkzzsTMh/iV+N/+s/QdAZRz2iQezjBKZsrVxYVclo2mGzslv8HW7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHNtachF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHNtachF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA20C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783988913;
	bh=EwfjYGZuexiAhISgwrVSsMpJe+TFpERBZYC3zxInVL8=;
	h=To:Subject:From:Date:From;
	b=DHNtachFZlt1T2wqUZOOgbhlJTvqs87/tYEKFwSDkbZZh1+RzVr0SgYiufdlFSudp
	 QnfSHSZagVcDELSdBzmPZQzdaShm5VmrBrU07WWR7MEe9KqKDphA6f7GgF3YTLfV4Y
	 e/LnPpnCCOzbQxjlgRI2koDzkgdxnQoAat8e7SJGIsvbvOswPvwr2TWKjCuTsdLT41
	 HazW17RyrzKmXePdm+ucBA9VF8BQbVb5ET3xvJqTnMi/PVTu8pWXZ7ipP6ocu2MSL0
	 Jw98jHYSepruoIn0BAVaWyGr/4+41oEl7ZkT/cBJYV6QzzX/GOmq6Tt1kHo/Ufvbwe
	 SltsJWoGPi6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80DBC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398891368.11635.4139482571157140628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b5a9adfb91d5e526cadf1290414ce36f77e05bb03bf81c6c5499bbe0de812e
Date: Tue, 14 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783988913
