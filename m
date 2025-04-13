Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B5133F9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744522194; cv=none; b=AGPTZYxUuQvfTuTMnH6LGuL9ylRBcanhvFtTzqfuQfZeS3uPGF8X8chNY+A/0FMMUF87PpWpAtvOBMWGUUmUWC9pi1JW/TuNMTua/TfQJj/sBDTM3CHeruZCPZqVy6fvCwci25NjximYD+hbBUc6kuKUtX5gvnEHwhXIbBRs/ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744522194; c=relaxed/simple;
	bh=1XxyXG4ynyW7HSTCOG9o+VtlW426cfnApKtDGl6jkdg=;
	h=To:Subject:From:Message-Id:Date; b=WmDGKqkZsQ+tiU2Dxx3x3DAMhfVXnlsJ9eLjrz4ZpDsJMdvU1uvHD6YWccDcIEPcwKVoRtbXwYgnD4R042tZI+6g2dV3YBz3FBqbvmxaFtvYH75tR7huXlGgJvQQ7s1arf0R6cBsEPkt/J5HX8LOTw2wllmqlePKVbo4U0dRaLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CArWUQEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CArWUQEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF773C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744522193;
	bh=1XxyXG4ynyW7HSTCOG9o+VtlW426cfnApKtDGl6jkdg=;
	h=To:Subject:From:Date:From;
	b=CArWUQEY9nMV9xLN4AFsFYcediird1ReYXvzrY0MM19CQMHk0jTwwjHBuzfnA2Gzg
	 YE/qSf6r/+JKarN4zY5LHkb3uHJ8Chov3lb3y8cD4b929vCF0INVGhscAvDo+aHehG
	 D9D5jGVhohYtZ3cH6/qseL8UUHS0i8otPPmomMPIyAJdc/6hQkATMdigL1Vo5q1yI1
	 JIuhG6q/fZfiK3uuMa8u5NM1SReDBbwssHOl3mP1XtNuIQVVQ8JLvVJ0JlQW9B1ceg
	 4FZ+bGaCwI++vPrl1AcRbco9JP5Q2yQtQvkxXtaw6cKUCldMACHlkgnc5OCp6YFVeP
	 mqSaxsOfGvfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E0EC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452219360.1107.145375022017339441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208043504c4d8883423e1b6750f3f9c2ab2aa3ea7ec2ddf58c2f900901b67f8e
Date: Sun, 13 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744522193
