Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36D1E9B37
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782369454; cv=none; b=I1NcNMMOS8DyAlbXYIC31eNVYZiKIjGHlpWrvVel6fnYBSZ5j8VNz0IZhdiEgiiO20VUZAx/dsqg30KveDH+eJaSJeWCcep8wGz+GQv5/X+bg4j9CL3uVx4s6s0l3j1sswA6rSxQJq8hxJGqL435yZXCSVQUwRco1BGbZZl3F2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782369454; c=relaxed/simple;
	bh=EDChAVrWPkKiRpYYS1U7NtONQ1Yu0WTZMELXkcG756Q=;
	h=To:Subject:From:Message-Id:Date; b=ZsLUAqLMe8/2q8NP86pl/PUqniy2N9Y3tyheZFwS7iT8s/Gft1Vy4Wqq6AJiEVZoxyrFZBvIo9y4cg+35dR/9YmQuqZ1PtJ0RAdTTSkLqUPUCIW0hl9GtGhkiojxlKV9FG3FQgkl7UXhLdKYZOOTe+kjkvvwzwV+5imj1z8z/Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3WX9gVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3WX9gVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA82C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782369453;
	bh=EDChAVrWPkKiRpYYS1U7NtONQ1Yu0WTZMELXkcG756Q=;
	h=To:Subject:From:Date:From;
	b=o3WX9gVS6DujddVcSL+l40X2k/CC92AtswpVNTlA2lkH3GrRWQJcOlPxqJJgF9apZ
	 ITbudKvRkkPqw0UupJ1bcB4FNL3U9fzM5Y5umcgMxAerT+QtD/dn7vRu67F48KcweG
	 mGKV+0ytPX8TT2st1vTheP335hDpxF1jQj+doKJz4M7PGZHGKwdiOgqCAn9aSaHDC7
	 KPlipGhpLNk/42KD1EEyUBjavCk+n/OAjecLOYH0/Z4MqaSOAlXgCRyC/UiizA70nG
	 yatLybtFwge+xarMgMOkseAOcOkOQBkfj9SFFMEqLpnJpRPdEMjE/xYaPAkh8QQCI+
	 LmvdA6FMyrTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE147CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236945370.23548.17764462616373724725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bf9bdfe5b2cf574f08a76d1364d0d76b8ea9467cea113eeb676db6134e50d4
Date: Thu, 25 Jun 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782369453
