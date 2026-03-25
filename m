Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260EB182D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774407894; cv=none; b=AEqVgEWcNjD4tUUohMzlgaoNtDOa90oJrur1RjIL5UXr7nABFRPNUMJJzLen8s5HJ/5nShCTH7VY/EYkSGWb7ojOo+g3Sz8pzmR10PikjPsFXwbCe1BFSFYVYmLLq5OT882oIN9zfCrr83erLgykk1M5zS16LW5DaE0QFVX3Iow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774407894; c=relaxed/simple;
	bh=ttKSQIBkyboyeFOs1+Lochv/dW7oilc6uCmfaktfr8Q=;
	h=To:Subject:From:Message-Id:Date; b=W6Qmbvh9cQwIEvd79TmdLPKxOcGXuAEPLcf0Y0gZWMn37jjat4Xv4SYGArCvauBXN3AR2Rgdpk/Zth+k8pwad3JmyOZW9OnGCHcGcV3u1fsdDwfWvA84sRvNRnAMzs7ttloNqprh4pIdAs/2klV+FaUcZkCb1Dum2cV8gp+RGIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQot8/+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQot8/+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D8C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774407893;
	bh=ttKSQIBkyboyeFOs1+Lochv/dW7oilc6uCmfaktfr8Q=;
	h=To:Subject:From:Date:From;
	b=IQot8/+WmqqfzBOkxzeA99rQnky7HwfuiWAkOJlZJ0ilGhj+GjyRitsk/JJigA8hp
	 X0na9bgvpgZAk6y5Hjhxif2crqKqbILhPfY+Xalk/415RmmBkLIXscZ7OqobE2BQ1S
	 0bTaZOmhP/tfSNRRlZBM1pTcldWpAZninkBfUghIV/8HHzF6AEXg/jGEeixkI1z6Zy
	 2Y8CKug3WtfauqXmL/Tw3qQFJD+17yt//9rGHQxUzXSSOFr/VBgn4aRyI1tqTjDcwj
	 3U1DDlaRgFemmFOa61isjH0K3RGd5ll21PF9qpw1Sqr+3R1Q5L2q/NsipdMundQtw+
	 cYHs96oWDoGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977FB103A99F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440789358.10251.10730140107706722338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1f47f2f28113697d62f227f9f6f310bbad1b8438281c0e87a594415b540d7b
Date: Wed, 25 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774407893
