Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC821E00A0
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754147394; cv=none; b=XJ28eaXbwZANQwo0C9bQsYQydaXGP/6I+Ta8wGRzuzMftrOBOigdSRoNNbyEb7Bnh9f+3eUqTYNun22vrk3j3T2sMuGi0ryouxNn2b1eMxnFd2jQdyQ3snyHOvAzyHA9SaaFBOziQnXpQuNJj1Lk9EC1WoTdOeNhrZJVVR1i+co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754147394; c=relaxed/simple;
	bh=ITWAG8CjxLqVo9tOp4R5uFLa2nPIJ8sjo7YuYGIOkMw=;
	h=To:Subject:From:Message-Id:Date; b=dXF0LIDEk9Z63+nPYD5hjnOilGuVeZ+EV8uU8AA9Diq1LXDtsHRs9XABiVadEkM2MFgOd1QxgRJQGh7ezi7XcPSLbVDKVjOGrDYYDmwubnMl84RTZbODXYlVx+rHjEgNpx5ZxnIlURWxnqOnqprhOVamAA4BWxZyTO3B2GuUWwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4ikH0JU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4ikH0JU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754147393;
	bh=ITWAG8CjxLqVo9tOp4R5uFLa2nPIJ8sjo7YuYGIOkMw=;
	h=To:Subject:From:Date:From;
	b=a4ikH0JUH9rIW2EZ63Rnwz1vrFpt3eQGdox/Ja+SuMSm+jSL6qRDCuuHcYxg2lWv7
	 EotQWzlW/FO62AwUnD7rtXSxLePYp0PFk8AzLlYswzl+qLvD8i9dNx4mKsDyF2+fyK
	 cBtj/c0B8X+dXOHbLdwrpnQndNMaGK0YWSBhtKMwgxgyrDiqMN22EU3ZwqWMpL2wn5
	 JkvctubH5V6unQ/SixZJ3W9UJ1uTqhjWDzCJX4fYZoVLECj0I10WJC9yJ2DOx6T5IV
	 X4zz2is10QVqG1FhIxrkl1xbIL1DKgq7WzSTc48Y76ar1EaYjgBDaUJ/ua+d3hyClH
	 cl5h+FtgwurHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92585C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414739357.16694.12565159412273762100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b69cf995feeffb66768fe35fb2e4befce53e23404dbc86205d4d91f0b29361a
Date: Sat, 02 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754147393
