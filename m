Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C16329C66
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781432794; cv=none; b=TA73hSW0zUYFNhHbhMbtN+QXaY6Gco7z6wYq5UxGnh7bRVqjpcm5njFz8bUEE842nagRI4pNEYUl2PFRm7axjLEncnRTgNjWS4jVw4648UYc/+n2cePGDJY4jnDYiO6IGnL4DxmAM74kzgfMvlM8w05IcWRMWM0cqrtqpn89ULY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781432794; c=relaxed/simple;
	bh=h+nDOXKsiqFDX3zPAgAMo7s9JPFIRIlT7QdmR/CgifM=;
	h=To:Subject:From:Message-Id:Date; b=ZyOyrcHdbrbt/JBf9YKLCImjckqBnjMGJ3OWZ+llzWK1euw+utDxsKt2DO5CtxUdDWsGjH+HribVlitJ/iD1eqhWs3NVQctiiniVNOpghvKCuGCPZzTTPZ49A/GoAg7g7en9HyftHKGK6j4nW4WtS/r1BkAeK8SPzmKmcriQWug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqmD07qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqmD07qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C21C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781432793;
	bh=h+nDOXKsiqFDX3zPAgAMo7s9JPFIRIlT7QdmR/CgifM=;
	h=To:Subject:From:Date:From;
	b=JqmD07qrrjq0AMXYHxOYu9FCo8rmHoPaFc0Ms6xG13FVsf+k5JCqJcFAhsg9SeTfS
	 eHoZxu0piL5FJU3I+qBNegM/3e2b+ujFnk+AqX1mqyYldji2tojdZo0103PmmVzuqX
	 6GWgVKQVbv4Fel9cAX0d6V2fi29WIg3vSnAzWSudAbM6WPrJ9+i/9BV+d4bbGd7e/j
	 hIqDF7phQjA27WDu+e9ECIEgSZHhxI2CFW5Yqt/qqpG/8b6ftvbLS27oAxBsqUeUlx
	 dI6P2AZ+aQxep5IARZu9tEXCXx93G3UGBehZBXs5TeKBXOk5OMNZcyhL3Ussk3juwH
	 oH5GfX3d6kOEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD46CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143279368.26484.7124110659241947077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a998e8c3f4b97ea311fb86e7bee2f10167868de6c8f64435d34fe5cc4467325
Date: Sun, 14 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781432793
