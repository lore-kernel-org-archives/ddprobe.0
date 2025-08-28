Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404571DDF7
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756384194; cv=none; b=nI+j6pl43JqI/M3zCnP8bXkXRGGPOCJ80Zf/pRdMwmBi3JNqYiS3f6HZa03ty9ZUHIAXSFxc7rYu68TqCyaxTvaMnujaHFffUBKw2D7GZU/jhX0cpsC2Y3oms955RNZFx5IFNlBEg5xjQ43uJe999VgD2CBCIvkdmrnQYOHngjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756384194; c=relaxed/simple;
	bh=9OnNipVs/ffHACYKosgJIs7IUNIJlR4EV1LDlQ8nXCE=;
	h=To:Subject:From:Message-Id:Date; b=MTnFUiHEJDtTndpJ3RtwgQfRKDSklVp7OgeBBdjMjVIMLw1RHNp/Kt6Vlt++Pccc8ZGZdG/iTZx0mJID9VxqAJTKQKsH03ORqAZuYlUL7TC2sqSVV9Ea4mlaj+ZIsg26Bk3xWGL3m+kR3bF8owsKJbXLEgEKXcQhuJpXC1bfN14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0HjL+H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0HjL+H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A299DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756384193;
	bh=9OnNipVs/ffHACYKosgJIs7IUNIJlR4EV1LDlQ8nXCE=;
	h=To:Subject:From:Date:From;
	b=f0HjL+H0T9aUSZlodeR7dMEi9B74anVeQ/QDsxvWrdKRqfoAXxIX3Ns+5EhJhBJA8
	 6cTlhcwsP+cnDi/RPDzd/yrUrc6rgtHJd8qpfma89r5OIQRMK0JO/gRL12Yd2FgBZN
	 pZfCGk1GxxYBR4gqVnMtIUL0zx98m8JzxNCc9/4i7gfSBdEAgsKbT8j0rR8XXTm81J
	 XYBb+yo9I7BQ7H8lHXCrYcc0EtU4+6exMuha/zJUyag9AJGX05dAwvU0/cI34bQzSP
	 mAySbWHZA2q6W5lYhHFfx6CoUWTJOSLH5cpTj7Q4tdA3Ylalo37WzkPd7TbD7VfVLr
	 323fQOBPS/HiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE23CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638419358.9372.5310086816485278725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2c98f695e0c0771ff70bfb4b319344cc08824eb847acc0d5054f28b532611e
Date: Thu, 28 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756384193
