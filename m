Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2B730C625
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771622094; cv=none; b=nCMr2IERbDLK7QTZ0OZfTu65VWdZw4/Tg7lduOy1AH05PAJgJK5ADULLL7dKEuDk+mzkOsdblu55tnELwMuPEKT3cLxSxKwuyDaiX6gzBWhAAbA0MzWok7xWh8J02lTp2e5cP3IJWW9SmGzMxVhZQ+kN7ybC8r6ddjcA54zlTLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771622094; c=relaxed/simple;
	bh=5Jn8gvcWDSFz5kPe0Ys9EnLZorZBLhgiKjKTcIGzdVE=;
	h=To:Subject:From:Message-Id:Date; b=uE7IgpVYVQYycXN3Fn9udRRQQt/kb7iHHU2Arkr3uhG+ZDo1wH+N9SQuFbTbF83zslmwtjOCR62agUtI+UtRMVSd9L1kO/OqCKkKpXr1Y8y6PpotHHbWKG+/eTNUbz+d+of3gxJiuylSUzLwc2gnOvds+JzhEnz/BnXNI4R3I/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUp0CFgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUp0CFgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F74C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771622093;
	bh=5Jn8gvcWDSFz5kPe0Ys9EnLZorZBLhgiKjKTcIGzdVE=;
	h=To:Subject:From:Date:From;
	b=sUp0CFgAqD6Tj5w2ynBR8+LTpWaqXPFQCIIqUglKXZ/HMC1iZbJP5TYXBNbPlUi+H
	 aI3Si8xyhjddn8Hq3v7sJ9m/bvSSHTA6zdpBzVtC4wuLsibRhPsC5HQgVHhlqb34K9
	 A6bJGC5OPFV89MWd4R9kiYV8tm849jSqO1WpKOnfmETqNdwqyJEdWv9poWLA1xGAmE
	 72H8ragT6sCYyhpCPi0W4bCzLTiNTzGFlyyeORjmb56ZWDuou+BnhCZ3LcvgkCx6mR
	 XsDaRUbpn2mJlUbgwKXy1LbD6f/E/411zHIcqQqDJl/gAtHevJe6p7UOzh9ZuuZXLH
	 bHRf7G5RcrppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9883BC5B56A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162209361.29200.12024132342561266859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536d94ffcadbcc8faae6d0302627dded7ac76e046fbb7b65d4ff18d3c7eff4eb
Date: Fri, 20 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771622093
