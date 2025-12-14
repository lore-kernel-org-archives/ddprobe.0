Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0DB1A9B46
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765695174; cv=none; b=TM4vYcJOCXYZ1iWQ0XS5kqdL9DFq3gfoIkSea+Jujff1R9MaMHYMU+gGd+zm8a5vHASrvKLswxz8AZLRsQkPD3P4SDkdmZMpY0LhInN6WrXAkwy6Vz7cOexkrWWfZU4MLXkXb2mj9BRK78Kkb3NFUGq7Nc+kKh/uirZQRrTg+Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765695174; c=relaxed/simple;
	bh=jUJrGSusMZR7n/FCunkLo+r8CBLQ+MOBKjrBeCHkrTw=;
	h=To:Subject:From:Message-Id:Date; b=gQh3UkKJpeWlPCe/kR6SJPw3rScytvPGC2O1nGkT8mUtolE9RgM3Q/7Pi5Z0WjscUvftXI8UrXsf3Ng+4Lab0BJAB3RRtgSycvtxRYyt5kmUSRzmTjleuISfB5ZlT8JCaAFL3BWtYVvaKSTv/pJca0OWH3CM2Of2g65fk5/cHcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHC/yIeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHC/yIeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE094C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765695173;
	bh=jUJrGSusMZR7n/FCunkLo+r8CBLQ+MOBKjrBeCHkrTw=;
	h=To:Subject:From:Date:From;
	b=JHC/yIeK3GQbw5SDe9I8M3SiWsuFb26Xcu6B0itSe8Lxwo60QCdH2sTlcxDxqKFGP
	 HZRlgBRemwld1eT18tJ0DCdr9W1uz+9dUKkyqKTPy91tIlG9YRD4tybwJ1lSLPymbD
	 +E5dxPEHdoAwUlea0KYXs32V1qcZQ/Ev2OJPk96TwW4Bci7bqB5veroPSjTgZHu+op
	 sgUgDqHqGEiAyznRGxT46bp0SBurPlHs1uWo1LGWgzpsx6oiw/1eK5ynfqiTzH6etG
	 YDomF9MuzSsSeXdcz2gGV/C3KCNd5U2ZklakNDL3Fuss4biE37ZQG46j98kl+7tGI+
	 E+7ts1O7Iq52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97143CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569517359.20284.1336878870505230663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0492f07240dc793436717daf1af9baed563aa1704fcba141c9333fb249c8656d
Date: Sun, 14 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765695173
