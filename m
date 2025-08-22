Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D576FBF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755821995; cv=none; b=QJaYWmxAsWFFnO8GBor6iqZe9y7dB+uydGhk5F8jVX87YG2zUJHpqxq47971+TGACXcFujsnsH/qLQni/T5AF3n3LIpXLz90pSRmij3svkxVxx5//1iIOfhQqjmv8+4G7LGme4ipCFQ869veYbMowTPpPkCGHYjZZZfbA48C7Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755821995; c=relaxed/simple;
	bh=mPu4ADlzqmzH5XVEbtmH69vseKAhH1uwvfXrpCXt2Yo=;
	h=To:Subject:From:Message-Id:Date; b=ulFs1i/4tQ4bL8VQFWjvfHawp3H11k85GzqmFX4OGPlbES92MPHksDH7/sFLHbVeSYQkYAG22BUwFg0NDEKzSn6aGwS7phu4K0wU53Fc5xTkXjQDMMn3LbB2oYccniGx1lkQ1r153HSDMImU7LeM075T+2c0gRf4r6QU1UQ4b+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dsaqb0K8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dsaqb0K8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D84C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755821993;
	bh=mPu4ADlzqmzH5XVEbtmH69vseKAhH1uwvfXrpCXt2Yo=;
	h=To:Subject:From:Date:From;
	b=Dsaqb0K8UPsF/xFvfDNsOpbE8xLOXHl2hJsjrZGf2nksUVe242wZ3UveDAi9N80qC
	 zlVU6wrnhcGFvYR1o+vsddD7c+rDqxRsvd/1awMKb0lZBuU3lLwKCvOsfYh3vDKrsS
	 2vtqH8Cq9xWiH8WkKoBSch6cpASlPOV1BBwBRCBf9W5ckjEXmwA5Yz014E9wr98Z50
	 ipEq3kmfSW//HbcHMfYsbkTWFj1Ci5sY50npq+eicoXady5pTb6A3KsJ/0ywPqLd7x
	 MP04u67hgc6KMjAGBYA8b1TT0C/G6n/z64wnkdMzMaq65OWU8//OiOVhksZ0Qeg7kz
	 B3RRVvH0pi5FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA4CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582199357.25197.8838577805150726239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0012a26292eba209541ac6ae43dc88a2123142ef57591c541faad0859a06dd2
Date: Fri, 22 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755821993
