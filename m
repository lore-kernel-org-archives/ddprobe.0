Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F33E1F2381
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020754; cv=none; b=t2VrNTfYeGm0SUdgedh7JHCJ2AsIasJXjoPULkWZZT+1Yap/r8Dv+JfzsaG3sG8ZEVLBaGvpIUkycuCcYFarlceXXzotGLNTtP6q5Kk6aeiiyXvITED2Eqme8JFdzqLGzFgS2bmALt9Hj6TJrhfKD+rPfLmZCYh7rul/eEnh4Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020754; c=relaxed/simple;
	bh=ytNtgFK79vYTamR0TD8ssqR1SXF3BRTCBgfDCNw1rYk=;
	h=To:Subject:From:Message-Id:Date; b=R7HK7G1BXm0pcoTut0gzk9fq5cF8xGutalryYJ/OgTGHGa2e4nBUuvIT9VTLFOb6LPJWKF8XiKvkK0xNO+bNVV4xX1o764nLfv8bx5jygZDnnvfcbFsZzV51bY58ZA62ecQ0GRh8fZn63DkYLx5jyEUtFTcK1jlHP0DKbXlLUeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8nMFbou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8nMFbou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B260BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734020753;
	bh=ytNtgFK79vYTamR0TD8ssqR1SXF3BRTCBgfDCNw1rYk=;
	h=To:Subject:From:Date:From;
	b=O8nMFbouFRdAEdhI1RHW8La1ODzozUmVYzwJFu5xA6zJslLe8QNvk1tFo+FcrUzFm
	 o5lJOhmqUhLl6PUnYECjOjMO78Y+9NVkFeYjawCovC2hSkYEaNcyXYy5Y3VYl58Fi7
	 J4s7C4AlaYvDnU6t7ImMPjCEQaGAZkIq2wVc5h6/FBX0+77YZxqlD12paEnJYg4shb
	 3dU4S8SpKgXGELr9wvSJEkzSimhtm1i459JEDZRg2EnGXmPVjg4dDofcdRWdXqSvWc
	 SuV39NMzxp7AINIXIAZcEwrHQPLAxZyBRrHkky3sq3yfB6mkt2d6wqgjHwxxBHCv2P
	 Ilaw6kl9QvHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F963E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402075362.14846.3724943906388372779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00db3c32eb8cc62f5e2df351352550013e5db2a334358ab341a2c7f4dffaa7ad
Date: Thu, 12 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734020753
