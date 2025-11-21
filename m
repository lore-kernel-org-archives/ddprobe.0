Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2416A17E4
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763685114; cv=none; b=UGjX0HROIdGePBpISjIaBfKG55+yw0LojFgQwlsK6fObcvTcuH+bqE/00OdYK6empDqcUwFZRlFJphYR9FOn4TkBsHnQ59H2glP5xPQmXOFj4K2HWm+FjjWjv5Z/bgX+C2wre25d9y4Sc/xixC1pcsFPKSkhXdzqLrnAbw0ZvtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763685114; c=relaxed/simple;
	bh=jREQpTkT1DmWol6xESxQL5Wa/CbwkqR6bUwvPkKfZnM=;
	h=To:Subject:From:Message-Id:Date; b=bCDhzdFRePHp0Up03yRrIpEzWACbsDfPcPOxqXEDUc2LScY8IAz/6g4tzYUO5eheCvcF78z9EPIBmquJEekfQvqv6vHgT8WXz6h9VZh1Lm+CkseLcm13V9EcCuYk5KYhkdEhCkribNqCVeaSwD1h709LqnswKz+R+UDUuhNI3Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPVUVIQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPVUVIQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6951C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763685113;
	bh=jREQpTkT1DmWol6xESxQL5Wa/CbwkqR6bUwvPkKfZnM=;
	h=To:Subject:From:Date:From;
	b=oPVUVIQBLWw7EmFEuEt1+g8TglI7BK0rQEwNFIWZmYNn+VsAfcr5db7L0iaSXrerT
	 sKRucEMxoP8rifYgbFF0nXU/pjvH9H7Ec2JOn9ZPHhYV1szFFyYaGRB9z59rzbgez0
	 LqrR9p6wFH948aizTMTH3DDJtCNBXmbCq/7ISf/02KQ5M2FlxhRHrl87QOYGJoW0tL
	 WCWwgfK98o0cMtfB5Eo23c7K4MUGB2C9IMWevzRltXLiMZ3eKxHWHAR9K66zFAO8xW
	 5/QqvJeHHBSytrU49s2KkGKQUN2UG1DWXe4N7mYH0eHDd0ivDdkEPbOJpokR7WVsvX
	 9M6LT04PpCvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9606ACFA460
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368511359.23627.3662323090251233873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1525ff78cea652b960803d890d3a3371c7b82e418a156bf89b88e20210cc22
Date: Fri, 21 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763685113
