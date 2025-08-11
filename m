Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780F8F7D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754886594; cv=none; b=MXlihwGI71NP0FC5g3gQ/0p3ldXsUYQeGr4nmUpskNUO7nNG6JptlK4D7SErQR0lw3zWu2D6J7CtoolL/tLTap9XQebbxi1LffqTWnxLl0p6T0cgrWrbWxaxa8C2lZuyzucB0h39xTY9PMDA+aP/1nKz8dlJyuSMvGou7JqIib4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754886594; c=relaxed/simple;
	bh=zSx7DT5jF7hlEV2echODa+ls3FMXiIRaq0hE1W9e/ds=;
	h=To:Subject:From:Message-Id:Date; b=UKfbh+4cqp2hpLZZz8zj+MSH01lxWFDnsDdVHsKswVtZDRAj1M9EzUN+Mg28EnU4A7GQXLHP1DHjrYWplQjjxS9yipxfER/kSUoZoyEuDmaDziHnr+izD1j4e9IN9bVP8L7igKSBRsvjBcTj50ruwZOIAXvCp1cWw3Om0I8jFDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaO+ICmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaO+ICmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7687C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754886593;
	bh=zSx7DT5jF7hlEV2echODa+ls3FMXiIRaq0hE1W9e/ds=;
	h=To:Subject:From:Date:From;
	b=DaO+ICmngM91WZqwFfv3o39fCUb1R0piANjnwq/WUL8sOCxBcxZFPjSCCLMiaM8CW
	 xNZP4ryR3A5aROqTkdC0OWGMpdGZpLfbzBFFxNfDAsx0TZEInrXikd3I7qonw8t82F
	 cWbtaL3y4Ijuf104YwFnqc6yMcp8mndxKmiTOCBrnjOXYY+8bjNRxGyeDSdviMFgwK
	 S3SM2Wt/C14tCuVMlViio79Orzzh/CtdcMUcIoeks5D3XoiBSjjx2Rtr7GXY0nSozh
	 z4cDPaGJ1o6+jakgS6QGq5lZYewM43gWt/8a2BrwnRbRp6Ub24xsk6q6j44+iue5J5
	 bSZdXy4+I/8zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9403FC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488659358.27769.5937843902780252762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df100b4b38a3ec56035330c445942103004af6831bcb356a061be9c167d09951
Date: Mon, 11 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754886593
