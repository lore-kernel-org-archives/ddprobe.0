Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CA58BF6
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713684023; cv=none; b=p9V6i5E3D2RFhuBauCI8BmAot3WUv4WOJ4FuFsbMaxAtV/W/EGOViY5sCn9l1mg50fGFm3NozL0mNX62njw+pnKijD+fyFMlQjUkysltLpy7ZdiTgwvRjyBf6VG5yV7ExlQrcyLkZponkH6fXY8FL4ODXdBUUu/6T4AbxNOTwnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713684023; c=relaxed/simple;
	bh=n+xMNJ+ssdwFy3PHSOi72ug9UPCMRu6GawAsZ/jlK0s=;
	h=To:Subject:From:Message-Id:Date; b=eZpqB2aIENIAZUj52W4UUngJ3bTIycVI+G54bi8qjPgp/QAPOp2ZCBuTsv+Rsc6UfqREsc3iaHt3MP7JdjflYVrltpW6rTPDH5W4YRaCqKq1vt82eQAPQylrHgm8RiTTFOzgGf5zxodJKGEAefEp45anaYprX8GxoIgpWn1C7zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swttC6pK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swttC6pK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3658C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713684022;
	bh=n+xMNJ+ssdwFy3PHSOi72ug9UPCMRu6GawAsZ/jlK0s=;
	h=To:Subject:From:Date:From;
	b=swttC6pKKOte5GmXAMbg6oPEQuJFjelhFL/Wsl0n6qkavvFA2M/QylAiSkwgsI1Xh
	 ZppoGiJi5ec0rwl1G88fPez85E2jXUP9qw8+1J6ZwWbuW4UQinqypL7r/wHqNYCL0g
	 0HIPUGWlUdeesb0yfKGTMwH1tQv5wKliUTM4ptwT5WZnmpoNgnGUECMxowICr502SY
	 LUt1uHBmj7+rcR19378lbeN4yvMLpQs3I6oIzUsuHTjJ4ssu3U5O//oowqzNva3nIC
	 oshqlLUuocYQGH6X+ABtJx4XJwAYsYlhWJxU38fqGcnPO1cDlrooEYASYVJ7uUhxVH
	 5tCI29Ozd/Etw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC49C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 07:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171368402279.8047.16470328712601657379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10f1a0ae12cf15ac3ce8ceaef611f6ab3cedf81f1ca0d02f8921fc5b7effb8e
Date: Sun, 21 Apr 2024 07:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713684022
