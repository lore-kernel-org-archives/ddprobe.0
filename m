Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F23137E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753592994; cv=none; b=X1VsSz3yDeMS6Zg9V5wW4xejTv8REDsG8Joqg3InmHl50Zsw5xgneMYo9osgwn5MlBpGYqkagUXaF8dgYi09459c4PrD7vTFCgaumpE2mUYCaEyDs74mIPDDUNixD60dB4JG+HZAdPL/ySkCUXQ6VMKNtAPXpbBB60p5N9xOOLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753592994; c=relaxed/simple;
	bh=xQLsdIQeglxRlDSMznmforvH876qNelIt6rxnmXi40s=;
	h=To:Subject:From:Message-Id:Date; b=CG7kXVNLcZ9qE3hm+FavkfkFdsJMJE2WAKiiQC5Se+KxpiycdKQwWW/mJp5TUAqKxNj766J6vJsi/JPRZ5XPJnQOjLx2W8mpJH/K+kIt+l3ROUYsALO4w3iKs5klD2O7dcTOUlG89eJMpkqRzWfrBH/T216k3Ww/q3SESjCfKEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeGe0mcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeGe0mcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753592993;
	bh=xQLsdIQeglxRlDSMznmforvH876qNelIt6rxnmXi40s=;
	h=To:Subject:From:Date:From;
	b=IeGe0mczx/tG7pm027ap7WcYOh+kSXJe6daaYPbMUlmeBfee6+LrIbdnrJ+dLfTBk
	 3TjfCGZASbynLQJmDpjuHeDYVVwYhW+ZrZ+vxc43cXjhqtlTyTGt14cWIF0gZ6j8HL
	 sPMtX7MTl6uhLogluUoVbxViC+L93XIK6ykkKNpYgDwW+lnG6q3MyRakAfw0s83xl1
	 YLwfD0fnWawcevWEQgYzoxrlFciWxxq8tdLcXy4zsNAA3css84IH5TGELNoV8IYiHW
	 AMX1+yuDda0gaSqLAPcXKN2eHEE0WgUDvaOR0KuWbqQmmssFv682EW6TW1upiujGa5
	 capt7xIv1oBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B71BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359299357.10215.13320483891628078383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b400578e108a7e60afd71e441847dab20ba07592f46426f65a2a896db9b5d7
Date: Sun, 27 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753592993
