Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FE11B87C9
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762921194; cv=none; b=PxtnQz4uQNKwWh/LPukbEWTh6cGCX7Vov3nNqe2O+BmawoxInT7FtvAVodFlCddqoBtzdMDN/2xqj3sSPGs4Oli4UYjw7re82Q3yg0Le2Vr9O9K4k7NLs3+Z4zIrOL+uXtmsFVqe37NOT8zdLSrBU4uTiBl6HJU13voAFg0vBa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762921194; c=relaxed/simple;
	bh=LSpqA4B6MVgpuw/aZQBqz7jMop3DFIj0icrbALj05u4=;
	h=To:Subject:From:Message-Id:Date; b=WRbNYQBpXa9gem7ddr+yXj5uavATs4O1nHoXtLlfFxgNWJahu/PZNwsH4XT25lsvy+mEYULw7/sV98Nrlk2cGG9DbzfSWX67y9YOPhAA2uuRxsuc7EUsTa18O6b+5mtkOFc8FWz2OIUATySTdn5camx21ZNGNqKYkucHBvtO+q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzlzjdkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzlzjdkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13CFC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762921193;
	bh=LSpqA4B6MVgpuw/aZQBqz7jMop3DFIj0icrbALj05u4=;
	h=To:Subject:From:Date:From;
	b=hzlzjdkcEuekfXugP9qf34SUFV0GNBaMz1CgPt3Ku4E3Oq/u01tg178u1JhR5SKTj
	 RHT9dJsiMPJSTFimP7wZWzV5k0jp2tNh+eTA0l7PSz687ec5GKZrkroWviy26fk0eg
	 n6pwxhEwMEoMb5tpsD8SA6SY96gHoQOzRtx3TS6yILmMh2gjPNr4SahU8Skxn7xjZf
	 HoiBpb6v9SUORKEiATh//lU8lv5x6Tcjqyuj4Jb54vaAEIgM281Wjx9eXo+S/6O/Rw
	 axedrBy3X41++AYwge5LK0kj/ehDCubYAGvY2oT01QJr/Ch3L2S5MUo4EoBR0SyNP+
	 TwLJCDmmyx8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0BCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292119359.1709.16865288220263226357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff594a4debb4825fc363c6e87c8849f2cbabeab8b373cd7cba2fb26dbe433734
Date: Wed, 12 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762921193
