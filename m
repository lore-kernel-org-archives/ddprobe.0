Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246A8202C58
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754159994; cv=none; b=Qa0gfhNs1VNIZ24a4FGzZN5T8CwmIz5b1rWJQkDoIjYKWy56xXsDFHUQdvNhypjoGsUuxF9FTqutLJqTR2dtzOkMKjM8YZbH0xLQ+O3dYRi9bIGkJB6GqnJSZm9UMkv2JFKzGsvcRHXS8kHKMH07243vpkgo2pbdQu2/RpSLBdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754159994; c=relaxed/simple;
	bh=gAQ8ic9A6h9k9hYtEgNhWZE16Ix8bCjPapTSDT3ydoU=;
	h=To:Subject:From:Message-Id:Date; b=TQv6SJbw1Lwr+rgOaVLGk8mlozImtQ7UwQ0pRsCygzfMQsRPHdCghpubVlOQuCEVQ40vxr+UFl0Pj+Itf8PS4HrDq9WK7fdyubjPi5qNuxm7RZNWt0HatG7/S/5dbnd6Gcs07xSh16oXeVDyCV4muhfrXDwaXhoBXbGZGomaw0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4FqbUIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4FqbUIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90E4C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754159993;
	bh=gAQ8ic9A6h9k9hYtEgNhWZE16Ix8bCjPapTSDT3ydoU=;
	h=To:Subject:From:Date:From;
	b=A4FqbUIvQGktBxYh9vEEU7LBcq6z5tySf7Msz/IawY/QrcxA98qDJ0Fj1p5Kj08wt
	 tGg0+WBgE1GdMPUDN71NOuNKqUY1FSL4tj03fIhKmxQzbHKXtN5+9X8bV6+88N8ZG/
	 +0guqJ5XcKBwSnDBbQCvJDC+YXI+49UkiMIjCLJ3m3Q2z6GqatGUIabIH7+O9AFrNP
	 6NN96SZ0KilZNvXIGAEs6AzPx5CPmhXY8WVythDe9f+WvC+11HtHin45xQOVBidSQ7
	 5EZmEtqQH417HcK9nBsUggkXR1OR5qGUKAvXJtKDLXDcnmDqc1NHpCXKG0ac7sDLiz
	 sOTVF8YtYel4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A053C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415999357.10639.349018217674451444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e25df4af23983986170eb2f0a25363bbd5c4f4c1abbf41b71e7f3ec1ac9722
Date: Sat, 02 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754159993
