Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175863446B2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768481034; cv=none; b=RB4kVM+mhuzC1fY1N1orMUdX7XZ4hKo5MXLUOGndMIkIkf5HhMHLvVZe/sX/82WVEfbVPnRqGFkivcbkGXG5knwVyt37sPsFj+1Jh1h5nkL9CXebLRzTPi4yTDnf4QkAXT2ob8WFIS5C5pdWGP80rvl5SoqmeQzTyGGcM5C3Ts4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768481034; c=relaxed/simple;
	bh=dCv8NizV9LDyLncd04lNPmWfA11rd69hEn7Fs/5EPgk=;
	h=To:Subject:From:Message-Id:Date; b=KXY06Ycx6LXW0vIg+ZRQ2dQxzXpmJdn+tTXprV4M8IEQvtkKqIK8h0/GFxj/kg+s6p5GuhatB2as5DvkHQggP8TYHZLD4bJCHL5tBPtLsqgqw2eR46Zvw3i2I20J2tZHnHYL73duX+2NVx+N7rNrJnjLkvfSekpQn490p2+NTR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxtyAGEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxtyAGEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768481033;
	bh=dCv8NizV9LDyLncd04lNPmWfA11rd69hEn7Fs/5EPgk=;
	h=To:Subject:From:Date:From;
	b=GxtyAGEtsiYF00oIMhf8f369LXBfonRdnG+dbKi8HXeieA3kHBPEvs8iFTHs2Ugo4
	 VD/yH0BBqduTcT8kG4kdYsDeB/xeoelzoaF8lbS0uyrgwJDI6TYJGJXBfsMMKSGSQ4
	 +SmvpgAz5qn9j9F4XcUz5vS39lkbBEEXMGlzC1vzAt/Vf/2lLUj7GMBuEr8bStt9AT
	 XI2y1AnVZfu/RJOAv5A1OgUnEk3w/4wgzqLnMaYPDxbAzHVgL2iJM6fqJBGzcseS1r
	 ozZ2D8X7xVukTvD9Y1CUwJGoeh7TugHOXTkvr/gSIOaQCGf10LvOcDRR1XEU/36c4v
	 2t8wvAOoqWC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943AFD4117E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848103357.21047.609160814857881907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fda70c669dc302a850ddda661b8350f816405609949d5c61a2ac631b66d3740
Date: Thu, 15 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768481033
