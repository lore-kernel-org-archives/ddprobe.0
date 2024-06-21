Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D8B1607B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719003143; cv=none; b=SDPnkbmaYxFB8l985UxdPOjYI6UGSKOVhT+hxRdbSge5k9LjXCA7/0uVdEvf9eud7BWlCkPIo4KfxMHufXqI7LKKkLWIIyz+hUGMFAlMczCJlf8ltnmwd899HRO96weblWIOgrHw0GYjpbyt06oZVvzVnmnyKh5VUFQ+WhWp9mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719003143; c=relaxed/simple;
	bh=zoj/3Ue+PklvQfab/+Y3bk3ZivFumhbXLbbnq8DI8ew=;
	h=To:Subject:From:Message-Id:Date; b=RJbtt2IB8BQbkMfnxcj8d3T6Gl2+8ua/2R2LQR0RkfgWe+IQvmaMLFS/KX0HMzloRHEsXT+1fvUeeLc09+s9nc03JTlhKJKIVeYZAzJTI3WSlARE7PmlA679yHPhrEubPp2LcMaHCO4j80D/H2tB+cVqHSl10A73nBQTzsLqpY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+BiaKFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+BiaKFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9937C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719003142;
	bh=zoj/3Ue+PklvQfab/+Y3bk3ZivFumhbXLbbnq8DI8ew=;
	h=To:Subject:From:Date:From;
	b=R+BiaKFFjuKxhn3JYImh/pEHkTyZs9Wt5CODLIW80xOZok7AoovtBlk6DfUIzd95f
	 +L0ZiHmyKdjp4jMqSH5vsyd3zBR3UGD/85uURre26KVZqygOv7fYg8Pcv16HX+gmDL
	 TYVq31kNV6vtZHRcjEdMWve72ILB/WcNHWWg8puiurBimWu+lOKffK64eTdZWNJF7t
	 1oWZOSedhCsP9DBM7Qh4cncwiaVspidaE6YxJNcxC1/hctBEnxlKz+JDhJugMD4uNr
	 9gt7i91+pgvQKD8QyHDU9+pmO09EMMr1NmFrQqp1ArFFRe9gD8jhHY6dRTtZplt2nl
	 NlySyLazq0qfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D271AC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900314284.11474.14301609366219002294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d3ee4b454c5df169b9132651752885844fc9fb02cee8afde2a98f70d4a5aa7
Date: Fri, 21 Jun 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719003142
