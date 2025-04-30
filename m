Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D7F224FA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745977794; cv=none; b=m29GJCRFmd3PYqF1Ovef/912WACLgNXfaYz+AWqQ1EyUGqDOKv6rS7Nngm0VqZ0vlRXAa7ZCJfQ/Zd/A00fPiMqjH9leTmAw3P9jSR7r5MpSipNTpBTKV9otclI9R5D5O+TqCVkbD4pJGJ/R2PK/ne2l4EugpKGyEyQlC5qYbCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745977794; c=relaxed/simple;
	bh=xWYc5+RN7uLav/15u6YOfKPD5x4jrEP7VfE4i8QTpq4=;
	h=To:Subject:From:Message-Id:Date; b=PpdB4Nt1jf20UXukvqzypRJbOqx1vcbrQdKhBN7hUvXMsbbeFHnfzWAgp9Ylwo7rQ4duFjU9BqKSyyLvjQKcv4EQfqH8za9lZ21nSlgcXXCD/G1vRnpYR4aRgleOmWx8/4fNVids/Wf+atUiV/S3mdWJq+B83fgHTrFHFv6VYyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCna22QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCna22QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E6C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745977793;
	bh=xWYc5+RN7uLav/15u6YOfKPD5x4jrEP7VfE4i8QTpq4=;
	h=To:Subject:From:Date:From;
	b=tCna22QNBsUHKPwUWf5iP37VycITwinV3s8hyuEm+jpeYW6EbfMSynuaZIrNa6ff8
	 U7ycb9PDNilDR4zGx7eDQqTIObRANdamUg3dMz5pK1g/38brF3dtVwHyzltIXsdW2h
	 7CtBalmGUDOafVHNiEGO3LUpt3QGOvhYwNDKXl0YX8ThySUgYaME5OxWvW/fWODYVf
	 I3r94xM6SaeSMKsdozIzGKJBoPJh9Iym2HFRI3ZMXMS/HwBcNF43Hbf9P66KKSBKfQ
	 enCt+/ksPbMGhizs7oXFBkra2hwgWBeskg+pnpeRd1/FVPRntLwwnoaEtR73VnQ47w
	 kf/0k2UnKifcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94369C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597779357.10037.13590294124739525426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a50f6954bedde5274dcacbe73b711d0f72c4b22369d652a7361a960afa46b4
Date: Wed, 30 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745977793
