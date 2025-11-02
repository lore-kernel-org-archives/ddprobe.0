Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A89C2FB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762109994; cv=none; b=m2ePv7MytO+hUK36JOoTLfHAkRo6QGjj7DMYevkuNX5r0Ba/tfZIPElaCFF7FMLps5E2GVZ00h+x1fb1LfxnEVqpv4WQVGZUT1smkPZ0fp0ayOY7Mz0kYpErqkm/Vn3m0+LeLdJzI6gtcrvGGrjwyCRA972isLqzHpk5AzOVBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762109994; c=relaxed/simple;
	bh=P3sNOkKoCz4NmxNAc4eTtCmts8U6EQ6yzENWoEo0+Xo=;
	h=To:Subject:From:Message-Id:Date; b=gQjVLIE9ezitCouJUWeEfy2jd2XYMhR96rLE0+mC5fOPG3bqmy28PLInVi9zGuelEIDjzwmhGN1GhNkmhiJcTfYuIdC0sJ2ziaNCkpMNNm4s9RjgkarhgCHOqUx1unIjMisr6LNoAplI6pt2ZHKp5NuXesSASmm+rDWYj3Kt2cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeEUJvrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeEUJvrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9E8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762109993;
	bh=P3sNOkKoCz4NmxNAc4eTtCmts8U6EQ6yzENWoEo0+Xo=;
	h=To:Subject:From:Date:From;
	b=CeEUJvrzAm9i9skypShLKG8k+AQvZcTcG/IHc6RbAiiEwayOvRIuCqdhhVc+Qd5YX
	 R9LVphnel8Qx9mLY5W88lvLY31mA3OOYNMFqBSdG5cOc7tRkfTmpY9WMJs4ciPHzci
	 ViF3Kyo2bWOSEtTC7Q2oWhYPpKoBLsbfBRR+k6cOrnc2nAHU8eBpLWxrUrWS9wI4tu
	 31kyAUmowYMYERd59t/Gn9QR4IbmfIj8xaVO3qZ9GjUTOuoojW2T1lm0pjoiUhqj4b
	 saQ94XHuCDfp+4I5d1DxxAdFBl8bSnPPo1xwV+JdLFEAloQQ6xuGihtTyfcErw/jFE
	 9/NXwZU2Vi1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90372CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210999358.32583.14616830204987442146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc686cb59921e8567420d7a430df5b6ecf6af2b7e36f3c604f6b95445a9448c7
Date: Sun, 02 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762109993
