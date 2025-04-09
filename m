Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42161442C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744170594; cv=none; b=ITfHAfSE2FYmkSEu6CQK3Lgj/6Wd31kWY6CUsQxJvQ1/u5UUbjdWzjCzOYgm7d47Dy2OTJF318vNkFtXhqy8vCZd8WXVJlHc0yiDTouURsYk27dU/D50cTgnA/DtdW49IwGn3sGdm6IQzGLZZpdA39rPmJ1wZFGiBF9mJJcxwNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744170594; c=relaxed/simple;
	bh=N1q24eKFFgTgQGZxEpTo+iZo04b7PikshVuujWGxPz0=;
	h=To:Subject:From:Message-Id:Date; b=BKJlMndyHVCkkcKA0WBrTscmSWPFT5VW3E95S73dL76uU3kaOduzcIVAx9wMDC5cQ87OJ/ifoy2HeZ7UK9b4DrXTVGRwUjMe367fKaqo+nzmYdmfhT66/7gP3N1U0TZB1BvjiPYKGPhOcsPpGPmHfC2M4Yt6Uj6YaauI2nzJ6mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYKhmVYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYKhmVYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DB5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744170593;
	bh=N1q24eKFFgTgQGZxEpTo+iZo04b7PikshVuujWGxPz0=;
	h=To:Subject:From:Date:From;
	b=hYKhmVYcylijng9PU7BurZ6fo5zM52tQrblhI9YiI3SViZfgVZM4GBq2B+UBj06TI
	 qG17j32O3iVRYM7zOWU95mus0+wm7DjIECUcCGEEVgcRKNJ48FD0Cp0k9N1C2/eKdL
	 x3LjtVUQp2qSZbOQuH5tAWgPRaTwhI3dIAfwHzwhYLP1xR8CFf4zpGz1wK3H82eoEr
	 6oQHJGAqLjkFj9wcyF85IP+UO4r0zuVbExV7ekezVT1Ba8quiAaewH7oBZ/HKtjjl2
	 IUxqaUbQoDAB1smb5kDP7q7iru0mD9gbZkrD7jckty9kYa8EP5eKvogl//0rAoiwj/
	 RAATpWIo8yfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B38EC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417059359.16055.13306429325260198921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd128ccfb9e505da1dc8bbd13c42edc6dccd88cfd3cb578525aa670bb3c77db
Date: Wed, 09 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744170593
