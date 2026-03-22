Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269EA175A80
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774176294; cv=none; b=TKuEgeN6HKfmRwwgzOVV/+Pc4zqqmRaZk9aK0T/m/qG9L3xlS2f67gFiZj3MIrwrk08pRIfFwow7TegfkM0dQlb8TVfL+SQikHERYvgocXcW9NL9KQ8mI1HcS5EGeYNw2xgSbX9ru7I1kOaUKDptCs3XKqlQjwQmEyGnlutfq4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774176294; c=relaxed/simple;
	bh=nppb8TKfe9NyC3wHvTSMgD9FsoGrXzm3yCfWwnvUXk8=;
	h=To:Subject:From:Message-Id:Date; b=eVNFrxFezyoU2qf3QQBRg098dIK0+Dgu0iAds9gD3genzgRfIXam2VVWQWCAFTbINZVe2+jXXk28zJcN95yIS6AldrcfU5kHEVmPEmaNE0aq74QXY8SOeHHdjji3rTWI9OrU3jDzUOQRR22y82V7qjuZoEZDhUNDipZFQJDz4K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaH6LGiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaH6LGiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EE7C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774176293;
	bh=nppb8TKfe9NyC3wHvTSMgD9FsoGrXzm3yCfWwnvUXk8=;
	h=To:Subject:From:Date:From;
	b=ZaH6LGiF+1eKO8jbnyKTxdCMFb3XHoeJY5f/VZD1NIrrZTmlKy8RACeDN84GiEfUQ
	 V4La67d14BjMSDSYwUqBCdr7RcxOoKzmuAKW2Nv3FoBd4nec2NKJyTEkM1Ts5CoWpf
	 UhkCSbQ95eSQ+bxESxZUT2Y2WHV7ZhynYA9SYjNPxT1R3Q+XDjPvNPlXY4JZGfrRje
	 sRmXG4T+FQlFWkSRC4IGiCmfrxm+ox7PRPay4Y73khDQ3IePQJFigZuDV2luSB/eEx
	 0G1TpHGqM8QbjbKiypvk/SfchvumYBtWb5R+7t+cpI5G/H8CznPIb8jx9fhDaGCz0x
	 1nzDxR5AW0YfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F7FC72BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417629358.8729.889928805884023426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55002cce89e0f1cd4c2936e769896d6cc3f1ee27c5c078e769497abe7b4cebb0
Date: Sun, 22 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774176293
