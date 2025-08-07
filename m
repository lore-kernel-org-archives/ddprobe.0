Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA47226CFF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754599794; cv=none; b=KUbgKUkpseaq2sfjWC/SYCsoMzvw3g/BhSzqlKTAZSEMziGXPH+LD4KKBYfZ6j6tY75Hsc8lb9E+yVhqByr91ZcwWuuGsfoiLOrTfqWGyi0J380RSkLt+qHllcLK7HADK1gIB2MmdrRazmvZp1ht7tSD0hnuWbOFEpiFwYIq5zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754599794; c=relaxed/simple;
	bh=K0l+jz//PbixO6gMEpu0KUZUT75QlLcN0wnKZO0SFWU=;
	h=To:Subject:From:Message-Id:Date; b=m0W3ApX12naDC/akOpHbNIC+Xwr4O0x0ebrCS0QJAhl6XZxiR7w23c70KqYxrbhd70u3tnnlqVaLYDOqcne3xpxJM2LeYyBq0eroigM14nF8Huk6AV13Iz0A1Aybq0T8Vqg/3YTl6tSIZwnldtByDQMHiYQlfCJdQPp9r2WE5iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgetKrZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgetKrZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754599793;
	bh=K0l+jz//PbixO6gMEpu0KUZUT75QlLcN0wnKZO0SFWU=;
	h=To:Subject:From:Date:From;
	b=WgetKrZ4aeNilakagHdhUKFnfgL2uDMknqlqTzpCa6mi4a81Mr0/3/EHSW2YYfvy5
	 aUI52ceaTLZForO7RDDE9JGytNRfF8zFvtAjV0eWj7gpMplQJfDdSAhrePaZmVV15g
	 Z8OXvSumt8eLUSCl/3RBeo/bxO+PA6xG0n9lljHap48BZy0jQfKIrCtdBr8gqanlEE
	 VoQ5YLYCt7DiIJqDC6cM9VBkXfeL/BH/Rc/O9NuMfPrqaGimwiTZBI7/1DsjrTuh6p
	 sbbi+OMQ82WtORyB1kPGibtfuwjlwQbEnqudsO8/1SukYC2m0eefNMXwW5KLNta21d
	 UUP0X9J0NF0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F624C87FDA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459979357.15634.3081496048084773493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec79ee50818168402e8e4df68ed71b9ac8cb91cb8fc1a9071dc9a259c37cfaa0
Date: Thu, 07 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754599793
