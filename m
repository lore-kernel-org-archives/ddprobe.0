Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1936F433BB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721327154; cv=none; b=dNjkJcPRgAC9n7st3Pc93G0YKmw0LjPD2bxZy0f39s7fHWvWuxpK6+hnx8y+DlaOz0z+THQJdGbb+frPKOjaOaa3q1ndpYa3iMeGZWxkT/4x5TfJET4K3fWUQgc/dO3gpDTwlM0Z2IyebZp+kSxb84FH1O6WfDAgC+7t9z8wS2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721327154; c=relaxed/simple;
	bh=JlvL7kJ0MVWYFCmbCga7GRhYlWer5SxlnyLwIs8z0fM=;
	h=To:Subject:From:Message-Id:Date; b=WN03sC5j/qgBArtW7wvP2cgkrlpjWJbg++gU0niTigQtLA3t7o7igbdq15X8LlSM/mjaXp3rvvzxY91OZ8MdyMvO1WJnkhfDQXp+rmSmHGvGmw/7n7U8V6qkCX1p21G0k8dYDVX233oA5qBZoqgVUsus4OPprzM+uRbJ9PhnXeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0abQ2nb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0abQ2nb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A771FC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721327153;
	bh=JlvL7kJ0MVWYFCmbCga7GRhYlWer5SxlnyLwIs8z0fM=;
	h=To:Subject:From:Date:From;
	b=A0abQ2nbDoySlSgpzm9lFyqcw7IKpeQHijrYCzLeYxWztCGbKqK4L/qMgIwpFK0lr
	 YwSk5uX5gldNuVMPEJqx7FP5jabsvmvc16e6RCaZx4nTGlN1T8BtJpvzTWUnml9n3b
	 3Fgh/ClQXzo1Oy4HLb+2VC9ouQIgJIQMoHfrb4o09MX10mi89cmBUl4cN2VEKFjNWN
	 ekDF3vjRjTuXMods3dnOB59K0yWNEdmwCB2e3vgvQsa4gY05/DgFE9bGkOn0d+92in
	 8T/DqFaysp3nVXAgdaYhLtgwihP28uLqXAlC+9zHROkXYsDGZG54zgCL44SAZltMYX
	 PiH14vSvJnDmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C58C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132715360.25037.14525836783011481313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8842e6611013170893479ee6683300eca1c6fa2d3d34ac06e8c7b999fd1dcc2
Date: Thu, 18 Jul 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721327153
