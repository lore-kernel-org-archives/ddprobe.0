Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55ECB471406
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788430234; cv=none; b=j21Kd5wXAHpTcv4X7RgJBzoUcbYpY40C4/6iQ8jsbWjYEdvP4WGt7ju5V5MjnmedLS3kd4ARn3zyNjnclKRq0QMcT8uvZkS7wgjK9Wb0MiWJS4QOVY76TQuGrVv7WzwOmSzOHETYT1SoEmK6+sC5bXs7JgaujEDiKvit0iaJ/R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788430234; c=relaxed/simple;
	bh=DtSjG+9OAZj5xjOmrvM06WM4U9ZGZlWCWqY3rX8MnzA=;
	h=To:Subject:From:Message-Id:Date; b=gnTwWg0iRAyIwGbfjrfi9s6YdjUDBmKCcQbLs/Tl+XHDPIffbrd+yFu/o/nY70vgwiR13QPgdNg1Nz2zeFv28mux1b2tY20/3ur25iKPsJBSzDLIk35I35OirD1wJCw1s1dKNqJL6XV4nz6KYeQRlPcpoVffRWr4uDjPbZK4PXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnB5EAte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnB5EAte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B57C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788430233;
	bh=DtSjG+9OAZj5xjOmrvM06WM4U9ZGZlWCWqY3rX8MnzA=;
	h=To:Subject:From:Date:From;
	b=DnB5EAte6fXX1v7gb6YhlG1qmZ2xNYA5jH9E/hSSPvsuUUmRuzA8TSCmAe0pLDYlB
	 /u+ny6gosuuIiylvSw78tldLPnA+VqQ0kdVdqnV3wJDHZPOFQce0k65KKNlA+MXA54
	 3mJM89ektJ0EIJ86uglP3JBsmFlBOqjAr1ZyLrsi9fKTZivD/hV9jKQ+iJQ/6fyW5h
	 OMRtY4nWlKnPzXsojWsgfFQ5cmoUPhPggLW+ATSTAlQ0/Mg8c70u/XNrRLLz8dpP18
	 WvFSYT8JbEYew1raEf3ecjMbt8lld6HCZIi8mN1tvvUzgJXVR/p+P6/4toZnCGnMJv
	 39bNz3HpiS0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8DCC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843023370.14879.9361940759595481339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514c5d72c0d5219fef9a98286b41a18ecbd27f943343de6ae80d0c3ae8f6341e
Date: Thu, 03 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788430233
