Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2644834BA50
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759120794; cv=none; b=WGCTP93Y/phxpGqSEBWLZnw5m6ttPtjwdlqaMs8jg5wKJakOI2sYPGMgyZ5pMaL41s1rTUNcSZKA3Yl/MZ+xPu+HyXTo7Et1CDkkYlB7SaeJAd6hnj2u7JlKFQtIobyhkMuV+6FYZxip2p3EBFT6sxzMzh1OR2DjCQohjr9z6Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759120794; c=relaxed/simple;
	bh=wulbq4NTuX0WYXP8Af1Sxe8b9uXDOkIwvV1MmpN2cFY=;
	h=To:Subject:From:Message-Id:Date; b=MFqoJldJniZktUSBTfm8wPYC3yESuvlWuMUBpGpgWemF2ZnAPKpH3s6B/268majMzC19n5veD95wBII+d4sJIbYonKaeQZrWnkdT0fw3tFFzs7tL8yYYkDs2OyWlb368uZlmX58ijkS5REyeV9UMdlh716v2WIfSvs+OqGFrvLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4dkyhDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4dkyhDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B5EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759120793;
	bh=wulbq4NTuX0WYXP8Af1Sxe8b9uXDOkIwvV1MmpN2cFY=;
	h=To:Subject:From:Date:From;
	b=g4dkyhDHooeChObAImgiJ8r/a2eKrtHG/Ya6k+qI203nSDGteL48eme1fwFPSb77X
	 iUJ6AgbAOK6vzwY5RY3tVALxGCQ9eMLwEb8LIqc4McPSWX1/anoejet3PotjAqC+CR
	 lgJY9RVym9u9P6FQH9IkQ/2AilThLqYBK1ApiT6h7Em6bV0zc3eqUUvTYCEH1C3dP/
	 ibV7F2HMU+BFAhh4t5Tw0tw3v6adYpx8jel5urBD2EtcWm0+TqfTFI5mLjfImCScRZ
	 +JHuv1o2cx+vBcgzznjO5E9ekaH5pGRGPHjiWhWBJ6dcUbVLR/bRo+PWaMFRaDSSyb
	 /TJ+DPzX6WL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA6CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912079358.27171.1695958715001804705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3375e1d7a24875598f96a7465746038d5a6aa3d586bbaf529b40a49fa3c83ece
Date: Mon, 29 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759120793
