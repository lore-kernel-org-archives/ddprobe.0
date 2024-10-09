Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECE41DFE2B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728489954; cv=none; b=fVnjtlV4sPl7PGrROpJfC4+ifxQ1oHxF9E+COIEes5N+GtKtikZlq3bLIDHOtczMH5VR8dMnAUQvwcYScPSL3KNzFGGm8uaBLgtvjcyqvxmfWozm5Dlft98iYYnzwNbC+2AgTN+T04cUtWS9gbuSWCkhZNxU4NJ3pUFyc39MdAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728489954; c=relaxed/simple;
	bh=9lKYgr8SeuwaXySqbgnIAYW9TFBl0KC5ZPFdeSvJni0=;
	h=To:Subject:From:Message-Id:Date; b=IXU6Le9zWa63UqUCsfzURGlAjlgGeOGpxc0n+6xO++ZBNRqvXorsc7irIeXZpY4JUyUeeksO+mcSBDgW2ZQ7qknot+87Oh1oJP5o3YyhSCSxXE/je19omB3FryiTQBtb10uR+PucDILeA8LdLs/pQpCjyZoTFwCWTwPkAtR39VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWV6LOic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWV6LOic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7063C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728489953;
	bh=9lKYgr8SeuwaXySqbgnIAYW9TFBl0KC5ZPFdeSvJni0=;
	h=To:Subject:From:Date:From;
	b=iWV6LOic4Gs7RjIlv3ATfEeAskoxa2sRRM/z9ZfhyKunn/DlPcJwJ+JVKFmYljmzO
	 ke0p8OLkxGJepBTpFFbEpE5v7LJ4zvW4nNVo1L4uoN3KsoqzqWvesI5HuPd/EJyfcq
	 +sXG8kxYId9oDYdrcMd95HcZZCHh+8GJQXViTk1GWWNmHrsP04N37rxj3OzsZgR6Vo
	 dsHXpoRBk3TbN5OhPnjUML7ZK6UcdJWZyibgr6YJQrDeMXKejtNXxta1lLaKHcOLOz
	 /k8qEG+K8RXxTH+ldUvOar7bl6/35g5zWVFmcMjq31qkYx8Bfhoo0IlSXLfJQVl5MD
	 0o7u3gxZ47z9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49E8CEE32A
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848995366.4680.1791523379743190314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532f8d3cb52f245f023d0ead1383b2074bf72083b9c919685882efff333b567d
Date: Wed, 09 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728489953
