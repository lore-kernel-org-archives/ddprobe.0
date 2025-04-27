Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6734A11
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745774394; cv=none; b=ATH9AQK3QI7eZAwwGHmfAMQBabvNZ3uw6b3cUPlyXd3fpTL79hDCTj4JnwJjuc4s7MoxVr7392Fg0M+AZl1Nie5psXfvGgquHZFE9e+tXe2ybF7KAhVt1V23KVYxnB4ASde65No9gh/kB5kWycK2E77/bC/YdYg8sJlw2X7vyg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745774394; c=relaxed/simple;
	bh=X0X/jxkOwIiMjDYrI4TqYb1uMx51S/0ZkXc3TSRJZgM=;
	h=To:Subject:From:Message-Id:Date; b=r7KogXWDexRJJI6MbNoBXIg24FeT/PXnih18Z0LPgJoUGOGX2R+awvMM+ODSjtiGj75PmxtbaOSh0Sa8AwafGv/TUdh/82hf0qPG3p/RDBeo4lmouCliNpdcMNSl0A2MMRwiRhM746YLoLINpQ0X/Lqc5l89I+TbLAtLvGwCpxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvO2VK01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvO2VK01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFCC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745774393;
	bh=X0X/jxkOwIiMjDYrI4TqYb1uMx51S/0ZkXc3TSRJZgM=;
	h=To:Subject:From:Date:From;
	b=SvO2VK01BABtQl/+Vyqrie9QlUI8K+0acs3qukRYPz/34Nsiezt6WmymuV+TkymRL
	 Kg/CfDDiOr9vn4qBYZCxKBS1pBckQ9kx0OKRPgB7nRPNxVf7lNQ2OmazdGG8OPggdh
	 MXhk0wVhnsnt0tJsUtsGtYdH8/5tJSvTKjc6Q/6HoIQ2lCBq8yWKJNvnAc59fSGze7
	 kOkdJu3dgKaMY3tt5+RZcn0VvP5T8Up24vNI8JMkHTtmnt2GVvSTpHDAD0KBYpfG/f
	 CvZiq46o4Hu8mTnz7bIej9urwb6TGeTtChyxnh9dJ2zDeqPvt/EFJHl8AU61SV3H7z
	 gFmdlY+IHpngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DAEC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577439359.9416.4818695932373736484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a3c4202fb024a4c0ef650699b24f6109a43bb6e703c6a2ec13bae15d38fd28
Date: Sun, 27 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745774393
