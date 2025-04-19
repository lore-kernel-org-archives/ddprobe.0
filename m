Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C1D1D9A49
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745096394; cv=none; b=KXYT5Til4Xy+h/zmbelpt+HiYxGYEeAp+BOZvQt8F7CfpoX2GsC4rUFgwmcnXGHj0pRbT4AtEVwEZ+4cnvvWSpN4DsGhSIAkbzAwHDzJVT6/sQAoubKBUYluf7LYc1BhXbrE661Ts5x8xMnYvjBSuHzse+AobE17CBWTwEOkijs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745096394; c=relaxed/simple;
	bh=3jPASR7IzYx5PpjZdVbWgqoyJPxPrdRtvM/W+aXMwVA=;
	h=To:Subject:From:Message-Id:Date; b=NQxA468hP5dhqBhX+Kq0EWkWXYKDRYgEz2aXtbYljOv6GXU+lgq+A+GBAmVKEgUgMkaYZLoU+sBipmABBHa0ddlv3hImgSNTcLWnR4TRRLo/lqnIMwSB3EcyyXscl7ejpcjZXaN/0NDrZvi4B3zdTfncyCVscn3A3mndCxaI3uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoufVtte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoufVtte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8306C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745096393;
	bh=3jPASR7IzYx5PpjZdVbWgqoyJPxPrdRtvM/W+aXMwVA=;
	h=To:Subject:From:Date:From;
	b=EoufVttelCOEnNwfPpFd820BUcADFRX+hee9K1iJUOvZ+TDsWXZTuq5C81DrL4Ihn
	 UdVpLR9671u451jrhd5SKfjw8kliklqsHxydmmtzJprYuci5OKhPluqAJbQ3dH2lFw
	 CBvhEB+wMAonQV/xoD5j/G0N3LrtWODoDRC2I3wy0MV4XPti05Ge0szDxfm8XqrZ4q
	 v2GJcdO9chKTmnnKuALoTAUcYEBJdXBzYOu3/s91hDDPQZFy44BLfVuMH1rduMwaRu
	 vz7tCp4EGxsvvljihPA3ESWYN+woVO/iB/OVzJVqSavpAVUYPuqOP2PT+bFd0bZo4Y
	 8QSN2EUIQeJyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E3FC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509639363.32343.2546715075892106279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895775c1ff305d7dbe755268b697dadfaefe5856d338f9eae32042d97f1f707d
Date: Sat, 19 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745096393
