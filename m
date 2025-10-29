Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDBE19AD90
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761728994; cv=none; b=rbbn5DI79MifoV4gTKF5mee0G9gX3Hu+Vda2Q51xBTBdQUtN0kIYx4p1EA7zO9Ow7vw07yca7idCS1Xt64TyNG6SvcPwyLL3g8WC0WT8MS6/eEZmMh7S3ztsVdi0SjdbP71l42RDN9iSShAoSBbMtErVa0PfNprENQXLd2M7zKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761728994; c=relaxed/simple;
	bh=ejXNYCZ4KwCq0BX3QJkvIwG6+aaMyKE+zDs07ayEPLg=;
	h=To:Subject:From:Message-Id:Date; b=ldBiRqfZA0QfU+Cdpop6xYFV4QFr8CvmH8BtJMpfFojijy0KbNiyJnmrNSMDizmmR081hdaUb71aOEKPowA+rqrmpEeHvqrAOTDXTYXuNAqdQ7eAUyVDP9UDbfS2dojzzRMtrtwE08si2Bt2IY9v6Nu8Gumgsbx+eES0lSWL5ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzb23TRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzb23TRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A532EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761728993;
	bh=ejXNYCZ4KwCq0BX3QJkvIwG6+aaMyKE+zDs07ayEPLg=;
	h=To:Subject:From:Date:From;
	b=tzb23TRmpokdET2iWgTYwmMBRbD1WHmBj5iN+CBM2TjIrWzU04GlUDa2oJwgvG6LA
	 eCjwrMMCTHyztyNJGMRKVL/5hD2UtY81R0ORi/w+MEdu4YbVJAXtLwOO11Ev6rF0In
	 yFCmr+q9HOHPKyI/eU/pLtP0C8DoK6PaIkdPzT2onoCW7ma7mXyEmmo8pDJ1EL3tyt
	 J0kaQvgh/VEDPaLb9BvwRYcWxG70fJBgFwksqVaRen9j34CGg7XNp0i3zKO0rwM7AN
	 Cx+c1meR+9iQ6EOLcpK5HC9iMst9TLwv463ZRoxRAqQyHx/vJIhNESgTHagNY8aYB6
	 Wdnuc5zV0NUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DACCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172899358.30341.14285810690048152582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc7ebe02631ec8f56d0a5fc64d45a7386e881ccc53d0ed53f1807f6c0e4c773
Date: Wed, 29 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761728993
