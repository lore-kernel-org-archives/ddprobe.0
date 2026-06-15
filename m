Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AB619644B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781485594; cv=none; b=EnTz+ne0nl/Bp4Z1VxKEYLgRMHVZtXNWBBMtovEfRjLi+QZRkaqJir1bmOCBTT6PzM3uefyJH45Ry3LpB3XZS9DeIqYorxS98pLv+MAqbITmpXET+xSG1uMAlV/s4H0aK+2AaNvaKI6/g6zN4hEktZJZxjGZSmJCMj+NXOs2psc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781485594; c=relaxed/simple;
	bh=k1/aHoPMWGF1pZXGR5Mlki9DsgRNUF+uE49ZLQ3Ij9M=;
	h=To:Subject:From:Message-Id:Date; b=KhRmyHi7UsZHm3Xh9BPNrn8BPUX3lUzltHB8v04Qn9T+bRMgWbaVDJvDZ8HPLroeTXAfcwPHSaKCOtnTowKXcTvbcdh7VXajIRerirR3hrpatY/ZbehUBjezS8tyR7qNnVs9PzgnaE7EXMMceSigJ0uAWWdTVXquFcSYNS4yxpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOJCXYOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOJCXYOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5DFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781485593;
	bh=k1/aHoPMWGF1pZXGR5Mlki9DsgRNUF+uE49ZLQ3Ij9M=;
	h=To:Subject:From:Date:From;
	b=IOJCXYOBmCVgwkh4iwD6PVf628GH1Z+B1SczJyJ2Rp7qsHjy4reB6cyG1kzed7Wep
	 h9yW0YQo1uQq6Q/gWxeJ2X9kEdwCmp0xxovd7SI23nn/aOlFhdtZFOv+CxQM3vkLXv
	 ssaOaZ8C7YF45x9Lhd3XdLuARoz5jvKOMhtZrS5+fdo+Q8jEsEQjiI92tiiTocggKa
	 vfW4AUGcdAM42CJeh7TtynG7nBEztDzUIpbrqLQ5JmAto3TtQwdZ4amT2JjpNHdcJF
	 uAVcwZBaGgBHLxaRLyD6GU0hnv6KTBa179R0M36z8aUcluoUDOC1PGN1chBanQ6iI5
	 bXRmyptNGFHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDACD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148559368.8630.16615892086248426494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7ed39c880e0f81056a5820f8549b1bf65554a27c4b98a86c943feb9646c807
Date: Mon, 15 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781485593
