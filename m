Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838951D52B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720387583; cv=none; b=OTxxd0RNyVNHmZUcttLBGGw4kmsLca4DF7LAOO2aFUlmVcgLTioUzaUJoAkOaNZ8/lktgVgWUV5svJlWaITz6F9gAyvehYWkSBsv/0bvMFkfpWPBh0ezqu9/jU6+j1gxb1rwAgYyT70xZroSPXdl3EqTiuRSA5rHzgy9JgQ2oAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720387583; c=relaxed/simple;
	bh=Ef3hS775/+BANHTecbJ4wD2WikGHl5/aJJMUQCHYgxw=;
	h=To:Subject:From:Message-Id:Date; b=r7Jz73xbhC+jEaTXI83fsrnN8w2fqio1wzqSOBBCvI/fB7sAggALljNIfWWb2IBijCFMGlELIvHlKFZT2hqPRnxJ3wHva0aV9eeTU7nkDmi971eNWyMBhBPBSm6UkYIC/l9xqt6jEv/RW5pCgdH6E64uF7KwnTXl7w2+Mqk2wjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9oKGUWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9oKGUWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F174BC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720387583;
	bh=Ef3hS775/+BANHTecbJ4wD2WikGHl5/aJJMUQCHYgxw=;
	h=To:Subject:From:Date:From;
	b=m9oKGUWfwdhyjk1MsVfeMps7VUC1oXTvXWGTqhlgdX9YIo50VeT49AibVwmPzQ7yR
	 vz8DfedRzHn4HfPUxRxGbRaBY70DHlrtbFqNezPqTqumOFOf0NNY2XuU+6K7PcEiuQ
	 5joXV8elBmBW20nCVZZgQpWhFSObKFXIB4oJKdZW1Sa+R6WMDGLf4hrYJXvEPVUtyd
	 O6xhpITaqMqbuRQ+YzhPXWBdSauHEqf6Bt6pg1bHVutVHCN/UyPNA26lmiKaOKW+mK
	 66O13xJumsX+GD9CRDY0wTVI5Bx4CkNvYVXGNqf542RB3NMFQ0YpIPpFynRlsb9KSL
	 6YHHFNU7H017g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1845C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038758281.474.6475798745436192115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96859a71fb831c75bd8d110daea5c21c346a66e5f0bc43e84b4e0aaae6c6415e
Date: Sun, 07 Jul 2024 21:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720387582
