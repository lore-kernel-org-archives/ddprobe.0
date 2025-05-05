Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7021E5B66
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746433194; cv=none; b=vDOX1yTpCKkhB3FqAilpsUTJb9IgkHEYGnedrifNLDNmTV8nYPsqcXmKJqEafy+F89r3jv5s3PO0GAl8QR2tOcjB3xLQ/5slr1bCEKe+zWXE9jATtQ6ILh76HP5BMLFUrgLtx6wFQpsPQmkxdu772gICfdzhzb/Vjwub8rXuqyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746433194; c=relaxed/simple;
	bh=azjyGrwVpJPKDFDizG6LE+aAvsE6IixouiKbBkbX/kg=;
	h=To:Subject:From:Message-Id:Date; b=Kzljx1RrHZ4FsyydL9O5IJIRkCJR4il55XEffcwZ5kVBrjwUNs+xiT9PNqRCL0HAbyMiaBBOQOITPdTyI6+r1zc0SUeyGlP8EST/LHJgpmLvAW6DnTmywt8W1yVTIZGdJ/Wak1UpjVQGe4Wq+UFUzZSESN3DAg6+5zv6rMEaG2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdM5/dbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdM5/dbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D71C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746433193;
	bh=azjyGrwVpJPKDFDizG6LE+aAvsE6IixouiKbBkbX/kg=;
	h=To:Subject:From:Date:From;
	b=cdM5/dbv8g49hBCJM86pJ7r583JX/BzJVuy/rplPLxUxEJ4PDlpFxJUjLpu5Nk6jf
	 TSCXmRdNxXrSXFbJrPnauoD8rEI6uPDp2MZ8TXjZKMkpOfUvA4mMtAHaVXb+99nhiV
	 IpmLPXckme3PpytBuY2qveiPQqg3/cG18ilMIvcRjrC4OorbGYa3Jgw1f7lyvqzvgK
	 q+5tO5Z+To+sgPxyJSdZWR2AM/loKsB10SGtJXc1RL4ziIaJZFm8v+qoQRif7AmGG2
	 ssGVWSGYGMi/VAGimsKbcnxrLdpR7se07bRD6QVR1m+Or0hJ0sW5bWo2aec1poKDMD
	 r04SH+arA6VCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91749C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643319358.17639.1456737737693308575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3806c79f1b1d842ecce0cf65655a36a54e324303997622c6489d3a44ce3172f
Date: Mon, 05 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746433193
