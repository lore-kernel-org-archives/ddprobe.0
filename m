Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF241FB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742480994; cv=none; b=rR9c/qSa1Twvv+rVW6Ilkor3BTiKiWufQBb9MIVG+A5YtaHsfsBKaxWo8+yOEmwTtpe1Pp7RjyA2lJ2I2uxqsgo68d0XS0uiGqPmncmuPvQ2yy+2mLIo3Vocqcox3dejFyIq0UuOJIDuPUDYhvthufEZhRVz7UCM5iOEU4IdsAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742480994; c=relaxed/simple;
	bh=kf4hwNKDaZZqgbqfwG8YAknos1ozQg/VO+hJXqKvFmk=;
	h=To:Subject:From:Message-Id:Date; b=uyqw+QqVaSb/9mqkr7Zx16cUo9fD7L1OfVu8TvXFUY1aqLIPmq1Ifryguqlzm5Dv3zWLZE5Sri7sqGs6SRdVECSKEosEgYF7bidQsoN87ZzXoc3z+AoXsURj9YP3NS1IxUYC7SS0XZzGd+foSTmi1FqnSowv7MNUSX4VFbct5eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l19VB1BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l19VB1BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6380C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742480993;
	bh=kf4hwNKDaZZqgbqfwG8YAknos1ozQg/VO+hJXqKvFmk=;
	h=To:Subject:From:Date:From;
	b=l19VB1BSEDvYF8R0bddiqzfH7A0uEGQCUOzL6Jyzq/5TeKMZVn5ZRTcHgjPfaFpZ1
	 br1k+sHv/sPATaKiCMH0zUVGqqIXBlaq7kASZhHTbLe3lDpIkuUzUc+0L9QhGpzE+h
	 EjeEcuugUiOx0Y4CeqqDNL0mhKb7TcGzENMol9pcJnWqSJp/Q+Di0L3LGUrJmmZEHh
	 S6kF/Jk4lTiFlz9Qqp8sVQWLU3wRmcOT/M12/LgUHRkPTrcJ1nNSMKcUUhEG/aoJnG
	 cJcxQtb7YwDO7gX7pLzjO+vUG5cIh9v1/mesxpkJsrXECGkd+SVdbEz5ADwX/jjUum
	 4n9N2FE81tAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1369C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248099364.28038.4376117962380741485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5828ebd1ea8edc5baea3e4b5e0c9f425fd3a0e7805fbf55ef96c9db1dd5950
Date: Thu, 20 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742480993
