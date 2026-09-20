Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617823EB0FB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789894234; cv=none; b=faH71JLxRZt4jlVuqJj5OFdwxjK+fJQiPPVNlL8X3WahclYXe5BfPBCUegnzGsklHGyDul1cyW57umsQWCePK2f5TUQLDfItjGvgOgXo5VWMdVhXW9Qo8zq72zX/gmIInvbaqCtAaHYw+JkeEimBT8gakiyymntEs17ia/euxI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789894234; c=relaxed/simple;
	bh=AXx9vJFP1T0/DP/k4lhPEJg6bBt1Y4xUJgJqYU+wsU0=;
	h=To:Subject:From:Message-Id:Date; b=nS70TloaSJQy5h310Bvy7qw0DvDYODiX9fp6hV/rKoDJOnV9HNdsINk9a3cInGofo/pmmEIW/6wO220BrItkcx2E1nZWnuc6OE9eshNKd0XRuNcSR3VSv+1jkQdj6/2IQdy1MjP8eocPLYSc9x6StpEyfTkfVgBeGBHUmeVIMIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMYfheSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMYfheSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A12C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789894233;
	bh=AXx9vJFP1T0/DP/k4lhPEJg6bBt1Y4xUJgJqYU+wsU0=;
	h=To:Subject:From:Date:From;
	b=ZMYfheSXQ8hycy7BHVXTDzxsDvqk3QwyHV6h4IuXRRwOThqwuSQXAR9DSGGOOlpYt
	 khriPVHxOZAem7K3fDPO7FW2FHLskLzAwc70lRW5lZ0F7lMfuIEx8TmsXAu6BcFM3D
	 OTRy1sd4GvUH8AFPPDjgsca/inlTMyH5ZYH53hLXyxjO9bc2LFkrUSLt6d6CZhZ95C
	 Cf59vaIzcyldTf1bUAEDwsehxp0CGC1P9jI7nr43nSTtOL5G7Wdg6x3TI5L9b+n1h+
	 fd9O4xBVvDlsWW3FEgGACoNVYPJ6J5ESl2qCAKHZlvE0iernK+Z3ApAkmuOSv6ajw7
	 F4zVulP6HFt6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC43EC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989423368.17257.3911060832181303773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0190d7ed99ec91ab6fe9366f2bcd955af8e99dc51132bc2c34164ae71f706a
Date: Sun, 20 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789894233
