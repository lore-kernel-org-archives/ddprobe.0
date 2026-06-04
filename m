Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E894175A76
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780581274; cv=none; b=r2vBUdAdc4iy2SkCGm5RSVmC7VcKY6avARZHJpUWVrMwKuAWleVU3kjrteZ+fcUCq1X5l25elH9EO6KoNMxrieaohbn7dBoq7B+q/fwuSDYFhLdwdgKqVGhq9punP8GtmUODdGruDTFHnRTpis/3dJ4x2yNLQowZ3ERMoeZa1mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780581274; c=relaxed/simple;
	bh=LKYnxbnBdJbdoNiUHitcFkUltunVSMfhLgMT4Ud6c48=;
	h=To:Subject:From:Message-Id:Date; b=ZoiASClhiTsvLBCgryxAneO+M6xlqWbJfzr/9FUEf+dA751ct/hHMoZTi3uJaaxqID8sQ4Z+liTOZd6fwmk+kxNu2HQcdMOn4rOccR9pY+cozrkjz5PUZvEG/RG6z9vAGMsCUG+UeJHPkdDcY8Oi76dMoWn2CxyvDZ5U+Kh4/6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mab9sMVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mab9sMVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34E7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780581273;
	bh=LKYnxbnBdJbdoNiUHitcFkUltunVSMfhLgMT4Ud6c48=;
	h=To:Subject:From:Date:From;
	b=mab9sMVM9Y64gfkuJqm5fDUrWnjdEVbDovm1RlRqnIa5fl7wdz0OJ7ACSlIloXOTi
	 Ht047R4rcUFMBUnYJ4ZXfItTTZsVq3yfb+I2WAdmZ/qoUUtbpDE6XSl9Vrrejd87zJ
	 eoIHhJMyNO8G+n8Mtbht3lM79w7sgRoWyjrXtQgJojmZxuNVnb8NFH2KFTp9HJtDiD
	 ttoznfTb8vM+xb/p3jKdS3nlAOdua9nN0HJMPa2NLW/+0JQjwyOiZFsxrGay0zfBf6
	 iooGfTi3BkMhy2eJG5qH3FvncdKrepie5KWyis9imJ7zIycbUuIcrnGRZn8I3W+Vgn
	 zyDIRuKAeCYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE0BCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058127369.4536.15760786684726006902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86a9417e5e529ea619d918ddadcdf05094fcaf079cd71bbfbd03008ec3964ba
Date: Thu, 04 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780581273
