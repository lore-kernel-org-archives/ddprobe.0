Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC80228ECE0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042593; cv=none; b=REPXCghCFULJD5J3EUsr/hMW2d0N7UDq/6hkLpzaSGntJjNYewzy/tDuY+1+xQpybXpNeXVcYT234WLcizGruSY5VZqplVZUxj5bFpr4dQQ9ya5RfvxuTbDIjtPexP+LXfbbEihe+WgH+xJvRSRMeigfGdTSJHlT9gaZsiQoCpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042593; c=relaxed/simple;
	bh=PaPajmZLZB+uRtrhNZAenMBGI3ow9ZiPv7ft0pZu3Do=;
	h=To:Subject:From:Message-Id:Date; b=pBfT1cjdIN1gKifrBWmBtqOSx9gp1qHAUiLppU3rOoPyzShjDm8DddEtXdftT7Sa7u1tjf9vvOWXjK8aknk+AcyxRJ+qSSMepYJhaEnkbXvWBIbdWOu5zmZCmmMlApJDRcUiVqH5f0NOdYrNq53VpvxokC+QsIDkLca9NFbVfBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iS0fxvx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iS0fxvx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94FCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749042593;
	bh=PaPajmZLZB+uRtrhNZAenMBGI3ow9ZiPv7ft0pZu3Do=;
	h=To:Subject:From:Date:From;
	b=iS0fxvx1cvqhzMz8ifLgI0yaQqwGaL3FkrIUcZFQUtzG3FP/U3wSRZy0j7uZNYQss
	 pKzGxx2rCes5tD08D/1c33d57eBeJAxrjUsu+eY6LzCONizKyLj5k+w8dJYM2q9Ktx
	 kYzLQfvatepbfe+9MHrjSOFzTF2W1TE7vPaJ5mbtXCsV9KR/UBrPa304wSPblNQ5V0
	 vRPP8H7xcUfhba1LEf5hHf3Jgt1w2SqEnfhRRIO7hFSjZpRo6vuIFfTOcQbLgDk5EE
	 ml1lMSNtjk9Qzygi8xCWRw5eVHTcgzLJ26g6v3Jzz4uqo2MRz3W5GZJHXpwCgSof+Z
	 86jSl/PYQJKlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F09C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904259361.29233.5587759394346705107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37e37a504903afae4eeaa6e4b170d09d579527fbe3fe7ac2ea2ac781f9164fa
Date: Wed, 04 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749042593
