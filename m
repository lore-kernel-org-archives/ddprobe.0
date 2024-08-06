Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4281BE240
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722952554; cv=none; b=Rx/n1qd6EPuC8PfBdIqPJd62LAptyn9SH6gOXvH0JJw1m/qjT7WpPJcxddqYi9xbNDz3FFc4rZY6pGncAHq9osBpYvN5YGyNVmF/7QEJDHc+AxNoaznF1MlDGN0afvTMLcr3dlm60JDtUKse7I7+9xWAQ1za5N0bCYZg4I9ncfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722952554; c=relaxed/simple;
	bh=y2+hd/omjoaBrUeD2aFdlTzbSdAeAyo0beO8TTBpkyw=;
	h=To:Subject:From:Message-Id:Date; b=A3yjSp1dqAdvYZr7HLLclx9MQ2ZZyD//Ej0H7d4YbFI8NN+flqTidx0QpeX7GoR7L2h4ZjN+r0Cfwgzl8dNm1LJ6Maq4jI8wzb9Z1UsD9hAhAGE5mtV7r5W5OVQk5J/otOnaU5LMS300qRAOH3lxgZgM1wr4+I7HsTOvMqus+5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTVPiB9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTVPiB9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A8C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722952553;
	bh=y2+hd/omjoaBrUeD2aFdlTzbSdAeAyo0beO8TTBpkyw=;
	h=To:Subject:From:Date:From;
	b=oTVPiB9zz3t0QTq/DuEYsQcSUwrLXLQXpzCOmVDnCoWvewhA697Hb3peUfY4uT46z
	 oGVxaizbyY61pzC/ityHqUs+4RtER1yC0t0/ajvjtLk4+oiTOvKpdgnVgrft7DGgqZ
	 yUFIniLBJZH7ImFAExTHuT6B9OSGiLGx3pLI+polAQqywNRYJrHsPYa/fs3EQcstFH
	 mD2xQq68M7XVaSG0AHhraViMNKTwiHf0/YGIoF3K4ltW9ccbSVBMXk86k5WgsnfJwM
	 cPLe36yremxa41gXeERH2gO5qx5x9lW7woE/gM7i3n04/STEsMP1UUch48YVkdI/HW
	 1Uc8A2lHWFB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98482C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172295255358.27690.4735506673710699079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f225a2af90b03bcb6f71f232f07a0c1cd066194ab6af5674333a58c9440f8b9
Date: Tue, 06 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722952553
