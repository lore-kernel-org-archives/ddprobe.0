Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C52C800
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766350434; cv=none; b=OCqz5TubMqGwnx/CI34ZZyF0lV0DBjrAnhIn74zLiw5EwcOd64XPirhb5hEE5nAynIwQF9w/NEs7Dnecc0o29aX85+xL9ff/XM+gRx4zDy1zLn60V0uDb6WXy7/pTGGmUm7P59NFgvJMJoytr7TsfmH2aIAHuZ9tQm9H3NmQ31c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766350434; c=relaxed/simple;
	bh=AIQllv9Qe+De5JNfL3IeiuQJS9hb0yDPs+YOGiyDHOw=;
	h=To:Subject:From:Message-Id:Date; b=EMV8ZWaHCuXqRvJ0dKHXtre4OzaT/oY9LDRvVMv1m9ABBqsGOOUFpOPJnYOX8p98oE7G9X8JihzMUaGo/LxSA/WYb4nHZ7xi8lfP+4R2GlQ2ofq10inTjVKISqGsgtKqv8ucZI8BctP018QuKsqauzKm6eSoxtMbW+yI4lvDgks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kK+2YUO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK+2YUO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B52C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766350433;
	bh=AIQllv9Qe+De5JNfL3IeiuQJS9hb0yDPs+YOGiyDHOw=;
	h=To:Subject:From:Date:From;
	b=kK+2YUO+ZS5SP2Sq/LaLvYHJtzb93EfwsDSheHKcOKXJ3Of/kiu6FVG+BWfnobAxV
	 3elkc9BSdwKWJ5YuxX2yPyKkMW9OmB3JGd2mEqlRkrT6TpdqHHvJlxenzyKkT/uMUV
	 1dpfiyDoghSX8Q9J5DJEq4awkTQAltjvbozaIBGXj20rXsDQqw2ErB4YxDVJ+UlfJv
	 TdJEctb38/pPAX6h+zm5j+h3olhqaGiqiSuNOgCwI0W1XTZMuU6E+lTH31R1YOPMAl
	 EZ4Aa7Kmu1y18XUvWSMeKnajBaT+eUBXoQpgNOQNeUolnCfQXgFgiBxmLvtmE1SeY+
	 OTE4q1SeV6rhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B1E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635043357.21524.8834117941206785624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac1ad61edc9b19be9755dd99351557510d87116e563e5ca325e26c92a13d776
Date: Sun, 21 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766350433
