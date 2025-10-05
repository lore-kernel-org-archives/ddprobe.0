Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C8F35971
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759678194; cv=none; b=HYuEg51aBiSVNpSShm4CEYF+f7E+nO9rbqSucu/3UbhQl1gdtF9f6HOmRQAicro2j4gJwhaUiyiPxMm3FMkY7aYGFetE3mn+bClWocV2An2abLyQw9AbVtnNa/4x5J98ZukEohTpnb8JirkNnRyF05jX9LV0qEWOl1VWngA1oLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759678194; c=relaxed/simple;
	bh=9783yv9Ut1iK9HKIkJXwMLMHnDlFLDraCvL5iR/HqEo=;
	h=To:Subject:From:Message-Id:Date; b=PhdWNjrzwUYtfPwwkAgdwUx20nUd9fbqDZ4P2qDnHodEFBc6zaPn6QfGRWadvRZNcQrs3N2DgPOr9Yeu6cXwaKxyEgA94V/GekG/iAELNe93g7hniGflb4Atk9BJc+zXtpbd2Z1KGxnMK7JVadbZvCrcHEWY8ib1zrULy4CrzwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIz7FEH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIz7FEH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E9CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759678193;
	bh=9783yv9Ut1iK9HKIkJXwMLMHnDlFLDraCvL5iR/HqEo=;
	h=To:Subject:From:Date:From;
	b=UIz7FEH5qBZRFI585i6wYw78MasFcqHSfzfRqpTwrIiy2HZG7etHdIdA9JtK3y7qJ
	 +mtO13YLppGJACPCaT/F9ug541euE1O8R27zWFrN+rIEotFYW7BXXGrrGDUMBdPsDM
	 LzSh5LMSuuGdHEuNjSn0G/7hwLKi8YxF3s2QdN91L6KpVmUCWSZxpsGUdMH4KR/Nqt
	 OPgQIX0QuUnyZZYv1TLj+baHeDIYsl52D3HBZhSHJa9YBamg8Ch86RpGMNgFN7u4K1
	 4cJjkB2gvCjmH+U+vzkiZG1s4MMdmDg5CITHFG6QKAPzD0Mpndtbf/Z51cr0gGkCMk
	 YtGSmA8jI2H9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C23CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967819359.12506.11571543631102553713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9b207860ee158e63c0987cdef59eb90aaa2e6565b3bd2a688880efe6fcced3
Date: Sun, 05 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759678193
