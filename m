Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E79347DD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768173834; cv=none; b=SPuIGKSvNcVrHA59aLpO6mb5mw/J1wn/PDJGax5Fwa0SAO6ZVgudM/mranuE5dKF/kNQkfSrsLFOHXxzI4llVjyHp9MK2XzlMMBYNPAZjxBheZgKeaskj6xIeOEpFzl7xksayoT9+Mcvz06PO6ysMNJwCstIWgndi+Bge+WXRBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768173834; c=relaxed/simple;
	bh=Crix6g6WoOXcLR6CIDBUBbCmZByEQf9mNniwssMiPhs=;
	h=To:Subject:From:Message-Id:Date; b=EG+E+KgECpyKylckT6eaxj7adEg0Ya4KOCTQZ/0HTwPpi91zKADq8oGk4k4bZoEHxa9B0oFwscvsh38SXD+M/usrCJxQvMQcPdMcoTlejrZ4WIx5kzu5WI/WAQUXvXUUNDSZydgUVfcKntPZWp1jTJ8Su62y0DzV7zJNXkkNK34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/qShTtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/qShTtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4983C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768173833;
	bh=Crix6g6WoOXcLR6CIDBUBbCmZByEQf9mNniwssMiPhs=;
	h=To:Subject:From:Date:From;
	b=L/qShTtM0NzXqziJ4ddVhs4A9MErFv1sVD3/Yi2f4Ro27iCPguvYqT9Q+y91G9GFA
	 JCoXm/bSO3HFrQ5YLb1UuF7ayyoM/j7SLPRqL1uVrNC6kXrG/JbMZxyNvMybw0euW0
	 5joyVRdxnrU73kLQg6YlYoO5EwjU/k6ThmRCYnKHOLC1ay95Lb5Ym8h3/wAhler66q
	 lY4COU3jkxcTLzqDcYw+AC+M1PD01GojV5qvLLQj0uFqLrseE5UvV85n8A9QZC3tHQ
	 5SsgadSr6DH9T9kfMVct+DC239WdxQ26zIpGlLTHYH/xZdb9GdYSRM9sIoahx76OEp
	 o2xG6j5R0soGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADBD25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817383358.24359.206257962155992338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2660cbc128eccd60375c1845db925be0313fdc3d57048925fc6489022bda23d
Date: Sun, 11 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768173833
