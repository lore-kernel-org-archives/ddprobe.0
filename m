Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AA815E90
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741839534; cv=none; b=jNOh32XVQNYZuOckqTPFBu5Uch1sbVJjggxYJf2DD9s3fjoFBrKGd8gK92SknYaJHkqsckpsHo4U1cRO+HzB5ZzCrSWEVZO9Q1zhh5WvgXh2VKLI7GXKvULJIyl/CNNFi7D0FnOt5Dp+BCgUZfqkUkZauPnSBR6VOTcHjht4N4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741839534; c=relaxed/simple;
	bh=bJSYEthMvHRodR+QE/RcsT9oGIUvWdOmImJ3n7PPAfQ=;
	h=To:Subject:From:Message-Id:Date; b=V0GzNh2oqFCjX1y5KLbN2rjEYfbUkFvSVhPzh0IuK7Y2HsyZ31ofaRGQqXXQG9OYh1JR6l1E5edbGw4C6ZL4wf6gXWo1F6mQeJ2OQBW1y+ugYX9Y46diblx6CYWWRxr6QCn04iPSevFZ63WhVqEpLN7UX/2fr2eFOflZKXcSYeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNnAzwI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNnAzwI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FBFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741839533;
	bh=bJSYEthMvHRodR+QE/RcsT9oGIUvWdOmImJ3n7PPAfQ=;
	h=To:Subject:From:Date:From;
	b=BNnAzwI8t2IXdH+0BOL7Tq6c+xXzWOPrsLpL2OaIyrEr4yTsiMPM2pmcLJVVqc/gS
	 Up22zsr8Hlzpg9wScQtsBBoDRZ6niAJzibvjN9OIoG2/XTg12jd5qYHxfHWkGM6V03
	 mZekqeIs2/PufuCL9Oa8Si8dSQ+eoOSxdWBJZlEQ+bZLAevNg4riFBBCOdPxURaMc3
	 3PAMhHAfqsBirv311Zs6eCVhYBnfqlqym1+L4KRSYwlG/4mKEJZcPKPs/beclpAWI2
	 T0V9/FuH9n3QM1gOnqN+XFhvhRpJOCNh6Oukv5swm1OJ1E0mDnllPvrVh5tczN9Z+m
	 tTNGUF2QoFFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A13AC35FF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183953362.15934.15459074046232479694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4a511190804e775d1eccd8c264c494d25dd3b453ad51deb3450fb5409e86a2
Date: Thu, 13 Mar 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741839533
