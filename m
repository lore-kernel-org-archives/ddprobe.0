Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34871191F98
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766258034; cv=none; b=Ka1Ruo4ICXG2NYWv3vDEj+hCHcQQpejWxa1KeuTNQtogwzRqjyXPvwETb5lNyd5sAblAPEdxI9EGfO8v9NMNZTKt6icjymA29i2eVFTMJI5ZrhjYyHmQ+oy6F9U2vvWFQ+xQoCXvxkRjrVxAsn81qqrkeP9QX0K6Sz6zOZ3ItoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766258034; c=relaxed/simple;
	bh=re9l4qVv6Npv8ZSQ6HuJMMp1xWfNPuCEBxE+YposQh0=;
	h=To:Subject:From:Message-Id:Date; b=FqcrPNFU007vYFIMNa0O0XqPIGGE6Yr/7wkLy4PxvLr+RZLCZBrmpfczXk034nKLwEndWB67s9Jv3/50Q2yGrfyBgOvR91X4G3Nvg1rUkJ7+MtYCjSy0/y0Hs7Io0PNVym0HX5divz3P0AkxzGIcnsVZv6luN66UGuQ/YyiL+KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfNYjNzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfNYjNzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE9C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766258033;
	bh=re9l4qVv6Npv8ZSQ6HuJMMp1xWfNPuCEBxE+YposQh0=;
	h=To:Subject:From:Date:From;
	b=cfNYjNzdNZEs0HYijKsE+CWDm3D9mtTUe8SAG5H3OkK8zIW+o5GXfDEzceqiWq5oK
	 LAoQPRsK4oKyqIWzlri+o+Lwqx2MT5LX6Fnls9aLsSQNYzwo8IumdZaLBkG917NDn8
	 8n9UvcZ4UElL8gQOjsg6ATSYrYk5J0qLcsIZ4D2tmknfrseKNQAGLM8o8WJgzeWu1c
	 PcgWvRL7sNm7qQtdl1mnVMxv5zVKDSLZWoE8WW9GxwIvqEOqSHA6W/ruhAIcX5CZ6q
	 KOWATDYPZwb4w51Q6C5Ae2iNWR8Icx8OkVJXwvgmfHHL4j6hxMCPrPI8rrHNcVn6TH
	 itXA9YOC9iK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95666E67480
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625803357.19832.17301322914469993132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d12771ec9a4317bd516c3d018c41d4005096565c872d9f465cdd365f33b3a3a
Date: Sat, 20 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766258033
