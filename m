Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20B24C077
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747900194; cv=none; b=khFfwDBvxDdjgd95XOcrehWSYcC2GsOLYegkDMQCNuYAV+NXiB3MWGZNdYm+1TkQOQVnABFgCzUD7R98NOFrAqGOuv+2a+f+Yg29QkpfSjcdQfeJakSL9w5tZHSh+MczHzQurqzdLO/WGKEiu65LEr3FLP8PRAcUpz/RZPx3/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747900194; c=relaxed/simple;
	bh=BLb6O8AJphuzYUeg6uizwejYcEVuXM/Csea4Qz8JdZE=;
	h=To:Subject:From:Message-Id:Date; b=DBa3hns2i8mjViPk3Uhc4Mm3n1iEqFmUZnpeLzjFCKroybAX4EuuZrNWZjxxuxmY2ZNPDpKzfvS65vJ4rnxVm+cbSMYZDkI07fCvzCZkQhz9ZOQtjxMNwirHNydbBZ7LeSUvO41SFBE/FUs0u42bmC7QvmErmJ3Dtj3vR5nZT+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgjAmiVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgjAmiVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E41FC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747900193;
	bh=BLb6O8AJphuzYUeg6uizwejYcEVuXM/Csea4Qz8JdZE=;
	h=To:Subject:From:Date:From;
	b=fgjAmiVx3cdCAFb/NnHjBkeCjrPc6mc2asdYOgsXAlKax2A2zq0sFzrlf0KaD+hPV
	 171NCWAMkfgArF5Lp2j0YsNxtI8h+DOWm6PyxChWlUmexZRR54DXDRp8mLZ2CRZolm
	 Mft73kOwAAynnlM2AVjuEANPEVEpgtRooP0xO+1hzSa2rufsvcVUpf0G7YOzDHwFwv
	 GlsLo4NQ3RSz8XWMAW8ADiOeacbR+Yq/gQgIP4zMiT7gPsCdJcFdUsMwe//c+IzBHA
	 9gZyvzHRdcCX+YQqcEU5icfXDyk7iYHd7dhfIxOj0n4XZLvkgtUMyawsTX3mIN5pTk
	 65BBcqXObR2kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED3C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790019357.3614.18072156178178968149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e867c9dbe5891e257dd0cf35acd2f6cdabe4819e93ce537ea3fee05fe0102bfd
Date: Thu, 22 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747900193
