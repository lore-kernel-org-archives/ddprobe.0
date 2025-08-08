Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF9E2820B6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754672994; cv=none; b=OEOOlEhss30PnI1ci2dBpheqoHUfUMjIQwJ/2b9I+y/lX5razzWYh/oBIUeJ6wnKxE/qBR+9ixuTzrIuRnt5BzjwpTyTJUc3/T9vfkhhVHwM+TrRnGBN0zIlPaawVmzKAlPGfqcOKiuIxM4Adr89XJ46/jEFZ8w7EXEuOsxV3zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754672994; c=relaxed/simple;
	bh=1BrDSbU5KFjjTI8ATHQyP8PQzkLRmvM7jBhSQaeGy1I=;
	h=To:Subject:From:Message-Id:Date; b=t5XD/CZjllMXXOtEKK/LWEKUj24n8+dVQxYXeaiIYENBU8gnLZer4AJ0oH25oFtvQnHiD6hAmduENuNkKGuIEXSB6Jrf/vccfvs+UBCd8MasKFyvxix/k4YIilZ0GU5c0YfCi9p9eMg9jh8Yr+uH9EL7ieyhdGGh07i2fVmwLbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjHMW09U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjHMW09U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3492C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754672993;
	bh=1BrDSbU5KFjjTI8ATHQyP8PQzkLRmvM7jBhSQaeGy1I=;
	h=To:Subject:From:Date:From;
	b=cjHMW09UAZELCIojRWn2TVqOJCFxsZaS8n8X83/vWE+SuMGSdSOPH4PPvIuEifH4b
	 pIcfkr7JIpgtVAnXOzbAjRnPUnI9j/9uCFIiWw9m211fIBnFFX6pWSwAnos4Uok3cH
	 oYpUycRMGHqRjfBjbfjDM2VNhzeWQrQJXrM/I3Xc0D1ZN5hl8gSeodde4QxsKZbyHP
	 Hd/Ig59CUVg6bK3ZCxoWR7xANVZJASSgc1EcKQDfD36BAQU2wjizvUMAVnz+qpxlO0
	 HvfyzwnDn5SyfCQXNWUt6GDY0FFCSShOy6wGHjePAK0OjoXXdSsZ5qLuyQJjFj8dk4
	 SJly1u58eOuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045EC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467299358.14704.13436170110917582363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3337d995a344165a1c1c383518782337db874f13cfea2b1dfe30dea57f318bb4
Date: Fri, 08 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754672993
