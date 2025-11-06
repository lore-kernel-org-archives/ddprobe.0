Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142F0335BDB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762448994; cv=none; b=noxea5MwTu4I0PcvTkK5POBGQSoNp19o4unVwm1vtI2+hHoKdEuXrPGh0dgSwN1BAChCIhDv7EkOeiWGJ4w+TCgNJlYytubQp9S0sT4W0A9Xtond68nkTrq2BAVbudISbv9G2IDbToZQfc11dbJT7xU2nat5k45sI96wgPwgZbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762448994; c=relaxed/simple;
	bh=5KsUIfhtlfnFUDsl04iXkmmClWiLle4hhcsskM5SS/I=;
	h=To:Subject:From:Message-Id:Date; b=aVgCYaujXGtWtvKKz7WkA+ce103aTygs3NIl9AEYqyE4+BhGLsX/6rbzEu+0C4+cCFdgXp8zsrCR6B+BIpNMJ4q7kR8QnF7soHTlHkJ+rxDiGRwYIkz6LvTyQP6coI3eVnOuxvYLd+COnP+mEg9MoUF35Ktk5jfg3wx5sw3WPHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUGb7d+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUGb7d+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762448993;
	bh=5KsUIfhtlfnFUDsl04iXkmmClWiLle4hhcsskM5SS/I=;
	h=To:Subject:From:Date:From;
	b=oUGb7d+Gd/cph18cVT4AAefjMSqG/ZiX6UKvMTWjl0Lx0+F1KthQAPPSRxYZK7u1+
	 D+DKOgtpe7MJd+3ClHHlIQMhASQficoKWXmQcMxYdfzP80h5jaXtSBDARMGMkNXJ7T
	 aZjjQft5NIarsbc0/j+T5qQIKk8mlwej8MoK8qloVIsTc+n9CnuIR9Yz4wy16mxhzQ
	 JqOshZDmXQN0JWqxL0f/fQln1HOBKs/MXNEmcetzyrNnNxyxfRsBTUaSXZiFc9Ce9L
	 IvAhd5A3tP1M3vhP//Sixlpq0/FC2JKrJ/foqxKa0qa2qsvymkcO/J0A/Ygz1ziyUm
	 D/hgxruzPrg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC8CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244899359.25468.12194879411482593732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4c4e7d18eb2e742c4e9e6d50e1f4b7313de79990d2f2c9e9e91a884fea22fd
Date: Thu, 06 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762448993
