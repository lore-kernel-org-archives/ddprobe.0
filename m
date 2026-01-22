Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741073148AF
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769112234; cv=none; b=HN4WnZ4YdAJ0OtNjhfnx3Z0Ij/g2VOGd3YO4GDaRP3c0sUlOi8a13P7CqcP1957V6bIQbmOvAnZ36AmM52ZWInwWY3OvvHpYBrhLDLJvzkGxp4NZzA0QKhY0Yi2j/CQxH7/M5lFt+VRhC5hShruyjblxNKwBi4mX7UhK6uy5RY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769112234; c=relaxed/simple;
	bh=KSpErXiZ/d5ROVRJ7xqg4ZP0pMLwjZbRf9QFIQGBbp0=;
	h=To:Subject:From:Message-Id:Date; b=gfU7BVy4eU2JbiCJjkZIPW1MSVtpQmiqqiasikyO+xq6ciB0SS0YTZuf6t4z+zyOQbE9qCw7wPLLkjSnu6J/0Ja7A54ou5bTFiGvRi1NBE1h6wU7YmP82rcH40xv/yyHfPIrxbbXIfT/agXQx//D26/311uQ1O3huowt/DlQPGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWB8kcIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWB8kcIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6AFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769112233;
	bh=KSpErXiZ/d5ROVRJ7xqg4ZP0pMLwjZbRf9QFIQGBbp0=;
	h=To:Subject:From:Date:From;
	b=AWB8kcItLxWmZOUzOYspe6wIKxmRbktJG/6SgDzinDpgszAHiMg6O6BbqEPiL8woe
	 SUntOEs7Bo7iwVIt3ol2kj8NbgVm1qZOSb+OcnBporBMqnd3oYKujr8jCb40i1CZG/
	 TbYJZnyVWJPMv5Hb1M7VkW0MFra4C559ECHvNcFOAPM6OXkUSvcq3bIP6znz7Z7hkI
	 wDhN9jBQTWq8ZNS9d5U6lDKk5ySx2ItjpqzZEbKo1v+ox4ucGcaR6EhnO9qIth0EQL
	 kirPIEHGZJrNHufBDD5CNgIPL1J/ZAMmCv6aX6E4yNdMFh5XaegCjPckb/COWP4oW7
	 8lLyy2XQ0QAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99692D6CFA1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911223359.2146.563394392846860173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1994cbc5be8a7cc366d0947773132115d7fcc2e08d53ebc8caa0f6a4bec98f9d
Date: Thu, 22 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769112233
