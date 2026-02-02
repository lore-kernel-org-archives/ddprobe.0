Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EED22147E6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770006834; cv=none; b=WEHUw8nB6lWHGSCFx84n8oabsqKOeZ+kpVIwFhtPFNuwXi2xGhhcqLbKhmHBko15InytsqwoNpPdsZLg4ETy6lc4B7zsg88JzgLx41KWN8RFCKsm4n6m5Jn3mpUXs9CE9+zD1kjC+4+zpvY0MfrIZ+n8G1NQXsO0gREL//KnsfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770006834; c=relaxed/simple;
	bh=pmCM8ASWuB/0zMxxuY9dKjUfuw+9V4s8v5+nY5IMEa8=;
	h=To:Subject:From:Message-Id:Date; b=t7WA1nHATSQIvSuXH24qUULyF2B5tnI7K0BOBGpoUiwqrQGWuK8XdgTDyf9oKIqCiIhjLLK/qV+938OgmlLHBd/qyKIAmMsfeZe6MR1wbIbRHrOztmOH2ptyFY5PB0TXK7R1AgxC3ahtXmEocpW7cvR6BB+dwU/4/w207JIjSZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILBQCmx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILBQCmx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B758AC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770006833;
	bh=pmCM8ASWuB/0zMxxuY9dKjUfuw+9V4s8v5+nY5IMEa8=;
	h=To:Subject:From:Date:From;
	b=ILBQCmx+RzbZnV8D0SU+sIczRDAYKEzni1JXqtZ0vr3fFFaUHzL8VQ8ywwi6dddp1
	 +Epdd+SQMoDDeDilrtlN7ly9S00RTWyvy5y8EROZONQoNzBCWXjyiLRBJDPWI8voXT
	 LoFxPccjWWM8LOmB/u+YtZS9XlUHZp5TmgqT3N9UsPfaNv5Rbrz/e3b5538pwhY3H5
	 WO831T6JRGUdsbKHJBUGtlow7VzKXwP/JC/dRfTwifmLufkTN3EyzbNltdf5Wxef2c
	 c1gCv+p1yO/l3VvyI/x5tAnpPITtjae1Ma8WoHREXCgQuoMtCM3pqCQ9NnTkO2NSri
	 je6MxEp3BEa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D126D172C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000683361.18991.15243027655652473603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cc3fcec4ba0c7f0ec1c0db21d82f35e8769dee31596a856508a9e8f8538cb1
Date: Mon, 02 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770006833
