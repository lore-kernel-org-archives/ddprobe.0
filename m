Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180352DCF55
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777320454; cv=none; b=HwdlqPosDrVnrOHwZDSOy0Uco4val32cRyvRy95rUAlVTJ9gjfOGHANSFVgXSs2ed/QUOj2b4cVHbXtaL42QqGBm5Bf9IQcQfbJYyYf90kIFhehIrlQI7d7l4NbVGzfdp7HZTdtIvH970JniR67ddZDw/QrLvnw5dwaP4G4nxCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777320454; c=relaxed/simple;
	bh=pHaAqD85tc3iBvjpfJBo+fFA4QXsopqwcMySauF7ZTY=;
	h=To:Subject:From:Message-Id:Date; b=S5g9gknYk+zOYZ8wS/uXYm7UxsLwSRMYZp3nKHGbJwwrfcOhC+4QICPNQPCbpzdYR9O6G6X4iy0hQzyuZGCA/z5zcrqBsFTTb/GuEUlT/9NM1VbtMJ1IPmYJ4p1Rg6mnC5O7SHZv35zhpo86b3sWQZvv1EDh24CaWpILw2B9V0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpWSuZjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpWSuZjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC43C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777320453;
	bh=pHaAqD85tc3iBvjpfJBo+fFA4QXsopqwcMySauF7ZTY=;
	h=To:Subject:From:Date:From;
	b=cpWSuZjfK8vOVmGtRi+n2DDr6dTxFbCV8YbGQpqm38y5oWpuW5V1J7lM1PTVvo6IL
	 Yq+7Bh+MGjeXlS/cQwQZXI+OMJovki43T6EBzcF6ZoWrzuTPhCwMLGDUCZa7mytVTW
	 ZYvTFp/eLivytZwzVcr9BSUXasgk3F+c0MIGldX4HS0EMb7dgy6eDdfaqYBYKW5Jko
	 qjxPQjNsZHsPRe4CpFMsQ5J6pW7OPl6xcRXcXHuK3Yp/Ia46qL+qUAJTSUI/5t4rp/
	 CNC9TqlsAYi8+ruQGnLsBrDh2xIBrkFybYdCBiKBQyM28mi15OvS6Kk85T3rasAAzN
	 Lqq9N/GoyhyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD010FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732045368.21434.15989779465568441059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6d850aaf5312e133ab18af485e03be3df20ea9b3355a69bd35e4c36b5d3779
Date: Mon, 27 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777320453
