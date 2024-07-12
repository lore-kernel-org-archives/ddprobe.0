Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EA429CF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720769243; cv=none; b=mKZHTdOKMScHaJgcIso6bXAgGyhG1miMkUL5k3cvHgvIagMXQdIsMkHmZu6VwqLoRz4IQSToI3HkYz6AaezF0P1QG398VvH7nWsg1nYVMWTuhFIrte6zsP89LeOa2fhPThYVuXmDvzR0Fcz2NQ9sF1PeP5k/WAUrED0wMM3KjTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720769243; c=relaxed/simple;
	bh=aG7IPxGhAxm2UiPjcYEDW77M+ZSOTfjLkWAGm73b6R8=;
	h=To:Subject:From:Message-Id:Date; b=oOGZ00IftXCfusr5yDCYpscYMFBWuqodxHYxJn7EUaerey3xtXcCZOxKU1rBJBsp51RxMplzDp47rR1yRZDz/zZlljmu3vWhW9vB+Rj7vbPcyCsDIl1HOs1zjFeOPZXhsrF5G0LmBeg19C8af/FE06f4LFJYQRe6hmJxeS16YIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzHHCZ2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzHHCZ2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD11C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720769242;
	bh=aG7IPxGhAxm2UiPjcYEDW77M+ZSOTfjLkWAGm73b6R8=;
	h=To:Subject:From:Date:From;
	b=LzHHCZ2fCJcfjEzLo23M0hdAeEwjeX19DD01bnVpbAZDIjNSMFc0e2aZHIrXGc3Mk
	 MQn7Y91+6vTLfKXqtwKyC+IusOw+59ufYg38ZTquXie/uthgbfLHgrh8kNjZAgHya9
	 UQOSZfwA6zNy8fjr6hY4zeJG9NoP7s1WGt4qYJo2jYjNB5QPJZMeRRnSImTQB3EZ6G
	 GhRpOZIYoJeQBIm9WLa5AyeAHcFFtzkfpt/zlRR8r+kRgUWigM6OPh3n8bLtPQSoUi
	 o6saRQ4FW2nw17GRgVRDv211ZUGEWnsbgpIGl5CULf8kUX+im7K2cMiAV4xy6IUFoO
	 OmfyuyyKQflew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8054C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076924280.23246.4395757547735975882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765078409b13faa255733b57b4d405f5499fb1b786aab981ac9a847d46e76b67
Date: Fri, 12 Jul 2024 07:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720769242
