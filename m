Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEFD2F28
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726715754; cv=none; b=cfo/Jpm3FTK1YZpiUBJfDjF5Sqh6NXyGpJ/upq6jbhO9Ag3GlDvJ9IS+XwXBDvxQHjnDuKduP876tUTQGoQWQ+qvQ5owgQwjWCTxlcKYbadxEfptA8Y0YQyZ+lZ7nHDj7sAlWeW2ZHoVveCAejvCrSLtYPT6HtoxH7CsDbAML2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726715754; c=relaxed/simple;
	bh=Rufxt4p2+XyXQnqNJRI5l0JSeiL3+6RaMtnKBv17iXo=;
	h=To:Subject:From:Message-Id:Date; b=SUM527sg5DwPUbeDJNP9mG52NbIfcC3EsirQCRYd4Cx+Kdf2iR7DxAYSVDiY0/bI8c+9RRHLjLhOzPXZCZcuWPnrNnXwP00V1o4LLsRSDbRQ4VFgNZolKvnF3zDuc/dz7NMjjT82cx8ovttx001q8P4VDnpS0/35dES6dBLNcms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1OpzJmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1OpzJmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF0C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726715753;
	bh=Rufxt4p2+XyXQnqNJRI5l0JSeiL3+6RaMtnKBv17iXo=;
	h=To:Subject:From:Date:From;
	b=p1OpzJmVJqRbhsbS5IYucQrYCIQ9++8yiL8yKOQ9/Mgi+XAPuryfUW0OIrwIejAWy
	 9Iov+thVd6Mlo5jGSAu+lKV44XE8jBSATfeUUUQeVVoz60xSN8B/4+jmL3sAAyNCUS
	 qYSYX4Dee2GEKK4saUJu6aABo/u2//KXnhVWTj/4TTWdRYh3XNk8/ozxTwgTrwmhi4
	 iTLPwx+HdtRx3DbKH9fOwyc6mR+Lav9HlGgWFXKUrYv3FwdRwD9eDCYK0wgJTm+7ug
	 YXVn3Tu26w9pXEe9D6pwucK9z41QF5ipqdeKDr2bmcRcoHJ2/jgNkWZ+dVdqyaE3hU
	 IDqaQX+cHROFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B8CDD552
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172671575359.26785.6812760508817046700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e800312ca92cf130ce2d7b68550825a3e1287dee55826ead2d4f9ade8b31e6ba
Date: Thu, 19 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726715753
