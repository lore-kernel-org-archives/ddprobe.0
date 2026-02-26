Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DA037BE63
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772116494; cv=none; b=o5iG9+gZzcXh22PJ8uAfGNb2wsWuWfwYhqKiiX9Umpz3veGGBMfDdQ4kzWoSlU6PmB+zESouBKJdbdbTVZ+wjcf7iNf639/Roy5vCeCy1WhwrEHWH+nwF0RenBwIgOQb+XTraeKVbw8ZiTjNEXy4oV5gWJ7SHNeR4g97oW+WBgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772116494; c=relaxed/simple;
	bh=lG9fu1CLWfB8YXW+lOgZukZVu7qVe4SVwZu5As2ytQI=;
	h=To:Subject:From:Message-Id:Date; b=be47G5+g3U5O9JSqSRgFoiICeUpi3KFdpRm8ASxANvlReuaj0PSXzvdVfmSPki/Ru9icM4fSLL4ZKlWjzTzH5C6IYJ9oLXXGvkZGtIWnsXk51iuvvJHTQeQQ5uQfKROpZ1GPBHoYHz/4xRCQUCfElymDbUHfbXQomf0YmcJsYgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Olwyvirw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Olwyvirw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A488FC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772116493;
	bh=lG9fu1CLWfB8YXW+lOgZukZVu7qVe4SVwZu5As2ytQI=;
	h=To:Subject:From:Date:From;
	b=OlwyvirwH1cVWrBJOatNaAZlAfX2NWOu7xFtBMl9mVIgLjEAmMdZKJ5+Ks4bwW/FO
	 Sz1JTlN/wJK8JtM/pbCRckzlEZm1M0oNmOnDN9Y5dlPmQeo6wuNKyMaAfunJRT+JQy
	 Y4H7Vel1wySP7YvxSBWErVFbCKMpd4vkWtVkk4yJiNH3dxSCM40AlqrYRnQYwGiROa
	 PMx0qNBcZZbu96ZP9FeVPpqWL45/anZI/NCsfn1CnKzme9QxT5VWQwRQqKvmQTOIRm
	 hkKmiy1oHaeHkCf0o5Oj8BswNQVJt9bvtXmFqGIc9yh6NB634d+MNkY0A/mXsZ7GYr
	 FzReqRAokfFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6EFCE08C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211649359.19987.8352844640965873513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de50ace9b5e7ae871f8e2e7393dd09e514fc71565c9baddc0e83785ab14a4b4a
Date: Thu, 26 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772116493
