Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465AA1FECA9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741129734; cv=none; b=bu8i4mRuxBfT+nY9jfRpzEeh/W1F1sUx3r5k4PCXr7XfpdE2zM0+nbKHjYfWNJSuk+gm6LFFbgzwNgRTCa2eRMV8JYKwuKNqY5XD4olWbq7N4gPHupDmuhg2vNbzYvtu/wYLjIjpth/04+WOBDVQdHDrzd4bxQNePqnlkzaUOWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741129734; c=relaxed/simple;
	bh=mDxoS1yYxXCXkKL8X9mFYKpmxXyPWJAEmfT8x6fzRTQ=;
	h=To:Subject:From:Message-Id:Date; b=RAv8AhZmAGJhwy+wQJgGZVTFfVC+dVdIK5rIXXX/3gsPg5w8493CvfVQlG7XaxjKFDKiCqMGMBJgqicPurHDACxi+ku/VOLrPtwU5IRRwFP4yA0OB1z2qIrmxR2OXwXu5MXII63vBDYNwuvHNIBUKkHSbWHlzJGALjQWYp8/ExI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdBpVgQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdBpVgQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3099C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741129733;
	bh=mDxoS1yYxXCXkKL8X9mFYKpmxXyPWJAEmfT8x6fzRTQ=;
	h=To:Subject:From:Date:From;
	b=XdBpVgQx6ulVbKysf8FXS0CMimUwxy3Mz/OaoH0Pf/LWQch6+k6Z19h21NKEAJS5x
	 vffAQe74yERJHlNIu9by/oFM9wcYilIynGKeujCh+9M9LbTOg6xbSkLPSTDzUiE3eG
	 /+tcxvPBYaYb2tY0Z3tCDac+VI7B3iy7vLbeEOKMfV/GIuwx52FVsTRTzgVQkly/Xb
	 ZehM99Q2tbrZSi6jKzI/hqG69ERU4U6ysLmnaQJH/Jo2gHu8T0bLDlX4WB6rUrgbo4
	 acOC5hOwtNHqrv9btPjeDprh+LL3Inh3i2dUEw+ZIesf3ycntcaLNqRDUktCKAq19f
	 Jf65fD/AD5bAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D2FC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112973360.30253.12275422073626108741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499283932db5a8ef5f383e492d17e12d619a6fc6640fbe537dcf79e995d85b5d
Date: Tue, 04 Mar 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741129733
