Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A601C15
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708147697; cv=none; b=TQAFycH/qyNm83N4oOdSKWrZfCl2tKbeUCM/GxcvRqwYakl3HljvsONQJM8DbjkQuHcmi0wQRsRH3dFdzIJZHAYKbcmfcqkMRGYmAPG6r9JaObAuN1RuWyBs4WDKQcB1jfuMMxbqM0RpdPHGOwzRPWr1nnM2ggyB9H7rV2NopNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708147697; c=relaxed/simple;
	bh=17NtRJElUzT9jr/+cgGBsvBVtPnKizM0erp1Jv9X5Do=;
	h=To:Subject:From:Message-Id:Date; b=PywcRWXqOZvTr2NctRKmC+4ARa1s0+K+dgOMOLARTDUMhGW8rkJvkmCLbVBvamuWg35u46+2zQ5rOPiRdDZysIYaLuZLoC9K37OnVugL0NTMaV5T9QcOCVJzwQ4xLbqCxM5zkqEcf2+kmd0wI7gvDLK/cI0QiU6/y3HTvlWP9Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5KK9gI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5KK9gI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843A3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708147696;
	bh=17NtRJElUzT9jr/+cgGBsvBVtPnKizM0erp1Jv9X5Do=;
	h=To:Subject:From:Date:From;
	b=u5KK9gI9qsQPo620CO9BH+4USAM5fgkeImmwBRTHoUsSZjYYv2/aSt0nQR2QzQvfY
	 TWOftPDbYLibChLAq3Z9VolDXwrkLBP587RWuyBDC9Z8Mw0fxLwso8cEui2DWtmJb1
	 eAq0ajCF5zUPG+HkU7dGRMFXgS/w1pZKAHgRvpblUjOfPBgsCXQHIDNQMAFgH7EE8b
	 5YXBn1sbUUMmabb5dJkFAaQ2KitY/wUB6xSMtBUVGorrrcAYxAAPdlZ1BMQZT9OAfJ
	 Aui7T2vZvAFJYvHBSI0FbqJTGJfNj5yNSH88cV/OsQIP6LajwXPANWN/kuwQdlRrtg
	 RFy9HHwjI40ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B6CC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170814769638.2204.10169685743775716723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a393cf144ba0d3c5f4219be7e4d5f4751b3d5cd21058ef26ceed9993ad8ece
Date: Sat, 17 Feb 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708147696
