Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0811DEFDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739388535; cv=none; b=Z8gx7dnqDDSnVMKHIlwsizNfj22zt2APAL89HJcaPr08wQb17K1yeUzKZvdDVqOqWVCFt3d835Fgc+hVkuYAMbZSNdrmJ5m0WVNyMRzLjQrQhrd+s2snjiUu7KW1XmYMA4QVCkoAPWGfYH45iYbvox0U6lHaZsnE5AiHj1OMe9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739388535; c=relaxed/simple;
	bh=faaEaoG5E4mozDhXleCjySqQ4P3JBp//Pr99Hq5biMw=;
	h=To:Subject:From:Message-Id:Date; b=FPP9kUjX15Ha8OfVw/EK+iKOPE7UZ7FKIedsjJrSTlQ+PyIq7UbcN+dSB8PaFriXeOGaInw5E5jksaVozZlJxSnWYOklCecMIQr1a1PZ/5kM1KCSWhXatt+WgiVJtrexLzWV9UoVaHH+N+dxemCOZlVuKbgiEz4LfQQM+vnokPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTE0SL+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTE0SL+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA20C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739388533;
	bh=faaEaoG5E4mozDhXleCjySqQ4P3JBp//Pr99Hq5biMw=;
	h=To:Subject:From:Date:From;
	b=pTE0SL+GXWfduUFUSAb8ga9Sf3BYNnLtAIwo9cbq9LGcFulm1fFSIOzPmzBu/6/tV
	 3376X8YfpH8WDqcxB7vKIDHgiUY4xR2fxKwYz561mNXsVoxq+AJZiwFynob3lj7TjT
	 tzi02lXy9ngRpE2Mp0iyT/IawNy9rpKw4joCfq9Wd90wLhgZuJ8wg69id25F0WmTVQ
	 /jxSqfIgGXtEJ3OrzSXVpS/yp8sVzgZoPbn2Gq5niha59MV0kvTPLROEtHkxEg9Gll
	 pETOTUOe2z9cGKby406RPz0krkTamGYIhV6HJjP7DxmKppsDltpznJ5JdTMuyB6qa+
	 LJbmnwhAnDWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CD6C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173938853365.16014.14675784539026536943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abc16370e3111b7557210fed558e83edbc177e2226e4968d9e0342d1a695d67
Date: Wed, 12 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739388533
