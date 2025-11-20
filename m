Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452AF2ECE8F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763627514; cv=none; b=qgC1a6dDXVHFhnpPw1BIS5vnXRx2Xmy1iC6TzORyo4+vycNP45qKgjPsEGJBg4M7fm6jM9kFfE4s0T4kmZ9/DnyefEIb/zzwFYSRgzaz+KdXJSUk7sFx5WG0pRA/0NbFrlahekeTDk0rKsSslUT2M2/B5O3dEpQBLPRnyz4FdIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763627514; c=relaxed/simple;
	bh=d5lPA1W28PMQZ0Pco7bjv3b01dSreEnUTszg4qJmFP8=;
	h=To:Subject:From:Message-Id:Date; b=uksTytN+XyESX8EaYmLW1nJmV7MppnZosgOEDKOS7PUX8FjVX5gQESPgkSptKqvL/Nv3srRfMp+ZQ4tEQQVk2um3TYAbrBPGWrLwdwHEsBy9v6q41LrDCBO22Hp103qmYc8qAKY+jRz5FrAt7XTFwE1hP7SAKESvVdPw6Cy6Dec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djKSZmfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djKSZmfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EF9C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763627513;
	bh=d5lPA1W28PMQZ0Pco7bjv3b01dSreEnUTszg4qJmFP8=;
	h=To:Subject:From:Date:From;
	b=djKSZmfXQtA+2sFduZHo9W8lYX7J4S2U/0VSA4EhDGEu8xVZAx5avUVQl3kGomBJA
	 YA8Y4F4uc1aD+t5AfCQ9NYsi2TFVtS81IND2OYSP+qMfqKflpN/KK6ufFKPMuH8Nsw
	 48w04UuiwgUDyfHdCxeSvF164+xOuhScLsWTLiGSAqo84DC0K/DmZpQC4LCTcB6zO+
	 e3R1uKzlXrxbJPbv60uORXGgbNPkzUeQVnY126boBifs8wKboHk5gzKQ2ZMXFv1M1s
	 DrWb4kSHMhMd3jpUm+sXJYjy9i+CN0vyCdYWvcfftnt4x1BpsfL7jKX//9BocQSST9
	 e5vUhT+sb6wxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2DCCF855A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362751363.22590.10194048523416496000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249d3ae4c2c49be8f4389222cceb6571cc2e5a2b0c777c8ac91905faae67a73e
Date: Thu, 20 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763627513
