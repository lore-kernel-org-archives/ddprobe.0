Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3EC18B0A
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766019234; cv=none; b=tBMEjl4tba1uYZ5OVrpkci9Zit3RttKVC1p0GLi25KMVwi26LUKVOtlkjpgvdyLehvtfrN2/7rb020aEPuKW5FzpWhJajgA78ys8YL+GUkp9A+DmR1n8ASOBDNQdZllf5Z2JJENVEHst8lqEXq7YVIum8ENZ0fCWTKzOAyC6jvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766019234; c=relaxed/simple;
	bh=GjCDnHKnrBt/PYN4OqzAXq466gbYKXMj0jPXFcjj5SM=;
	h=To:Subject:From:Message-Id:Date; b=FemSrnhhJPU0bJCw4z8+xS6Wi7njfOph70ZNSwzL+ss5rS607Fstx45/A1XCNp+9AlwoYZ8Eyt9ycmjI0NLhr6owFUumfgiuiHbVIIXvBwbfZ7rXkkOxb2G93VV93WNEKOIUMY0H66kAnRIkTwDNaqCZ7nkWwZigXHJnK7hBqXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuM8LhZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuM8LhZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1173C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766019233;
	bh=GjCDnHKnrBt/PYN4OqzAXq466gbYKXMj0jPXFcjj5SM=;
	h=To:Subject:From:Date:From;
	b=QuM8LhZhgCgHVcshR/r1nI0h6zUdfrnK08Ugo/Zh6RgXkEC2IZjguqa0G3kFLXUL+
	 ZeieK7hz7lo7Ioxj6zp8brYkM2WPK1GDZF2HkbD6mBgu0gsDpskh+LtLD7oJUHCZHB
	 tqXqD/9okxmtzhoiyJ9nXQ0apy4Pa6cQgKEVPyZeX6lntzkQOsQxudsJlNIhC0WFNM
	 +aL2gEBTdeZrVFHUCocAr3+ZPyyhOJ9pefJzd27pZd9hMiBXxTBvGU3w+kYcKQ5Q9J
	 goHDsnzGs0dpGSEC8XXLUm6rs5VJ1PP5F+dLYLKViPrjubn68q2U6LGTwfyh6Ny5DU
	 x/B3Ydtqg635A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F900D68BCA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601923358.28867.11894573786190835832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f217043f15f49e11344cb255d999b61f2b1d4ef33f16dc1243bbc722d1f3d92b
Date: Thu, 18 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766019233
