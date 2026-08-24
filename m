Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464CB3F927B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787568034; cv=none; b=IQBl+y/oULy2DKo4BG2s3YYFVOVuFwW1l/hRC6XKn9y9dEHlUczpdRNKmGiClwi7T1flylpriPRaQGStDhXgajNlutfgV4xfhkWUU0fVif6gwYyAVUhvg7bj29mwZj/2widhfqXyfNt/ydByHYUPsPts53DJ1MlVV8kbK4f50y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787568034; c=relaxed/simple;
	bh=yxjnF5vt+vAGmoMJInqYD3b2QhSGrir17xV0RzX3RrY=;
	h=To:Subject:From:Message-Id:Date; b=E/JjRkgy9bwFjpRQ+cx5JUZnGDbCuxlNxz0/iVdLsXFAaNhaQaO6IxS3FWslOToMf3apok4dlEhNGAbDlLveASpeJCx4OR9zde+ye3GvaUTscXfSuwFKFRSSgncvXUcMu+hlAFmuyjAM5OXH/1o+IhdfVWa/Czs51CTY/Kfil90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is8Y+rl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is8Y+rl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9514C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787568033;
	bh=yxjnF5vt+vAGmoMJInqYD3b2QhSGrir17xV0RzX3RrY=;
	h=To:Subject:From:Date:From;
	b=Is8Y+rl7o57RpMNj5eaJjfCkVYw9S4jihLsxToFqlipL0mYd9VYsSS5yDE47Vslwf
	 RxXCwSfpx08jVK47NMVEoKwX0s32Y/pmQRbgeyQZbauOXUWVXs6gHMt0G7YGyxEK34
	 IAz08H3SNGm1euIXfLY6CJMud3jMahv+Jto3haPtWTY73lOjKma/37k7twolob4LuI
	 CrSEQyRNpgfSzsRcswC9pjqik6yxiQ1PqRw150Np6Fd7xdUQdcuF1gOxA7Qp1FjBNZ
	 Ha6Cb38zPxliWZfU464csVtH4nafNZSO0f4aGqmw3y/QriiXePV+qIZ6EY0qNFHi+X
	 wB1SOTIKl+BBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D51C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756803372.32171.9857711419014576275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ad7aa9881934d5d1c91c957281f6d4733a4707a7b7ff40cea07e2a58d25feb
Date: Mon, 24 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787568033
