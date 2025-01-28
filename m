Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD0B198E78
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738057555; cv=none; b=rMu/GYGRBkCnCvmJCeMzE50KQwVHIgsqcCEUGO7aTIaCA8pT/JFXvOh/h7smuTF2EQ5lI4T4vtFPUp1WbeK39lUcbRZxS12+IvNzX4Yst0Ms72mRVLDHhyWe/WcQ+CsGvv5DlaFXfNWqd881jY/xbmROS7nJAWt6F+MLQnAZb7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738057555; c=relaxed/simple;
	bh=HqVBHFh4uzhqL2srgPW+2c550BGXH2Xq86hH2/6yb2M=;
	h=To:Subject:From:Message-Id:Date; b=q8tvSnTrqVum/BJj76+QqLk+M40AKdVWHzxPQAuBO8LIQBrlTgJzyPSb0rukivDFInYJintghP4lq0vzM5JTCZgp/a7S3zYsfJMGkKIfzHbydi1u7QcCyk1RU9o/EdUkMaoN5epnwdvvDeLSAqWA89KJsh0RRL+sNSbLZGtJzbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB36IL8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB36IL8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47A7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738057553;
	bh=HqVBHFh4uzhqL2srgPW+2c550BGXH2Xq86hH2/6yb2M=;
	h=To:Subject:From:Date:From;
	b=vB36IL8AMcLfDnqr/zMLQC+4KvPULzBoxgpXM7ZWVWlHZQcGHcSujlxSxuZmlSq/e
	 iBByPGMj9cHOHxwWWxoa5Hn2Q6LaqhlLYtXGBKhaUHCxvWvxuOKsi3fKAK8LrmQX8u
	 BFpEbHQy7qk9ipX7bAVJhs4RGtUysfSavyO/kNs801V3hwzGWbKuiSfTKQjWyqZqGr
	 UOTI4D7DiUadudQZKr7ZWdk5IEvbZcLUFv8UIREduYIYa8aDAHVWr0KrSvJ3yXUY0T
	 55kBrjxKuHbrXE0AFM2vAK1sDdv87a4bjAhd8RknxCdjEDH/2X/DKK8liiN5mazvfn
	 1JjlNZFCsPP8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A887CC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805755366.25083.10289557219159727834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b2f57db7e65c6df39cea563032c9c30e078b7954e13caac7b86b454dbd1d834
Date: Tue, 28 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738057553
