Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031D370808
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762388994; cv=none; b=ZS6vQpLufMskq2YYgKo/sQ4FFoVB07ZscVr6ceLpDrtFR/6OxxpBHTbtHeairB1fiS0sO+c43nw6iaJPDqpxeYbKo0NT/1aYoH5lmVBs0euTTbkpmP/06D0aNgYdZSdWu15EzR0Vxx3d7j2OvCHFhrDslpRVSbOV979L1a29An4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762388994; c=relaxed/simple;
	bh=Xph+wxegwv1H1X/yfu6fbRlsOrMme5pj8Y9Ul8e2v5g=;
	h=To:Subject:From:Message-Id:Date; b=s7ALYx3FByVDqq/PaIh/qRjShWeWBPoGHLA3Ip/SUi+JJ83xVVKWxcThaA0UJzf1yQxN4GvWHwVgepI+9TXwGBHDNRCk4dMtlOneHynyatTzLsrPX1JUFpqvXWvYvtI7MqnyRc3700nUTe96Fs410Bn2delVK2cZMxDqAGKLu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caEka5Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caEka5Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6C9C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762388993;
	bh=Xph+wxegwv1H1X/yfu6fbRlsOrMme5pj8Y9Ul8e2v5g=;
	h=To:Subject:From:Date:From;
	b=caEka5DjyNUdLheIuMHVlk+tF9iD/vtdd60lrFgxOgfkC3qyZUm5MaCysgFf3NJV6
	 I+Mp5iz7gfbJQJwpSZA4hRZCU4/V12IByLJ46GJ7eIXxC8KbStXVJyGxurOZhkwW1j
	 ihiEKYjdqq3XOZPRdkMHh/YGuF81PyZQDC60YN2ui4FmWspsxG7pof9L/4m6fapo4p
	 T4VJVIO7TOs6Z59PXQtswe3Sk6ZqpYm65ipaW4jb9MDVQDyOw2NXn4vja39oN+G995
	 YBA3q03E/gmxeMKl5Z5czag0AEPM6njFPYtlGgdwyGTvIUFelD6IxGbP5m6zdbbztA
	 1ceUWMHkxX6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD56CCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238899357.14749.15132464069302744399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bdd23e86791c859603858baa184831f40e3767b376c57310984fff44d9c7f4
Date: Thu, 06 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762388993
