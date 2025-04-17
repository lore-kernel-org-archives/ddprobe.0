Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A871D6AA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744916994; cv=none; b=ty3tww/4RiicjcxmYd5hwtLKmangmfEXxfDJiWmkRgx7itWFqYJJJI0TYm2kBkxKma5T1p8v5BYmhjCiplKr1XF5x0jeHyAolTKzrDdoC3XdU7j7R693ca/rwS60GHjofZgIg0RtyOo7FXX40xzI7BCLk1okIad2bQK8pESkmXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744916994; c=relaxed/simple;
	bh=l6ogHA4wVS2wvy21NK2iPZmUuupxNeYIpBAHDUm8AdE=;
	h=To:Subject:From:Message-Id:Date; b=e5yNacaA4wJDppM7DmGyp+bjDcxc/Diu79jQAYWd5Jxi/4NttYFG55ANNYs9ToiO6nTtKhScjLTQz3SKDv3C4nWEqOzT3KrQoGXvlmq2/tWw+Bw/jL7Bs7DRqGNmV4HDEkfDl17wC3DIlOkyunOXs7gjxIH36lBNTrh5+z8v/Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1HlVkBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1HlVkBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8251C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744916993;
	bh=l6ogHA4wVS2wvy21NK2iPZmUuupxNeYIpBAHDUm8AdE=;
	h=To:Subject:From:Date:From;
	b=A1HlVkBwXRHGNUWHEnz443PM6x5OV6oAIbLetTpNH+7amGG7ImAwjuO3reS/LXhF6
	 2IIGKURMpmRPjH5nyvdLpVLZNhXgNyEuggXUwtHhYChGV85sm4SFybuFC+pN5Naj5l
	 8ZGUPiyhF2uqETN6k1iEdk/wk2PAxjgZ/28EqHg8xGrm87vv0Yms0IjxQqlkOHuTSA
	 GU63tGbcKNeecgVkvWsijaqoad1CoD04QzNkdSwoOplOPb2GOmPgEbdNUEKqycyq7o
	 qlyE2P7iLTwcvtJlBpCYboLJ6++1FFLi72uRpt+dl2KQBpQxSMigXFtx07Rx8VW40W
	 t1PLD+r3MHurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9936EC369CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491699361.14813.8190887721351668443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cf7a92db94e25ccd45cdde821f9edb2389d15042f140ef19d0b926664452d4
Date: Thu, 17 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744916993
