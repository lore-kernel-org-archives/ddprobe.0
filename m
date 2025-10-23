Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1355B25785D
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761235194; cv=none; b=dowwKDqyl6anx+EQhLLIaBXQ2vc/PMYMGVeT7RUAZq5H/tkeu9xgl2rBn3pQhn/9TDM/2Z/meKxrL90O68kJntv+iJjOcss9ppvqacaawYaLPT7hoTXpc9RAtcaRYNyPaRGRk2wsd1b34Yl2qFTfaH00EKhKls5pKz1+YaBUVZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761235194; c=relaxed/simple;
	bh=6c/lfWcDiuWy+TeJ9ZRyn7j5lDUhMLa5hs95DiYu5dA=;
	h=To:Subject:From:Message-Id:Date; b=kqPIB/EiPWMk1ih5nlK3JCD3uIcjy/hMIYQ+BSGJcXPkraRutd5/mrKB4MzXnz7CHbfbgqQoR/qhdNywgfPWszsOWFyHIOP/Tyn+XxAdOcb/9bASjqeNn11k0v6cOm7f+LGxsGVgp0heDulOzfjEpUpaPQCUdZuNPFLRZgjjqvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvOXXz/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvOXXz/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60FFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761235193;
	bh=6c/lfWcDiuWy+TeJ9ZRyn7j5lDUhMLa5hs95DiYu5dA=;
	h=To:Subject:From:Date:From;
	b=MvOXXz/9Gb7ZEuXGN0WoxkHLYPNeukrc0tlwoo4D2fewpDccKjBEM8qVnG0bVf9Sv
	 hxGkH7OS9VjQpNwQllblaRh5rqlxsDAcPpgJ6Ke2+a2obtTZKo6h8fYYzUTYLNP5zq
	 Dl+Fn98Z++Bel1jxFmS8ah5bTdC8c4LXv9R5qOT1mDKu9smDNt2UViTk+jCSwvLQXv
	 DIF4wPHlUtzDYCO56GdOx5P+tPNkMdK4VqdtfmFO3DMi54NtUMbUbVy6T0ld8CPW1A
	 JYKtMlq7uQefUnrVN3aDjuqL3xbV1TZ4kZg9EBycwK5ysk9qxHTdJZMxIIzO09J5wH
	 UE9LNvCaGZHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCFCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123519359.28216.18115428171879561129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b842be17ad3b3605532bf01ff8a5bb3a76d2f02f949bf0265e1488fc4bd69b
Date: Thu, 23 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761235193
