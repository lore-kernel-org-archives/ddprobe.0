Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0DE1CA84
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759273794; cv=none; b=tfBlwJ1T6N4sHU7kr5mFX8OmvVQkwZvrqEthwTLwale3fKMPp2CktJscnemvQhF0NXGrrDKO+Owwz4CF0JdqY2QfoIEYS+X1leQx9ISSGcWQZIfyFKjclkqo3/wa7AmyI7LmMQCJshy+kvCOGSBYm2MV+cHRD0Rob40h/Rn1lc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759273794; c=relaxed/simple;
	bh=/29v8KCWO8e/In9bhnZm8BLkko7m6klK0QU40lwno4E=;
	h=To:Subject:From:Message-Id:Date; b=L2lspUoqw9O9k4VkcRb1xBvnQdnAalkHz8BFdNezC3ZOVRj1e6LXtLxmlymdwl48RJPqsgMKjfdSNA24JCIA5jNuRE1gGOP0xgL9ybEjVwrGrDPYY/r4zai5yT8y6ZINQH5lmk4HzWLjGH+j1C59eaV+YlPQ+Y8tNr4Ewmxcu6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8nKpca6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8nKpca6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DFAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759273793;
	bh=/29v8KCWO8e/In9bhnZm8BLkko7m6klK0QU40lwno4E=;
	h=To:Subject:From:Date:From;
	b=s8nKpca6fH5iOFQij3l/hBx2l41DUxqIY8OwCUgDW/x356VWFJmziyFAXo4VPY2Oo
	 i6vX0MaePCOSdx41NHYH/oogDrv+ISGpAdflqwIRCgT343aXbRH8CuTGCOS2xzFoR6
	 OLd6GpEUO4R/WP8pb6QJO/qh70AK//8+VDyrJ1I6J0NPhSvQtN/mkz0cC5cx9/khfZ
	 8hHSoArnbcv+HeywqxaK72GMTiBpzuWxkwtO9QRNYEzzfPXIaEoWoUOxU0LeAjTyNm
	 03AuRoFKgIRN8LuXEs3JUmDiT6BhajEp2jMtD+eQ8aAl6cY/bbihS8TxnLRqnTkA+d
	 IM58W2w4OsFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEECAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927379358.14779.10085259162373746532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3976a706d2525d44f89e5b21a3b2529fe55451e8c720b1c8922ff8463942db7f
Date: Tue, 30 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759273793
