Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2254F21A458
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746008394; cv=none; b=Xft3MuinnYKf8gEe+lZ4LyUeObvZ2LHJrMVj+pkmSlO5sQ9f1enYUEPSFlJVqBFRkl9ZFvJ+FuVhCdFfnunauN4+XQN5noVP1MtG7UYWMVWYYX4SGHacnOV0821Z8IcMcqC7AOk+IlponFCXCHE0Ge5cfHubCu32ukh98ApuXWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746008394; c=relaxed/simple;
	bh=J9nv0n5wicaShGu+fzNgyGtKPrxK8WIG4srzzehOwms=;
	h=To:Subject:From:Message-Id:Date; b=twlY3UiTTfHddHiURMUu+W2gfNSAYiTWa7hymoBQoOhgAhvOH2adcaU8smp+gBY0vgWfvadLdwSRQc9ZWR/2fGaF6CfIJg9KBDMBJCTRHTupDY2942foU9a+75C61MS2dFSZV+2a8o+YTcVfvYija5lDGB0bRFmBrds7ie9iRmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV29IST7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV29IST7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0933C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746008393;
	bh=J9nv0n5wicaShGu+fzNgyGtKPrxK8WIG4srzzehOwms=;
	h=To:Subject:From:Date:From;
	b=uV29IST74wdG0RHmQm9bpaPVy+BcNtKEoHegUIEcFIkPus8Rid8CohLkG3Hhm65sP
	 XJFUKBCGPVhgnNfQRZH2W4dt2v/UH3oQ5mzMWg46cD6Rqh4eMyyR2XoYm6ysEY1Vh1
	 3D00+vEQlQ6WxMgsM4ftQgfPkAUuDo5GFWL/Sdl9g1UkwHjFXgLM81hyRBah/+No8J
	 +yVgQ8nwkc/oiMRUrKwyCBLzv+ahUFWOKvuKQpUkWrSoxYdiq+w7BNudBqZRK+ulQq
	 5Nmb1Qc0vCYqB7Ri3N3wEcuHo6A+4ymbl7tsZ7C5rTXNLxnyYgm0DMbfmOuhjJlLVo
	 paN/2P5cgG0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC38C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600839357.11085.17868308264168427901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b87ee9f3027730a79775c48df015b88663d6de97fce20b1fb9f21341292e89d
Date: Wed, 30 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746008393
