Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3371529A2
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763790114; cv=none; b=YB6ZfKfk6RBIvxjfnD5AUD6bDaCXOUy2NKLepS6EKU+3F+jZ4wJG9gVPVHQreoGTlEhTsdIZ9TzZoO6O+6OcFa/akmXYmLhkIHCpOjtGFPA8Y5TB227xXNUWl5LxX0m3wkbGh6m7xguufvUkMmwJ/pRtxoj9RWzC97AngUbyCXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763790114; c=relaxed/simple;
	bh=3G1f37of4GGqTZ/iXYfwwmhJJ/e96X7ip9VgfXQza64=;
	h=To:Subject:From:Message-Id:Date; b=ZR7M+h3KjOr8zkaZpN/xMxoNdsDDRJCFZhjWDMaK3vtEHQkPsl5q72R0CLgwnXtCrEMZ7lIT3qvpwq5UXMsAC4Yv1E02cliQEgExTqHu15ySPgMbv9NPJlMzHjgH+eV0zMQWV0N938cahJ+r1H59JlP7Mt6zWp0okPebvrFTYhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yu3F7z2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yu3F7z2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA04EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763790113;
	bh=3G1f37of4GGqTZ/iXYfwwmhJJ/e96X7ip9VgfXQza64=;
	h=To:Subject:From:Date:From;
	b=Yu3F7z2N/Je30PCWt3rGiVKC/+iVZme15FvxE3fyqUUUnFBeW3RKzBkKyMPX49ugH
	 0w5aqOAeybTcsiUOsWB1BfkT+ezdwI+9/ZTKXnATKz2Ba3OucswndpujBCq2JUUHWc
	 plijvapYaqtm1a9cA7/7PS1/q9zdzvi99JEfi+7lLlJmk8AP35GKY1B7talVSscJhx
	 M6Zdj2T+nJp+i9wNv0CP9uAyzfEb/HzWONv5NbO1TXzp1HLlmpNbxy9uO5j7WMo/Up
	 BjwcWWq2iQfOMyzD58+tmZiKBI6SyXz0ABeF8gvfh4YGqqsK80/OLJ8rmBCjMGX44r
	 ibMbOSQcMDoVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AA4CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379011358.14855.17585694137793986890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc65cad818795ff9ecc6a8fc421fb3c80bd1f0772baea1b6c76277f839a1a0d
Date: Sat, 22 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763790113
