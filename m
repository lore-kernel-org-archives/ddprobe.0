Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5778A632
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790641834; cv=none; b=bHr4jyt/QUQuF7z+Aj5EEZ/7qSrP2mgZ5AVIF5KLUqgY+jpQY6TtAq/+m6/N2Vf9siIB3kbGRQ/RqkxpQk8+oKm3NEC5GyT9WPTDLXgcbng4sfj7hh6k35P+XuUy/L9Vf6BkddVpsSUNw5ZjaI+OtcmVfCEdJlMmTOVRFRCP5MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790641834; c=relaxed/simple;
	bh=0j+EUVySq4rnCN29+uk0adXkwcmQ3BhF2QiWm0mcfNE=;
	h=To:Subject:From:Message-Id:Date; b=pL1TJgomUYVxEpUpzUGeAjvw+03MkoqFcXRPrRMxa4qdyEEWPlglf5gGfaV8VPgZojJWSRgojrYsQqOUfUwtpK6HrrbSqy6ANR3afppJWXKBGFzZYbosKIMKqkwEYNb73sh6OHJBkNilHxzCyOI+/N6bQNnAscidKC+q8hcLQgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg43pc6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg43pc6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59ACC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790641833;
	bh=0j+EUVySq4rnCN29+uk0adXkwcmQ3BhF2QiWm0mcfNE=;
	h=To:Subject:From:Date:From;
	b=bg43pc6QXk5pQS+JUjKPWHL4v2aInp7amVD9lg6Ta573IPkUs1blzY0sBeAj1mU9/
	 ZHbKM0XNqqgtoSdrFz58vPNLCnQixjO+KrLXS/YfDk9yD0QLXcohdz2qwNSbuL8w/y
	 O+ev8R4QpRwuCE6Q8uN13BBGqdK6RelczAPFmw1aegfTZErOusAIXK7Elq5Cz+qyOq
	 5V6n7mtplVsLCgWq+cDHBYlx6lP/EyvpIPaBOlqWrEHbcN//bzk9qFXVaPyofw4r9t
	 jV7TzfWvegPvCjO4CH83aGb5CVHiIyn8OCPbsII3jd0hH8e57TzDePq3i90HaeaEF1
	 GxysVedQwYrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C4FCA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064183372.2388.6397072636843188383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce09e9c560b961e61a46192ff323db099711b057fb2083594ed19245b4b01e14
Date: Tue, 29 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790641833
