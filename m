Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2971385C4A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778209654; cv=none; b=Y33ZPbjuOMUtiPkMxN7BSu7UVTa0Aac7QybHMIfFnk/xv2GLOqMHPc85tXqLks7bLzfRUAr4YkBGWQ64WHe8wL8NFGg+VrYzjAfRnXazFWmhuaDNx10WrYO0BFc5fSW1f3xsoRgLZhfTZ9KFNBz0OXhVq6CfVxf9zZw5MOonxgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778209654; c=relaxed/simple;
	bh=cDsflKkMm4alhJS9n/5rI/iTLv9qVT6AOjA2sJ4EEKk=;
	h=To:Subject:From:Message-Id:Date; b=RdUizuf99sNKnVft0WeR+WZQ0jP6asL+ihH+KlPUfRDKy8ezI05mSD3CgkS1m5cHSwgFjcuKui1t+TkXoePydZsw2EuPgZ4erEnOD4ekRyRcZAjxqBH9ps/JqXnf3DU3c2FzaWePAH29W4UdpUi80ryBC0CUF440geWXYhAo2mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaTYZOkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaTYZOkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B5C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778209653;
	bh=cDsflKkMm4alhJS9n/5rI/iTLv9qVT6AOjA2sJ4EEKk=;
	h=To:Subject:From:Date:From;
	b=qaTYZOkZOpfXCYAxpMf/x4wgvDMOUX8VfkLAiOUalYQGfF8rEPWh1egO5uJdp8cVO
	 M1sBp/t4pIEGQ61/LwmLpdeUPAjonfw20PjGEantYUmbikIqYjlTdlSlY6+GLnAJmr
	 m09yjqB87SfXxlsV9Gx4zwRPz+JyQ9ARgIom5/wrQs8twheDvvbPeObM4OsmioICZO
	 99xI5dI4Fa7/SHyE3DgbErBS2ntOxOEMWojWaySBauVw6FLYsA3EpP0npWkD7Aqigj
	 8XPTYBAwlEToBVQ5fz1eNvOpxEqWSXVBDXPzUa6ClPJh4MjCdTWTbuqGJxrxxiIJX2
	 auDJh/P4Kb8bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA919CD3427
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820965369.31779.14611991829874332153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac81efde00a394325ded2db1409c7016570abc9b8953e11ca60cde2c157c893
Date: Fri, 08 May 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778209653
