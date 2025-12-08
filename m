Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A51C861A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765160574; cv=none; b=rhfzvqNpxKo2TOnPSntA4wvZNbYOj5UM+TDUSiN9DsAtcrH9HpTjft9HTrY8oPAYMivTP+yBP42CvEFzuC+JUGfJc+RHqNOauQEyY5qQVFcp23lh8XlMObPet6GwHoy8cmQQWwtkurNdWN4bDRVIQlY3Fjp8lkJHATaT6wGfxUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765160574; c=relaxed/simple;
	bh=FaqBIuLJqRua1kCdn7/z80yBdw0vLeRV5QvvrfEvJk4=;
	h=To:Subject:From:Message-Id:Date; b=DVPIMfy9yP7vkXZl357nmAnoFY/e/yE4sxn+npZBI0bRCJZ8hwq6B5D9miF307QxghmpspJiNxPhiqwS+28eNUA8u7o/rmlUFPzVl9tY0xGEkSwmed5iIAkxx3gjaobikmUDPKeKiRPAIkDNWEDjSOeVtrxReCMJvyyzjtBdnb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQqcaifO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQqcaifO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D3C19421
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765160573;
	bh=FaqBIuLJqRua1kCdn7/z80yBdw0vLeRV5QvvrfEvJk4=;
	h=To:Subject:From:Date:From;
	b=oQqcaifOBHGctpzQVlYDayvzsFId8bNQONub6BWVLUv7RexnsJwd5aomz6w8uy/1j
	 sYht4Fvt41T9EvH8ORnDSpdnQoFU7uxksmZhoFhMdZrlA1pOaojJ08e21k17XL7ryG
	 hWPT8NBb3okiyEfzJDCovgRtmrsKhMarvzYuGOijhmDhuYqQ+IeKTd6P1S3M9VjBch
	 sd1BxpxVj7dnkQdVcbhQea5USlPlvjW6Icgyen49JZPiFROqoLZR2pDo5U3CmNG2lI
	 4KPJeB21NWFVqn+EsoXo+OuodIG1lkFYeM6ukvogO5r7sBmnng3uHOeYk/5yisDSqM
	 cK74Gp+uYiOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94484D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516057359.24697.12081309507713654891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74881565dd9a3891d638bd4bf6476533224e403caec01b2a0bc9a0fae359616
Date: Mon, 08 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765160573
