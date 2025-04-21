Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573A833C9
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745212795; cv=none; b=NzYKENvY1SEJeFpfpgp32Ns7kZNkEuyUMOmQn8+8IrA9HHI4D1iAxt8FZpdW+e6dogeZ/xTUxDz7cUrN99yp0LqbfgAYAY8ESUOdHeY0reBmKs4Ti8dUzvzSIZVBQn2Vh0M/HuLp7rQvniChs0gixqiRzElmXpreGdi4rQyyVws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745212795; c=relaxed/simple;
	bh=Go0vJtLMrW8mY2Os9htF3WS9YK700N+df55wFk5xrRM=;
	h=To:Subject:From:Message-Id:Date; b=o5+eGAm1BMySONZQbuISWISBliWI1UBjd/faBdkfFASIelLpILJl0clne1+vv56pXTZIYS0+LEV0FzSf/SpGorRghR8soWgOGg5eFcXNwfjByRp4OGbPRyNc0YCFXoTdYw6bNyPmtaenW2lF7kuigOJ15uA+R/hRTON7gy/eEVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KewVqPz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KewVqPz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC79C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745212793;
	bh=Go0vJtLMrW8mY2Os9htF3WS9YK700N+df55wFk5xrRM=;
	h=To:Subject:From:Date:From;
	b=KewVqPz+C2PPliB4f5433dzCLjC+NX1rS37x7JXu5bJ9WHrvbKGkLiZU53C+13jeN
	 gm73iqRZn74jNvwC+QehKFFW6xb+rUjLs+XDliTMZm8GaS/BE0OiitX5DvtlsJJw33
	 WSe9nYvDg+YZd+qI7NRABeX24xejJyLJmuR9DFDw7LJzgpLdhMKMPmR3sNqLLd+WVJ
	 3YT0pgwUGQcDpylGQrg5OvIUXpYgraADVRdsN2hZHFdeaXCk4udDjuuxVfwHqIQHHB
	 /ZXWE3FULad8cPC9P1JTKvQ1nTNi7HhrOsy8irtaTLBhuye/wusonhkq2vz8anKnGX
	 jjXVgKNGz2dGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E901C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521279359.4633.13447444197867640531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e765189e9816ef6e7e03cc07d6227e0dd26932de04c177185a38cb45c4faa29
Date: Mon, 21 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745212793
