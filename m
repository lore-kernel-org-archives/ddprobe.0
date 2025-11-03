Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F1E238C1B
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762200594; cv=none; b=tEcsdKwKAl/vFgp0opR+NEksnc5vlBLxyKY5UWU2fjI/aHO+jYTFmVhFK3pp2UvnJbXVfiTi0f0AXdhtey+ZuLSdt+HfeLbj4Z8QWnhVJ/oJK/J/wKu/fHTpWMr2FoqwpZgDUdWUAJEjLrWfyK7aizSkAZ7LNTPnKpOSi74K6XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762200594; c=relaxed/simple;
	bh=RGdCwpvWc6wJB6ZilN0NYa3+yrpmCgcMWcEMVhq5XO8=;
	h=To:Subject:From:Message-Id:Date; b=P1BYo04WmN4CqdTC3SMffnn0IOZ9YW2jmZYnUkqDvFYnP7gFi3K/B0lHY/F36UwKJ1rAnSis5/KeLSTKJdhGXFOEoB7fQYv5sdW9k/4T1B2+yZOFoJQsUbCjqctxxdYxrIHkRbHSzN1N4BbYaM+XjM/Hm2yYmNfhONHFz/XJlg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcrp8ppx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcrp8ppx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762200593;
	bh=RGdCwpvWc6wJB6ZilN0NYa3+yrpmCgcMWcEMVhq5XO8=;
	h=To:Subject:From:Date:From;
	b=lcrp8ppxNX3aq9wBoabDWvO132NT8CBlYw6G4C9AYPDK8+72MR0XxKsENxc9YMWTJ
	 5oR0eUUAIuAcZa3AW7j/BUq7ZhdL5VoJfkXi0L+4XJxYDGnsFlsL4BMNw/c/dKDpYR
	 8tpiy57Fw6BOYDGuvXKll1Dxhktod5O6gycQxcdEtVf8E73zs0PHenRaf/sVLWzLet
	 H+ZrZ/2zim/DZWGa3MZF0unVvFB1NW/JCWRzFr1Bpx8Ebu5f+XmgpmFfzDvCkI6rh+
	 xYZGwONh2bWfuFayFn1ahfg4Wn7FHHPgxNgR6aK3xAV3t9JcvoI3RBjx1w//z4lZbN
	 LP+/IZDDNp8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FFDCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220059359.27839.9907493783339564833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484ad3b1ab83eb4d6a061800d605abcc8d57f8b97246e04401dfcd51a323d833
Date: Mon, 03 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762200593
