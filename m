Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D437B666
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745350195; cv=none; b=KMmeeBWo1LimLrzyr1WZIBzU3PV1W0k9G8IZYKmaxk/ngWD5zOAVDiK79BjsBOVVwZ6IG+ybFIprOGi7bqjvcw2JnoxkBa6k2E2oMVj0zyN6wo2M5knRmF1oFqPVjeRwHTPG9sbu/fbSHo/aNx2URJVQ9EH5/4psezV2TfH7bjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745350195; c=relaxed/simple;
	bh=lYo3Ro2Ii0DE4zJV1c4mBE3n5fkE9pwuAKstJD6E088=;
	h=To:Subject:From:Message-Id:Date; b=Qtc/XYrnz7i4M0/Scspn0pbk9v1Ruu602ME63AlKSKK9Nm1KkhMHSgUe1PzFgPMJGeTQzNuyq38s1EguREhowV2Xq6QShl5h94/LL+lDDYrCPvB1pqJwdoJcYzEmVWGXNZScT+dY/eoBrHCLS3sJxuQXAIAp59Gf7xApkFoan6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXRv8EaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXRv8EaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745350193;
	bh=lYo3Ro2Ii0DE4zJV1c4mBE3n5fkE9pwuAKstJD6E088=;
	h=To:Subject:From:Date:From;
	b=FXRv8EaTn0dq/pYKDxtcnvA8lAH7vFv7iOiCpbdzM2gBpQDZT3IuXU5ZPv5hyK7yC
	 /O65fx6Qi9labBBpyZZZQVKCKWmCfktVXf2q7ObEhJ1cv4qNjREc0qGa1gftuSqWpt
	 Ces2HkO59IuHUX2+6W8P/vxO8wRsBLdO0mLUqAd3lyLkKONoFvZKnrLsq3xhTmeqNG
	 XqRw+1821SK4hC96Z4NG8rjQPNUcW0vb3YLPzyDPZJ15kHA4tlYpNrsm42hPiZhjce
	 +C+icZhFT1nXcU/f/rbjsbhKJtnzON0ZGTscCE1vgY9rS3ND6uwcDPIt0Hbo6DYl02
	 KeP4kXt16bsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535019357.24356.8102059991866979541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101cc7c7351e1d6d3c38936112f99ae34561326d8d63933d8728b724ea8f8e17
Date: Tue, 22 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745350193
