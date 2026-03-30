Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6131A9B46
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774842894; cv=none; b=SZHtfTgo+buMh/jWNzM8mCmYZb68KOTTnsRYm3QxCpfgRhzCwaEqtiGeTodOO9lbY6E5/jL2mM2iX6nO6mh1WLeKbp4ize0AEUnGmOnr/78vJ5f3gzi8lZFVqLO8aVxoxV03xZHjTVqvPn3r1uQAQ8PM5dMuxsZn79sU1aODG24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774842894; c=relaxed/simple;
	bh=CbhRPXDJhhBw3Vh/Q4bxHN0Wp2ejrzMkBgitgo8sVG8=;
	h=To:Subject:From:Message-Id:Date; b=iWQfUThQMuXqF5Xk2raUjhD1/HEH3kMArxFD1+dpEAJFn8FAjr9WdVipbBDwNEA0HfcQ+ONZW1daAXq1zbNIDVcuAcT4ppcAC2Bbj/pYjZEt9pq65cQe8vEl4/bLp/sGfMrVyq5hhaD+K+oJgiZHtPxnNiQP5QEG0ZhhLuiMu3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAiT8NWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAiT8NWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF3EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774842893;
	bh=CbhRPXDJhhBw3Vh/Q4bxHN0Wp2ejrzMkBgitgo8sVG8=;
	h=To:Subject:From:Date:From;
	b=NAiT8NWa+wQRIkLYLgDFZVEpCgkTmwa0j+OCJkpjVpWif9RvQoYhYLtHTwqmhbukP
	 i/d+3FmNYyrArGdp5uv8Bg6opJ6tq7Zs3TdL331Gy3cnt+YviiNkEY1jluBvA0ODab
	 iK1dUXsioCgpebNdSxzY1pRZhAj9fWbDYqMuEXVkO6ky8Sd1+lR1dIKWRoG/ig5f4z
	 6WW5gvm83UJTEHLQCi5k3ROwjEoYKx3u/z9PlRyQt3+S1yhudmA8YdxmqNWPONlFU9
	 iH6ZqM7rcKn/XEOCH9m7r3fR+kBUVWUuKgH/GFik2rt1bOy1AKDebTf4TUI5dqn/yw
	 affBHnQjfHXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A1FF4934
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484289360.25228.15645316978069912680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7d30c68fc8df6c0482d60f97c4f9a55ff061ac99de2e51144a6c7dd5b9fc7f
Date: Mon, 30 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774842893
