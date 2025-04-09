Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465431E47B7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744226996; cv=none; b=bL71nDm91idmWmJkZuAoFh01LmL81Csj6XfDZysnoP/pqsQmFzgxbvlxi5EClQGCeev/GEFU9AZnNBJxcZNTExiDExB/d4/1TAzJgXkbpAuZSG3D4EAjBwixDQaI+L2CopgONE3ESvqdM1NNvKbTOp0v+lEVSVE3XZ0q1dvV290=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744226996; c=relaxed/simple;
	bh=fEnywyVmf9dZ6wl+E8cGI4htYC7QJOEEI/3rbrhXQLs=;
	h=To:Subject:From:Message-Id:Date; b=JS2Gr1EIEIeQ6+V/qqXiYSw7/PAtrTJQj0/s+Ixa8aoysr0ZjuDR+A+yPX2n7015yYQgjjDXKeV6XFfQN+0UcjLoPax13blyMAItpcPDjwj6GblyLSjCZktY7fP9uU/hskqeIgDyOyFIBrF4NoUajH8oYbS5tS45Cd4UMmIQeso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtpqEoDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtpqEoDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE57AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744226993;
	bh=fEnywyVmf9dZ6wl+E8cGI4htYC7QJOEEI/3rbrhXQLs=;
	h=To:Subject:From:Date:From;
	b=ZtpqEoDXI5Mk268Wtfv6TJc0k3sLErx+yMKNgG9RWnDAPBgLJCTR8fYWTVID9IFIE
	 NpSKQ4SeG39z8GWPku7ah8SM5X3IjUJ+coq24wt/kILc/hQuZfHd6r6EO+I3/OzFmB
	 H7DTVB/j8fB2DCFOAaA2iim6Vz1iloAtm4NING6jOpk5Hup2rgsEZTM2+3xDRV7n7y
	 zZP8IAMvtncYDC9K1yt6d1Z4Ec+vj3nflHhj8LkwjYwS29GsJRLgMmzJhbUydNQ4xY
	 puctFwBRf4aSgudyy7HdDoSp5I6n9GAeg8bFDqfAe6fXlWJEDjdZf64mbBV8QiQgHY
	 Te/Y3A8CQuTAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9832CC369A1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422699361.22327.12667621207788279571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6e088897dac38c3d44bbcbce2858fa3bee1e4d3dc5c21267fd5b162e6ca806
Date: Wed, 09 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744226993
