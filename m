Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1AF2D94A4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765021374; cv=none; b=So3SAAF8qFttyzKiCpwcNVMb1OqzM25iO/QXvHKX5a3bgBP9SrejBwh8A4v+sm1nBnUP9ky9LbLhKFlkU1R+Elk+ez0nHQzvyRFgTp0fdlOlQlfxEcbYVPKxlyuED8SosOC5sCXUJOgOzI+mpyYv6rWbWAVqtesjQModxb46ITU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765021374; c=relaxed/simple;
	bh=S9ouEwQRHIBYDjBfN+I1gN9Zn9NvfDV36gHgQ3ZvaW0=;
	h=To:Subject:From:Message-Id:Date; b=gTJ3WdGVK0aZdwV0+nvywYYqPk6p7fnfdcX1mE+ABZBB+TgWKACIyyXc+hvapGsOnnAMMlgMv3CE1cwjj6jZYYjAYlg5VGxlYAQm4JKhTd3z+yQnPfKtuZ0WiNLB+4doSZ3DrZYQYJqPpyJGpqBw6nA79QbT7vXisd7W/vgqKEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHRCYltx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHRCYltx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E900C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765021373;
	bh=S9ouEwQRHIBYDjBfN+I1gN9Zn9NvfDV36gHgQ3ZvaW0=;
	h=To:Subject:From:Date:From;
	b=EHRCYltxF0NKrs/PemykgiZXAhndjsOrETKC2ofJy+lav20HWAPj3BTHKWmlHZNq6
	 5NePfL4PskiDXl4RTQw1bHBPEJdxIkabcwUokg3oRRQduxVobRbOywtBpo9tIk7MME
	 rgel3Guq+lyKgbpwd9DqefTFTUnO73YecPUPLD21JBq59H0tw8jqy+aGu4uwwIsh1Z
	 t4pvM/jeY/lVOh+2tg4fpo+HXjDRwYj2ETgaERhIV9QE9ttL2KAoCjc4nNbujvFQzB
	 hZ2WYSWSd+QxxP4x0vxOo+EH8EqrBrAMNH0Nu9It7Y076pwpwuXAxCit8wpaldldid
	 UV6K+byFQLy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91470D3B7D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502137358.30872.10049424560028417731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7221b70f4b9e19418fbb3e04d431552fbdd2757298671b6c7e553baaacafc02
Date: Sat, 06 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765021373
