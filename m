Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046A42AE70
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767717234; cv=none; b=Ke8q836KVCt3Gn7xG2P1zEY/mcl/f/jsWHV9+cVjyu5dACZUrsmEyVtNS3KWgJpMRnOD1k1n4fONwn2NDgMUt2fsF6G3JbU7xJvue+UcNpbCsaJvle6oBZzRa4QlPSAthQWHbnIP+X+n0AsjUaicg0osh6Phj1gRk5JBv4ohZIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767717234; c=relaxed/simple;
	bh=G+gXojilprF+dTjJPVNozK0FERgIz4e2yb4jsGCpWr4=;
	h=To:Subject:From:Message-Id:Date; b=i8xZLDBj9RbDAljIoUF9BJVlVOb0wx7GyvCvJlm11wd1f79mAtAQgYXFOTn05ePIppdKRgqMIf3W7Xz3avdoZzQRXNclw0St4T6+r2AvND9bxzaBUnT/yK8BO3c2K64Vaw8fYdEZ0o6xY0PNd5sM1uLDxNuh0cBfG2awKZs0Pzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLj77t87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLj77t87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA1EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767717233;
	bh=G+gXojilprF+dTjJPVNozK0FERgIz4e2yb4jsGCpWr4=;
	h=To:Subject:From:Date:From;
	b=LLj77t87dCvnH5YPBhQhz3t78jWojcYWDQDN4gFEFkKGz4KJag1fCr6st4FAIPDPR
	 9HH1RpOwelsvQmb30hg5LycXtuoNZB2FUK+FlyxjndM5nhTEehHyNefCJSs7yuv7DE
	 34KGp668ax3AWsyFO83bLjh4Tl2DC/3/enDso+uozlm1BW+DzXdMRc7QV59ncyM67y
	 Uy/oG6j7KBkrBpRKIgkqkdhaNk5YIo+uakORe3zxmLWPjmY7ak5WWScDlo+0s9srMb
	 FcwPPc6jB2Bf1LiNLSOiuJrnLRE43mhhYJ8SoTcMuMawtVHMxIV0qCt+Of5wiapkLj
	 zumRxK4O3XXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D4CE9D7E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771723358.22239.11980924612421259090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55379af0e450ced642dc15e3a9d6f817b5990726a2448c2ad2c448789b997349
Date: Tue, 06 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767717233
