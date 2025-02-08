Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F79D241CBE
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739036154; cv=none; b=udTzH2HYsXa7aiffooijsw89Bxj3QLNP5BMg2bZNb1UgYhBIACb1ZLo783gjpe7REQuENO+cU9NdyXB9Ts6AB5g3OGjLJ4M6nxjYWN27tFH8j2bVc2TpXkGgoznZh4jHAGlWvQHV7qezBww/afdMmx2VdRs7DB+MzmhdHZj8f00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739036154; c=relaxed/simple;
	bh=BzRzh/M5HSaXMfzFJSXj8ebKADkr128VfV7U/SKJ+Ls=;
	h=To:Subject:From:Message-Id:Date; b=abrMcZF7ikyskbntLWmgEscKhSnrZKIoJIQukuNbWIfPQQL2zhjqKjxCI7t220FBxwBgRA55bCQnlJPM7aW4hqwBnbOmizK4FH+P9Z9wei+e1WgQ/XoKh3u+R4Y8gcy87wYHE7YQ03ARr5YoQzaN04c7dgI0/bbxnbquvVOqra8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8sOBNwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8sOBNwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6345C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739036153;
	bh=BzRzh/M5HSaXMfzFJSXj8ebKADkr128VfV7U/SKJ+Ls=;
	h=To:Subject:From:Date:From;
	b=I8sOBNwSnW78GK6LMMniywW0bdxVEVnv4J8qHdMCud1aq9eMSGgUwLL9nk9aazlNS
	 1ua4vD4nF4xe+QPV+5YhMckSF43RBUz0doQeZ4Nz2Ip9RjwCIYg5OiTZDNt4baCOMe
	 9ioMZxAbDZ50jNcVYuXgA0ffnQy/OzI2xJFWVs3O05adhVz7pB+V1aFnnTQAHCgfM4
	 hAxznlIYNyzot0nSLgpuF7QxMSM//e1/L5iws3/NI8zaD3ZrqHJlYv/U4PjX570YIQ
	 JkHCkUpzMPINlRpYP7fu/+uYc/MCakaCpRTDRk4ZAk6bhvIlL9zd9HDm9tdLNZHZSL
	 eu8PqDVaydrOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B019C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903615360.10962.9802716809553233647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1b255b76d9c405a55d0a8ec0bbfe11b809804885cc2cc7d4e3aaa135f8303b
Date: Sat, 08 Feb 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739036153
