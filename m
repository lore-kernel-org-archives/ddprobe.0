Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC74014F70
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773711293; cv=none; b=XfgHy8rR2U8aDJn31vJkQSimHGX1n3AFo3d7hkYl2BIbmCWWmKhUmQetsox5wxgBZMbc8swPFOQPVoX/gPxCq166zhNdITwCVY/9O1/7pjlmmEmncTr0sE+J7Cv7sPWUgN9VOhjW0I+1P/rv3Fn/ghNlAey5U59+S3/XM1bzQeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773711293; c=relaxed/simple;
	bh=9d9RBcGMw4TPyVUD7US5Is1jUWIaU4GWIODAvNQ5IAc=;
	h=To:Subject:From:Message-Id:Date; b=L6LjKCVyDsh+eGzzrxf8S95wYHyO8ABjqJLtPimkRZTpDhpmDb6MWmmOyOxQNqV7S5CFAt3yW5XB3prcgOsw0Tov7QKDIbveTPIhHDRdMYn/4bNC8gkj0RCJ+HoBN5VD2ZewxWK2DojYZ9rNz6lGMeRnj/cMgKzzJbyiAQDELpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVAi1OAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVAi1OAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046BC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773711293;
	bh=9d9RBcGMw4TPyVUD7US5Is1jUWIaU4GWIODAvNQ5IAc=;
	h=To:Subject:From:Date:From;
	b=AVAi1OAll8UKDb9L24nmGTsPJoIrC0x1iUnftWSKy7uesos+JonFDa7IEGMJ+eBx1
	 t5qZR9vomIpHVFw7v50NW3zYzMY8BkxqmqQi6MpbFKpv5+LTvtI8J4nzJgcpxfbta4
	 Z2I4BvK/evgMqicfv6MXUPxSTFW7bPLA7PwORREH9j8+Wp9WEPjKgAamzLELzZp6bD
	 KUOE3qF0NUOVL/EwKO7n488fwez7Cmb7UiIwHOBlKcEqBGuAsTNk5dwuRuy98ghv+7
	 hfny0ySLmHZzS0mMj1rtnOP3JBlbi00bYOSr3kheSKXC1t4Sv3BIHyqyx55hiWme/N
	 iJ2KNAMbIUOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BBFB5EA1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371129358.10389.522093676475965479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f64e213bc3e451f4525950f82417d286c868b0ef3d91f0b2129099fa535f36
Date: Tue, 17 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773711293
