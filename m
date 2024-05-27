Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D38E1B95B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716792863; cv=none; b=c9BtkfBRDp3zFkqVXKC89q0dx8FIYNeuQOGnavpvy03G4Ua45deWz2oG5QiFwJ7+u9CluBtiE9wT0JlVJ90eaavOpctanqrAQLKq1GfecW/WwXGXrm6wWbtHQ+3a6ZmzsTzxl6BcSKcIjF01gX3pKmgxQy/nYLg4dCUGJo3dYRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716792863; c=relaxed/simple;
	bh=E777SbIdtLHTluvuxgezukFtMc+6KrWKTu1mJ5lEmdA=;
	h=To:Subject:From:Message-Id:Date; b=bdAdQf7WM7LKyvI2wcMnraETWzMO7Aun4xhMyweM1kV087RyWcma7dKpB5s5/Q96bt+eYl9yZds5RszveUAirjeHjet7rneagQVYsm0RXAUotQIVdRu4yM9R3fEoA3EGS0TDxY9QVbsJDb0N8yhiOrGjqLpVGQi9jAe7YsJn9VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nc5clbIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nc5clbIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FF3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716792862;
	bh=E777SbIdtLHTluvuxgezukFtMc+6KrWKTu1mJ5lEmdA=;
	h=To:Subject:From:Date:From;
	b=nc5clbITjQTLxbMd4yJ27d96C6dM+4TgYXnCkWYWRQ5KmWaBhMI4JxmJ2wm9eaYo3
	 8391vg4dis2vKK67aC3ypIEeEbAEQ0HYOt9w43sU3z/yKAJeFBVGapvi6V6Ytdxff6
	 ExJamv+9tFoE8rrB0vZ3qumYQKwzjvkrj8NbN3y7Y3/rXtE8+kMpPc/8I9iitRsqWX
	 JuLInXsnkT4p2FNTledrn01sKMz2XzbmYqao9KfVj80odyUm0HKZVpCutM5SGOJWRy
	 ErTMePmaTMp15PHiLXgNxWDkH8DW81KvCG66mVVWpJh/xWZBTvUvcN3CgA7tbsM4pP
	 zmINlYYUiRdig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36FCC25B7C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679286278.4717.16917471264594784718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce924486dce99a0a4483d02fed75ccd2e34958c81dcaa912b065cd794c0feed5
Date: Mon, 27 May 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716792862
