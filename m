Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AC7B667
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753921794; cv=none; b=KXw2KWu7GLhv6LI9nyYhTi/qtnF+icYLRIWWLU6ggDsgxeYyuC5Gx0JQrVw0EdMuug5iluhT6UVS5lOac+yNoBNTP4QkjaTgNswAtbed/uGqPGrb0Q18YPA4kfERizPJjxHUCpTKZxdIagjvQtWgXGEpoiWuvxzusEhM6InXc3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753921794; c=relaxed/simple;
	bh=bg/VgR2iwADQqeFQvK6/PH5ax18wWkyYqfOhGBnnS3s=;
	h=To:Subject:From:Message-Id:Date; b=WdiUcN/12niLzB7wsJ4TH6J7UCYZJSgexx+edEWT6lFwk63qRqbu//yn4aTLIZYmG2RgHBRc3gQZkDVF/WHMiptMHtPtBnGJso9TMgPQR4y+jwY4MuOQPUtVhSzMgAyd2nXx3Er66quyqvbMBXOCYEkFmYuAPACIwnXuC2ViQk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqBa1oI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqBa1oI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF11C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753921793;
	bh=bg/VgR2iwADQqeFQvK6/PH5ax18wWkyYqfOhGBnnS3s=;
	h=To:Subject:From:Date:From;
	b=aqBa1oI7WNu7tUg5W8R6/AespANU4on5kaMfFC+mnvvJfw9abuO4o98ToUTplGTKA
	 Wjf+1kjJur01QXX2BEYBJdjgJaHh1KpKPhIKwP1alYpGzjM7bYA111UsvI8O8ITLjU
	 YMxkgvED0bqxTOd0qz8nC3uixvdnFy88+5m4RlC7L772cAqF6dqboUAwopZYmAZ5P+
	 COaw+UYBHsx6iLaZsaoBLg5LaZg30qfdfJNvtoTHn/n3mMKkfKXoSMkIzTtdb52GLo
	 3Qou714eWeQxdHYd1inRuXuQOBoSKg/tVE1u/woSzxCkdWO4UuwFeeknqp3l8U/q2n
	 ObxZjJ6H76GUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AADC87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392179357.9241.16889067113677320465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5782746838b0832029f48c26e91563bd3404b2448e2cdf9f896be9b3d57d28
Date: Thu, 31 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753921793
