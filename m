Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205A016419
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728611754; cv=none; b=FJqLlDOwo7qBb0oPwdwKsBJttzuSR4jbO3S6aAi7lHAM1X+oM9MwPAf7DS61qMoMSYx4NXsZngaCUlLfGJsBv2k4b3Bej3u3MAu415X5Z1F7du+yAEK+cKIAcMUfhr94S3ZpCRYcy/b/5BA1G/Gc/wbP65yay3ow5hBW+DWMcHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728611754; c=relaxed/simple;
	bh=BHUUnfwfHsmwLOOFhg+5OqFYkPi9lt1oSJjhwsmexkM=;
	h=To:Subject:From:Message-Id:Date; b=rswCVji6cbVOa7oUEdSjbu+LzKEOjV88zUAyfxXLqdjEXEaYLHIXKjvTRaPbwymqc238qSW08npi/QUqmim3VyP7SbgKRfMHkru3gblKFRycx1/bh1YLFjrJMDySGF/TP2XwUGo/qZLaDoUrvtmcDP+tBkeKid5qmVpjlb0Aw54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWcuuQwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWcuuQwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD535C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728611753;
	bh=BHUUnfwfHsmwLOOFhg+5OqFYkPi9lt1oSJjhwsmexkM=;
	h=To:Subject:From:Date:From;
	b=mWcuuQwiukVoweXbioH3LMR5QZ+oscURxwg7RlzyLVDxiv++k6t/CFFiSO9ZG2XYP
	 g7LteZPDvVgYlwbNPKy2OO7Qbs1SxNebLeqYH+T+a4OGB9sapvD+9EBC0vpwcaCvh3
	 rMoC33tCXDH8Xe+Fvyj9WlOlVfr3OFKkUBC7IOWNBTU6zAEsrzIk3YlDIZdy4DsgsU
	 eHvyXlvb/I9mmOQPlOiOQHk8sIDjMYYTf/unkbEIDnGHEvD9ywlxBL0D12Oe/zYfy7
	 8k+G9CnZAZ85aliwGL7tzTb1BOezyhnrK9Ifqc1fZiQNVTTNWLtHVsQVxS90ZKJb65
	 8k6+Ywe3DDrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A972D24464
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861175362.31836.2221892002208720884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2449e1de701cba455eec5281195c8374d6becc71485ac55aaa002a98f88bc5
Date: Fri, 11 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728611753
